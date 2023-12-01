unit UPadraoContas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoRodaPe, StdCtrls, Grids, DBGrids, TFlatTabControlUnit,
  TFlatHintUnit, Buttons, jpeg, ExtCtrls, IBQuery, Mask,
  ColorMaskEdit, DB, DBCtrls, DBColorComboBox, DBColorEdit, EditFloat,
  ColorEditFloat, Qrctrls, QuickRpt, Menus, UFrmBusca, Ibdatabase, FR_DSet,
  FR_DBSet, FR_Class, IBEvents, DrLabel, cxControls,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxTextEdit,
  TFlatButtonUnit, XP_Button, ComCtrls, ComObj, ACBrBoleto, ACBrBoletoFCFR,
  ACBrBase, DateUtils;
  Var
   CobreBemXPadrao, BoletoPadrao, EmailSacadoPadrao: Variant;
   //Variaveis Utilizadas para controle de lançamento automático
   XPedido: String;
   XCODPEDIDO: INTEGER;
  	XLancAut: Boolean;
// XCod_Pessoa: Integer;
   XCobranca: String;
   XValorTotal: Real;
   XVALORSERV: Real;
   XVALORPROD: Real;
   XCod_Conta: Integer;
   XCod_ContaServ: Integer;
   XCod_Cota: Integer;
   XHistorico: String;
   XCod_FormPag: Integer;
   XDocumento: String;
   XNumFiscal: String;
   XDATAPED: TDateTime;//Armazenará a date referente ao peddo
   XDATAREF: String;//Data de referencia
   XTipoPR: Char;//A pagar ou Receber P/R
   XGERADOR: String;//Informa de é (O) ordem de Servico ou (P) Pedidos
   XCOD_CONTABAIXA: INTEGER;//VARIAVEL UTILIZADA PARA ARMAZENAR O CÓDIGO DA CONTA PARA BAIXA
   XIMP: INTEGER; // Se igual a 1 deve imprimir as duplicatas se 0 não deve imprimir as duplicatas
   XCOD_CTACORBLT: Integer; //Recebe o codigo da Cta corrente p/ impressao de boletos Bancario
   XCod_Cartao: Integer; //Codigo do cartão de credito escolhido
   XPERCOMIS: Real; //Recebe o Percentual de comissão
   XPREVISAO: Boolean; //Determina se o tipo de lanámento eh de uma conta de previsao, ou normal
   XNUMCARTAO :String; // Armazena o número do cartão
   XtipoGer1,CODCTA1,QTDPARC1, XContCarne:Integer;
   Xcarne: Boolean;
   XPessoa,XCarteira,XNossoNumero,XAgCodCed,XEspecieDoc:String;
   XInstrucoes:TStringList;
   Titulo : TACBrTitulo;

type
  TFPadraoContas = class(TFPadraoRodaPe)
    FSRel: TfrReport;
    FSDSRel: TfrDBDataSet;
    PMREL: TPopupMenu;
    QRDUPLICATA: TQuickRep;
    QRIMPDUPLICATA: TQRBand;
    DBTituloPrim: TQRDBText;
    DBTituloSec: TQRDBText;
    QRShape3: TQRShape;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape5: TQRShape;
    QRSysData1: TQRSysData;
    QRShape6: TQRShape;
    QRLabel15: TQRLabel;
    QRShape7: TQRShape;
    QRLabel16: TQRLabel;
    QRShape8: TQRShape;
    QRLabel17: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBRichText1: TQRDBRichText;
    QRDBText13: TQRDBText;
    QRShape9: TQRShape;
    QRLabel7: TQRLabel;
    QRDBText14: TQRDBText;
    QRRECIBO: TQuickRep;
    QRBand3: TQRBand;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape14: TQRShape;
    QRLabel43: TQRLabel;
    QRShape18: TQRShape;
    QRLabel27: TQRLabel;
    QRLDocumento: TQRLabel;
    QRLValor: TQRLabel;
    QRLRiscoAssina: TQRLabel;
    QRLAssinatura: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel32: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRLIMPORTANCIA: TQRLabel;
    PCADASTRO: TPanel;
    Panel4: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    Label18: TLabel;
    PBanco: TPanel;
    Label17: TLabel;
    DBGCTA: TDBGrid;
    GroupBox9: TGroupBox;
    DBGrid3: TDBGrid;
    Panel7: TPanel;
    btngerar: TBitBtn;
    DBMOEDA: TDBLookupComboBox;
    DBNumDoc: TDBColorEdit;
    FrmCliFor: TFrmBusca;
    FrmConta: TFrmBusca;
    frmFormPag: TFrmBusca;
    Panel1: TPanel;
    BtnGravar: TBitBtn;
    BtnCancelar: TBitBtn;
    PCONSULTA: TPanel;
    TCConsultContas: TFlatTabControl;
    PAgrupados: TPanel;
    GroupBox1: TGroupBox;
    DBGMestre: TDBGrid;
    GroupBox2: TGroupBox;
    DBGSLAVE: TDBGrid;
    EDTotAgrup: TFloatEdit;
    PBaixadas: TPanel;
    GroupBox10: TGroupBox;
    EdLancBaixa: TColorMaskEdit;
    GroupBox11: TGroupBox;
    EdVencBaixa: TColorMaskEdit;
    DBGBAIXADAS: TDBGrid;
    GroupBox6: TGroupBox;
    EdNumpracB: TColorMaskEdit;
    EdTotBaixadas: TFloatEdit;
    Panel9: TPanel;
    BitBtn3: TBitBtn;
    GroupBox8: TGroupBox;
    EdHistFornec: TColorMaskEdit;
    PIndividual: TPanel;
    DBGridCadastroPadrao: TDBGrid;
    GroupBox3: TGroupBox;
    EDLANCAMENTO: TColorMaskEdit;
    GroupBox4: TGroupBox;
    EdVencimento: TColorMaskEdit;
    GroupBox5: TGroupBox;
    EDFornecedor: TColorMaskEdit;
    GroupBox13: TGroupBox;
    EdNumParc: TColorMaskEdit;
    EdTotIndividual: TFloatEdit;
    GroupBox14: TGroupBox;
    EdHistorico: TColorMaskEdit;
    Painel: TPanel;
    BtnNovo: TBitBtn;
    BtnApagar: TBitBtn;
    BtnConsultar: TBitBtn;
    BtnBaixar: TBitBtn;
    BtnRelatorio: TBitBtn;
    BtnFiltrar: TBitBtn;
    PConsultParc: TPanel;
    Label1: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    GroupBox7: TGroupBox;
    Label5: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label12: TLabel;
    LVALOR: TLabel;
    DBColorEdit1: TDBColorEdit;
    DBColorEdit2: TDBColorEdit;
    DBColorEdit4: TDBColorEdit;
    DBColorComboBox1: TDBColorComboBox;
    Panel8: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox15: TGroupBox;
    EdNumBoletoB: TColorMaskEdit;
    GroupBox16: TGroupBox;
    EdNumFiscalB: TColorMaskEdit;
    GroupBox17: TGroupBox;
    EdNumBoleto: TColorMaskEdit;
    GroupBox18: TGroupBox;
    EdNumFiscal: TColorMaskEdit;
    RGJuros: TRadioGroup;
    RGJuros2: TRadioGroup;
    QRRODAPEDUPLICATA: TQRDBRichText;
    DBColorEdit5: TDBColorEdit;
    LRefer: TLabel;
    QRDUPLICATA02: TQuickRep;
    QRBand02: TQRBand;
    QR02COD_INTERNO: TQRDBText;
    QR02NUMDOC: TQRDBText;
    QR02DTVENCIMENTO: TQRDBText;
    QR02VLOR: TQRDBText;
    QR02NOME: TQRDBText;
    QR02TEXTO: TQRDBRichText;
    QR02VALEXT: TQRDBText;
    QR02JUROS: TQRDBText;
    QR0202VALEXT: TQRDBText;
    QR0202TEXTO: TQRDBRichText;
    QR0202DTVENC: TQRDBText;
    QR0202VALOR: TQRDBText;
    QR0202NUMDOC: TQRDBText;
    QR0202JUROS: TQRDBText;
    QR0202COD_INTERNO: TQRDBText;
    QR0202NOME: TQRDBText;
    qrlteste: TQRLabel;
    QRReciboCupom: TQuickRep;
    QRBand4: TQRBand;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape19: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    QRShape20: TQRShape;
    QRLabel40: TQRLabel;
    QRShape21: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText36: TQRDBText;
    QRLabel48: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel49: TQRLabel;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRLabel50: TQRLabel;
    QRDBText41: TQRDBText;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRLabel53: TQRLabel;
    GroupBox12: TGroupBox;                     
    EdFornecBaixa: TColorMaskEdit;
    EdCod_Interno: TColorMaskEdit;
    EdVencBaixa2: TColorMaskEdit;
    edvencimento2: TColorMaskEdit;
    RGTipo: TRadioGroup;
    QRReciboGFinal: TQuickRep;
    QRBRecFin: TQRBand;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRShape32: TQRShape;
    QRLabel72: TQRLabel;
    QRShape33: TQRShape;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRDBText56: TQRDBText;
    QRLabel79: TQRLabel;
    QRDBText57: TQRDBText;
    QRLabel80: TQRLabel;
    QRDBText58: TQRDBText;
    QRDBText60: TQRDBText;
    QRLabel81: TQRLabel;
    QRDBText61: TQRDBText;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLImportanciaF: TQRLabel;
    QRLabel85: TQRLabel;
    QRDBText59: TQRDBText;
    QRRDocumentos: TQRRichText;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    QRFinalSimples: TQuickRep;
    QRBand6: TQRBand;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRLabel84: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRShape38: TQRShape;
    QRLabel88: TQRLabel;
    QRShape39: TQRShape;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRDBText64: TQRDBText;
    QRLabel95: TQRLabel;
    QRDBText65: TQRDBText;
    QRLabel96: TQRLabel;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRLabel97: TQRLabel;
    QRDBText68: TQRDBText;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QrlVlrImportancia: TQRLabel;
    QRVLRSimples: TQRLabel;
    QRDBText69: TQRDBText;
    QRRDocumento: TQRRichText;
    QRLabel101: TQRLabel;
    QRHIST3: TQRDBText;
    QRHIST2: TQRDBText;
    QRDataRec2: TQRLabel;
    QRDataRec1: TQRLabel;
    QRDataRec4: TQRLabel;
    cbFiltroCobrBaixadas: TComboBox;
    GroupBox200: TGroupBox;
    GroupBox210: TGroupBox;
    cbFiltroCobr: TComboBox;
    DBHISTORICO: TEdit;
    DBCobranca: TComboBox;
    DBData: TColorMaskEdit;
    DBValor: TColorEditFloat;
    edfiscalpagar: TEdit;
    lbednumfiscalpa: TLabel;
    LDocumento: TLabel;
    DBDocumento: TDBText;
    QRCarne: TQuickRep;
    QRBandCarne: TQRBand;
    QRShape40: TQRShape;
    QRlbAg: TQRLabel;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRlbAg2: TQRLabel;
    lbLinhaDig: TQRLabel;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRLabellocal: TQRLabel;
    QRShape45: TQRShape;
    QRLbv: TQRLabel;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRLbagced: TQRLabel;
    usobcn: TQRLabel;
    vlordoc: TQRLabel;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    carteira: TQRLabel;
    QRShape50: TQRShape;
    especie: TQRLabel;
    QRShape51: TQRShape;
    qunt: TQRLabel;
    cip: TQRLabel;
    QRdtdoc: TQRLabel;
    QRShape52: TQRShape;
    QRlbndoc: TQRLabel;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRLbespd: TQRLabel;
    QRShape55: TQRShape;
    QRLaceite: TQRLabel;
    QRShape56: TQRShape;
    dtproc: TQRLabel;
    nossonum: TQRLabel;
    QRShape57: TQRShape;
    valor: TQRLabel;
    QRShape58: TQRShape;
    vlrdesc: TQRLabel;
    QRShape59: TQRShape;
    QRLabel108: TQRLabel;
    QRShape60: TQRShape;
    QRLabel109: TQRLabel;
    descaba: TQRLabel;
    QRShape61: TQRShape;
    out: TQRLabel;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    multa: TQRLabel;
    acre: TQRLabel;
    cobra: TQRLabel;
    inst: TQRLabel;
    sacado: TQRLabel;
    saca: TQRLabel;
    QRShape66: TQRShape;
    auten: TQRLabel;
    ficha: TQRLabel;
    perman: TQRLabel;
    descate: TQRLabel;
    parcela: TQRLabel;
    venc: TQRLabel;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRLbced: TQRLabel;
    agced: TQRLabel;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    cedente: TQRLabel;
    valrcod: TQRLabel;
    descabat: TQRLabel;
    aotrasd: TQRLabel;
    moramulta: TQRLabel;
    ace: TQRLabel;
    vlrcob: TQRLabel;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    numd: TQRLabel;
    nosnum: TQRLabel;
    sacad: TQRLabel;
    QRShape79: TQRShape;
    ReciboCarne: TQRLabel;
    verso: TQRLabel;
    QRLbLocalPagtoComp: TQRLabel;
    QRShape80: TQRShape;
    lbCedente: TQRLabel;
    lbDtVenc: TQRLabel;
    lbAgCodCed: TQRLabel;
    lbDtDoc: TQRLabel;
    lbNumDoc: TQRLabel;
    lbEspDoc: TQRLabel;
    lbAceite: TQRLabel;
    lbDtProcesso: TQRLabel;
    lbNossoNum: TQRLabel;
    lbCarteira: TQRLabel;
    lbEspecie: TQRLabel;
    lbQuantidade: TQRLabel;
    lbValor: TQRLabel;
    lbNomeSacado: TQRLabel;
    lbBairroCidCepPlan: TQRLabel;
    lbDtVenc2: TQRLabel;
    lbAgCodCed2: TQRLabel;
    lbCedente2: TQRLabel;
    lbNossoNum2: TQRLabel;
    lbNumDoc2: TQRLabel;
    lbSacador2: TQRLabel;
    lbCPF2: TQRLabel;
    lbValorDoc2: TQRLabel;
    lbValorDoc: TQRLabel;
    lbParcela: TQRLabel;
    ImCodBarra: TQRImage;
    lbEnd: TQRLabel;
    imBanco: TQRDBImage;
    imBanco1: TQRDBImage;
    lbCpf: TQRLabel;
    CbDiaMes: TCheckBox;
    EdDiaMes: TColorEditFloat;
    lbDia: TLabel;
    CdDtReferencia: TCheckBox;
    QRReciboValor: TQuickRep;
    QRBandReciboValor: TQRBand;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRShape26: TQRShape;
    QRLabel57: TQRLabel;
    QRShape27: TQRShape;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRDBText47: TQRDBText;
    QRLabel64: TQRLabel;
    QRDBText48: TQRDBText;
    QRLabel65: TQRLabel;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRLabel66: TQRLabel;
    QRDBText52: TQRDBText;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRDBText53: TQRDBText;
    QRDBText85: TQRDBText;
    QRLabel127: TQRLabel;
    QRDBText90: TQRDBText;
    QRLabel128: TQRLabel;
    PCartoes: TPanel;
    lCartoesDescricao: TLabel;
    DBCartoes: TDBGrid;
    LCartoesSair: TLabel;
    QrlCarneInst01: TQRLabel;
    QrlCarneInst02: TQRLabel;
    QrlCarneInst03: TQRLabel;
    QrlCarneInst04: TQRLabel;
    QrlCarneInst05: TQRLabel;
    MemoAuxiliarInstrucao: TRichEdit;
    ACBrBoleto: TACBrBoleto;
    ACBrBoletoFCFR: TACBrBoletoFCFR;
    GroupBox34: TGroupBox;
    ColorMaskEdit1: TColorMaskEdit;
    GroupBox37: TGroupBox;
    RadioSpcSim: TRadioButton;
    RadioSpcNao: TRadioButton;
    FSReciboCupom: TfrReport;
    FrDBReciboCupom: TfrDBDataSet;
    PFiltrarParcelas: TPanel;
    LbDataInicio: TLabel;
    LbDataFim: TLabel;
    LbPESSOA: TLabel;
    LBCodPessoa: TLabel;
    LBHistorico: TLabel;
    RBDataFiltro: TcxRadioGroup;
    EDDataInicio: TcxTextEdit;
    EDDataFim: TcxTextEdit;
    EDPessoaFiltro: TcxTextEdit;
    EDHistoricoFiltro: TcxTextEdit;
    BtnFecharPainelFiltro: TtfXPButton;
    BtnFiltrarFiltro: TBitBtn;
    BitBtn15: TBitBtn;
    procedure TCConsultContasTabChanged(Sender: TObject);
    procedure EDLANCAMENTOKeyPress(Sender: TObject; var Key: Char);
    procedure EdVencimentoKeyPress(Sender: TObject; var Key: Char);
    procedure EDFornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure EDLANCAMENTOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnNovoClick(Sender: TObject);
    procedure BTNLOADCLIClick(Sender: TObject);
    procedure BTNAPAGACLIClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure btngerarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure RGVisualizarClick(Sender: TObject);
    procedure EDLANCPRINKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBFORMPAGKeyPress(Sender: TObject; var Key: Char);
    procedure DBGMestreKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnBaixarClick(Sender: TObject);
    procedure DBFORMPAGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCOBRANCAKeyPress(Sender: TObject; var Key: Char);
    procedure DBValorExit(Sender: TObject);
    procedure dbplnctaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBFORMPAGExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdNumParcKeyPress(Sender: TObject; var Key: Char);
    procedure EdNumpracBKeyPress(Sender: TObject; var Key: Char);
    procedure EdLancBaixaKeyPress(Sender: TObject; var Key: Char);
    procedure EdVencBaixaKeyPress(Sender: TObject; var Key: Char);
    procedure EdFornecBaixaKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGMestreCellClick(Column: TColumn);
    procedure FrmCliForBTNMINUSClick(Sender: TObject);
    procedure FrmCliForBTNOPENClick(Sender: TObject);
    procedure FrmCliForEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmBusca1BTNMINUSClick(Sender: TObject);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure FrmContaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure frmFormPagBTNMINUSClick(Sender: TObject);
    procedure frmFormPagBTNOPENClick(Sender: TObject);
    procedure frmFormPagEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnApagarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure IBEVENTEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure DBGCTAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdHistFornecKeyPress(Sender: TObject; var Key: Char);
    procedure EdHistoricoKeyPress(Sender: TObject; var Key: Char);
    procedure QRDUPLICATAAfterPrint(Sender: TObject);
    procedure QRDUPLICATAEndPage(Sender: TCustomQuickRep);
    procedure QRDUPLICATANeedData(Sender: TObject; var MoreData: Boolean);
    procedure DBHISTORICOEnter(Sender: TObject);
    procedure ass(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FrmContaBTNMINUSClick(Sender: TObject);
    procedure EdNumBoletoBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNumFiscalBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNumBoletoBKeyPress(Sender: TObject; var Key: Char);
    procedure EdNumFiscalBKeyPress(Sender: TObject; var Key: Char);
    procedure EdNumBoletoKeyPress(Sender: TObject; var Key: Char);
    procedure EdNumFiscalKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdVencBaixa2KeyPress(Sender: TObject; var Key: Char);
    procedure edvencimento2KeyPress(Sender: TObject; var Key: Char);
    procedure QRBandReciboValorBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDUPLICATABeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBRecFinBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DBCOBRANCAExit(Sender: TObject);
    procedure DBColorComboBox1Exit(Sender: TObject);
    procedure RGJurosExit(Sender: TObject);
    procedure EDDataInicioKeyPress(Sender: TObject; var Key: Char);
    procedure BtnFiltrarClick(Sender: TObject);
    procedure EDDataFimKeyPress(Sender: TObject; var Key: Char);
    procedure EDPessoaFiltroExit(Sender: TObject);
    procedure BtnFecharPainelFiltroClick(Sender: TObject);
    procedure BtnFiltrarFiltroClick(Sender: TObject);
    procedure EDDataFimExit(Sender: TObject);
    procedure EDDataInicioExit(Sender: TObject);
    procedure EDHistoricoFiltroExit(Sender: TObject);
    procedure PFiltrarParcelasMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure EDPessoaFiltroKeyPress(Sender: TObject; var Key: Char);
    procedure EDHistoricoFiltroKeyPress(Sender: TObject; var Key: Char);
    procedure BtnFechaClick(Sender: TObject);
    procedure DBDataKeyPress(Sender: TObject; var Key: Char);
    procedure cbFiltroCobrBaixadasKeyPress(Sender: TObject; var Key: Char);
    procedure cbFiltroCobrKeyPress(Sender: TObject; var Key: Char);
    procedure cbFiltroCobrBaixadasClick(Sender: TObject);
    procedure cbFiltroCobrClick(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure frmFormPagEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QRBandCarneBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DBCartoesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QRBandCarneAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    


    //procedure QRRECIBOBeforePrint(Sender: TCustomQuickRep;
      //var PrintReport: Boolean);


  private
    { Private declarations }
  public
    { Public declarations }
    Function RecalcParc: Boolean; //Função utilizada para recalcular o valor das parcelas irmas qdo o valor original de uma delas for alterada
    Procedure SelectParcela(Tipo:Integer);//Seleciona parcelas de acordo com laja caso tipo=0 ou de acordo com view principal tipo=1
	 Procedure FiltraParcelaEdit(TipoCons: String);//Seleciona parcelas de acordo com filtro da edit. se valor em branco passado com o no inicio mostrar todas mas ordenado pelo valor
    Procedure GeraParcela(NUM: String; DTVENC: String; VALORPROD: Real; VALORSERV: Real; COD_PARENT: Integer; COBRANCA: String; TipoJuros: Integer; DTREF: String; NUMORDEM: Smallint);//Utilizado para gerar parcelas de acordo com os parametros passados
    //procedure que seleciona e imprime as duplicatas da cta/ QTDPARC 0=Imprime parcela selecionada; 1=Imprime todas asprcelas da conta
	 Procedure ImpDuplicata(CODCTA:INTEGER; QTDPARC: INTEGER);
	  //procedure que seleciona e imprime recibo referente a parcela
	 Procedure ImpRecibo(CODCTA:INTEGER);
   //procedure que seleciona e imprime o boleto da cta registrado/
	 Procedure ImpBoletoRegistrado(CODCTA:INTEGER; TIPOIMP: Integer; Imprimir: Boolean);
	 //procedure que seleciona e imprime o boleto da cta/
	 Procedure ImpBoleto(CODCTA:INTEGER; TIPOIMP: Integer; Imprimir: Boolean);
	 //procedure que seleciona e imprime recibo de extrato referente a parcela
	 Procedure ImpReciboExt(CODCTA:INTEGER);
	 Procedure ImpDupDec(CODCTA:INTEGER; QTDPARC: INTEGER);
    //procedure que seleciona e imprime recibo de extrato de duas vias referente a parcela
    Procedure ImpReciboExtDuasVias(CODCTA:INTEGER);
    // LOCALIZA E CANCELA A MOVIMENTAÇÃO
    Procedure CancelarMovimentacao;
    //Paulo 18/01/2011: procedure que seleciona e imprime carne para cta/ QTDPARC 0=Imprime parcela selecionada; 1=Imprime todas asprcelas da conta
    Procedure ImpCarne(CODCTA:INTEGER; QTDPARC: INTEGER; TipoGer: integer);
    Procedure ImpCarneRegistrado(CODCTA:INTEGER; QTDPARC: INTEGER; TipoGer: integer);
    // localixa dados da conta a pagar e verifica principalmente se o pagamento que gerou a conta foi "cartão"
    Function DadosParcelaCP: boolean;
    // desabilita os campos para não serem alterados, desde que o usuario nao seja MESTRE
    Function DesabilitaCampos(Desabilitar: boolean):integer;
    // apaga cheque apos o usuario apagar a parcela que tem a pagar
    Function ApagaCheque(XTipo, Cod_Parcela: string):boolean;
    // apaga movimento em cartao apos usuario deletar parcela a pagar
    Function ApagaCartao(XTipo, Cod_Parcela: string):boolean;
    //Paulo 16/02/2012: Verifica se a data é válida
    function VerificaParcelaFixa(XDia, XMes, XAno: String): String;
    Procedure ImpBoletoCobreBem(CODCTA:INTEGER; TIPOIMP: Integer; IMPRIMIR, remessa: Boolean);
    Procedure ImpCarneCobreBem(CODCTA:INTEGER; QTDPARC: INTEGER; TipoGer, tipoimp: integer; imprimir, remessa:boolean);
    Procedure EnviaBoletoPorEmail(xEmailPagador: String);
  end;
var
  FPadraoContas: TFPadraoContas;
  XTabela, XTabRef, XView, XViewRef: TIBQuery; // Tabela Principa e referência Conta e Parcela, Views
  XTransaction: TIBTransaction; //Nome do Transaction padrão para se trabalhar no Cadastro Padrão
  XPK, XSQLTABELA: String; // Recebe PK da tabela
  XSQLFILTROSOMA: String;//Variavel temporaria para capturar a soma do filtro
  XCODCTA: INTEGER;//Código da conta p/ FKs
  XTAB: Boolean; //controla de tabela/view
  XCOD_CONTABANCO: Integer;//Código Cta corrente em caso de parcelas com chequecheques
  XGeraParcYear, XGeraParcMonth, XParcDay:word;
  XSqlFiltro: String;//Aramazena a texto da sql para filtro
  xLayoutNovo: String;
implementation

uses UDMFinanc, UMenu, UDMPessoa, UFORNECEDOR, Alxor32, AlxMessage,
  UCliente, UFormPag, UCadMoeda,UDMMacs, UConsPlncta,
  UDMEstoque, UDMConta, UDMCaixa, UBaixaContaPagar, UBaixaContaReceber,
  UMovBanco, UDmBanco, UCtaReceber, UDMSaida, Math, Alxorprn, Extenso,
  UDMGEOGRAFIA, ULanCHSaida, UOrdem, UPadrao, UDmServ,
  MaskUtils, Variants, UMDO, StrUtils;

{$R *.DFM}
const
	scpExecutar = $00000000;
	feeSMTPBoletoHTML = $00000001;

//procedure que seleciona e imprime recibo de extrato de duas vias referente a parcela
Procedure TFPADRAOCONTAS.ImpReciboExtDuasVias(CODCTA:INTEGER);
Begin
   //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	//PREPARA SQL
   If XTipoPR='R'
   Then Begin
	   DMFinanc.TRel.Close;
	   DMFinanc.TRel.SQL.Clear;
	   DMFinanc.TRel.SQL.Add('SELECT distinct(parcelacr.cod_parcelacr), parcelacr.dtvenc AS VENCIMENTO, parcelacr.numparc, parcelacr.valExt, parcelacr.valor, parcelacr.multa, parcelacr.juros, parcelacr.desconto, ');
      If FMenu.TIPOREL = 'VALORDEVIDO' THEN
           DMFINANC.TRel.SQL.Add('parcelacr.valor AS VALORPG, ')
      ELSE
           DMFINANC.TRel.SQL.Add('parcelacr.valorpg, ');
	   DMFinanc.TRel.SQL.Add('pessoa.bairro, pessoa.cep, Pessoa.Telrel, pessoa.cpfcnpj, pessoa.endereco, pessoa.endnumero, pessoa.nome, ');
	   DMFinanc.TRel.SQL.Add('CtaReceber.NumDoc, CtaReceber.DTLanc, cidade.nome AS CIDADE, estado.uf_estado ');
	   DMFinanc.TRel.SQL.Add('FROM parcelacr join ctareceber ON parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
	   DMFinanc.TRel.SQL.Add('JOIN cliente on cliente.cod_cliente = ctareceber.cod_cliente ');
	   DMFinanc.TRel.SQL.Add('join pessoa ON pessoa.cod_pessoa = cliente.cod_pessoa ');
	   DMFinanc.TRel.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
	   DMFinanc.TRel.SQL.Add('left join estado ON estado.cod_estado = cidade.cod_estado ');
	   DMFinanc.TRel.SQL.Add('Where parcelacr.COD_PARCELACR=:CODCTARECEBER ');
	   DMFinanc.TRel.ParamByName('CODCTARECEBER').AsInteger:=CODCTA;
	   DMFinanc.TRel.Open;

      DMMACS.TLoja.Close;
      DMMACS.TLoja.SQL.Clear;
      DMMACS.TLoja.SQL.Add('select * from loja');
      DMMACS.TLoja.Open;

      FMenu.Extenso.Moeda:='';
      FMenu.Extenso.PluralMoeda:='reais';
      FMenu.Extenso.Moeda := 'real';
      FMenu.Extenso.Fracao := 'centavo';
      FMenu.Extenso.PluralFracao := 'centavos';
      FMenu.Extenso.Numero :=FormatFloat('0.00', DMFINANC.TRel.FieldByName('valorpg').AsFloat);

      DMMACS.TLoja.Edit;
      DMMACS.TLoja.FieldByName('tmp1').AsString := FMenu.Extenso.Extenso;
      DMMACS.TLoja.Post;
      DMMACS.Transaction.CommitRetaining;

      PadraoImp(DMMACS.TLoja.FieldByName('IMPTHERMAL').AsString);
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfReciboExtrato2vias.frf');
      FSRel.ShowReport;
      RetPadraoImp;        
   End;
End;

//Função utilizada para recalcular o valor das parcelas irmas qdo o valor original de uma delas for alterada
Function TFPADRAOCONTAS.RecalcParc: Boolean;
Var
	XCod_ParcAtual, XFlag, XnumParc: Integer;
   XVlr: String;
Begin
   DBGrid3.DataSource.DataSet.DisableControls;
   XVlr:='0';
   XFlag:=0;
   XNumParc:=0;
   If XTipoPR='P' Then
   	XCod_ParcAtual:=XTabRef.FieldByName('COD_PARCELACP').AsInteger
   Else
   	XCod_ParcAtual:=XTabRef.FieldByName('COD_PARCELACR').AsInteger;

   XTabRef.First;
   While not XTabRef.Eof do
   Begin
   	If XFlag=0 Then
           XVlr:= FloatToStr(StrToFloat(XVlr)+DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency)
       Else
           XnumParc:=XnumParc+1;

       If XTipoPR='P'
       Then Begin
       	If XCod_ParcAtual=XTabRef.FieldByName('COD_PARCELACP').AsCurrency Then
           	XFlag:=1;
       End
       Else Begin
       	If XCod_ParcAtual=XTabRef.FieldByName('COD_PARCELACR').AsCurrency Then
           	XFlag:=1;
       End;
       XTabRef.Next;
   End;
   If XnumParc=0 Then
   	XVlr:=(FloatToStr((DBValor.valueNumeric-StrToFloat(XVlr))))
   Else
   	XVlr:=(FloatToStr((DBValor.valueNumeric-StrToFloat(XVlr))/XnumParc));

   XFlag:=0;
   XTabRef.First;
   While not XTabRef.Eof do
   Begin
       If XFlag=1
       Then Begin
           XTabRef.Edit;
           XTabRef.FieldByName('VALOR').AsCurrency:=StrToFloat(XVLR);
           XTabRef.Post;
       End;
       If XTipoPR='P'
       Then Begin
       	If XCod_ParcAtual=XTabRef.FieldByName('COD_PARCELACP').AsCurrency Then
           	XFlag:=1;
       End
       Else Begin
       	If XCod_ParcAtual=XTabRef.FieldByName('COD_PARCELACR').AsCurrency Then
           	XFlag:=1;
       End;
       XTabRef.Next;
   End;
   XTabRef.First;
   While not XTabRef.Eof do
   Begin
  		If XCod_ParcAtual=XTabRef.FieldByName('COD_PARCELACR').AsCurrency
       Then Begin
			DBGrid3.DataSource.DataSet.EnableControls;
       	Exit;
       End;
       XTabRef.Next;
   End;
	DBGrid3.DataSource.DataSet.EnableControls;
End;

//procedure que seleciona e imprime o Boleto da cta
Procedure TFPADRAOCONTAS.ImpBoletoRegistrado(CODCTA:INTEGER; TIPOIMP: Integer; IMPRIMIR: Boolean);
Var
  	YearAtu, MonthAtu, DayAtu:word;
  	XnNum, XNumFisc: String;
  	XVlExtMulta : String;
	XVlExtJuros: String;
	xVlJuros: Double;
	xVlMulta: Double;
	hoje: TDateTime;
   xPrefixoNossoNum, xModalidade, xNumAgenciaBlt, xDigAgenciaBlt: String;
   xCodCedenteBlt, xDigCedenteBlt, xCodCarteiraBlt, xNossoNumBlt, xProxBoleto: String;
   xCpfCnpjExibicao, xNomeExibicao: String;
Begin
   //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   //PREPARA SQL
   DMFinanc.TAlx.Close;
   DMFinanc.TAlx.SQL.Clear;
   DMFinanc.TAlx.SQL.Add(' SELECT DISTINCT(PARCELACR.COD_PARCELACR), PARCELACR.DTVENC, PARCELACR.NUMBOLETO, PARCELACR.NUMPARC, PARCELACR.VALEXT, PARCELACR.VALOR, PARCELACR.TEXTOBLT, ');
   DMFinanc.TAlx.SQL.Add(' PARCELACR.DIAS_PROTESTO, PARCELACR.MULTA, PARCELACR.JUROS, PARCELACR.NOSSONUMBLT, PARCELACR.VALOR_JUROSBOLETO, PARCELACR.VALOR_MULTABOLETO, PESSOA.NOME SACADO_PF, PESSOAJ.RAZAO_SOCIAL SACADO_PJ, ');
   DMFinanc.TAlx.SQL.Add(' PESSOA.BAIRRO, PESSOA.CEP, PESSOA.TELREL, PESSOA.CPFCNPJ, PESSOA.ENDNUMERO, PESSOA.ENDERECO, PARCELACR.TIPOBLT, ');
   DMFinanc.TAlx.SQL.Add(' CTARECEBER.NUMDOC, CTARECEBER.TIPOGERADOR, CTARECEBER.COD_GERADOR, CTARECEBER.DTLANC, CIDADE.NOME AS CIDADE, ESTADO.UF_ESTADO FROM PARCELACR ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CTARECEBER ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CLIENTE ON CLIENTE.COD_CLIENTE = CTARECEBER.COD_CLIENTE ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN PESSOA ON PESSOA.COD_PESSOA = CLIENTE.COD_PESSOA ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN PESSOAJ ON PESSOAJ.COD_PESSOA = PESSOA.COD_PESSOA ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CIDADE ON CIDADE.COD_CIDADE = PESSOA.COD_CIDADE ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN ESTADO ON ESTADO.COD_ESTADO = CIDADE.COD_ESTADO ');
   if TIPOIMP <> 1 then
   begin
   	//Neste caso imprime boletos de forma individual
   	DMFinanc.TAlx.SQL.Add(' WHERE PARCELACR.COD_PARCELACR = :CODIGO ');
	end;

   if TIPOIMP=1 then
   begin
   	//Neste caso imprime boletos para varias parcelas
   	DMFinanc.TAlx.SQL.Add(' WHERE CTARECEBER.COD_CTARECEBER = :CODIGO ');
   end;
   
   DMFINANC.TAlx.ParamByName('CODIGO').AsInteger := CODCTA;
   DMFINANC.TAlx.SQL.Add(' AND (FECH <> ''S'') ');   
   DMFINANC.TAlx.Open;
   DMFINANC.TAlx.First;

   ACBrBoleto.ListadeBoletos.Clear;   

   while not DMFINANC.TAlx.Eof do
   begin
		//FILTRA PEDIDO PARA VERIFICAR SE FOI ADICIONADO NUMERO DE NF
       If DMFINANC.TAlx.FieldByName('TIPOGERADOR').AsString='PEDVENDA' then
       begin
           DMSAIDA.TPedV.Close;
           DMSAIDA.TPedV.SQL.Clear;
           DMSAIDA.TPedV.SQL.Add('SELECT * FROM PEDVENDA WHERE PEDVENDA.COD_PEDVENDA=:CODPDV');
           DMSAIDA.TPedV.ParamByName('CODPDV').AsInteger:=DMFinanc.TAlx.FieldByName('COD_GERADOR').AsInteger;
           DMSAIDA.TPedV.Open;

			If Not DMSAIDA.TPedV.IsEmpty Then
           	XNumFisc:=DMSAIDA.TPedV.FieldByName('NUMFISCAL').AsString
           Else
				XNumFisc:='';
       end;

       //FILTRA CONTA CORRENTE DE ACORDO COM A SELECIONADA
       DMBANCO.TCtaCor.Close;
       DMBANCO.TCtaCor.SQL.Clear;
       DMBANCO.TCtaCor.SQL.Add(' select * from ctacor where ');
       DMBANCO.TCtaCor.SQL.Add(' ctacor.cod_ctacor=:CODCTACOR');
       DMBANCO.TCtaCor.ParamByName('CODCTACOR').AsInteger:=XCOD_CTACORBLT;
       DMBANCO.TCtaCor.Open;

       // Edmar - 27/05/2016 - Verifica se a conta está configurada da nova forma.
       if ((FMenu.XTIPOBOLTO = 'R') OR (DMFinanc.TAlx.FieldByName('TIPOBLT').AsString = 'R'))
           AND (DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT_REG').AsString <> '') then
       begin
       	xPrefixoNossoNum := DMBANCO.TCtaCor.FieldByName('PREFIXO_NOSSONUM_REG').AsString;
       	xModalidade := DMBANCO.TCtaCor.FieldByName('CODMODALIDADE_REG').AsString;
       	xNumAgenciaBlt := DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT_REG').AsString;
           xDigAgenciaBlt := DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT_REG').AsString;
           xCodCedenteBlt := DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT_REG').AsString;
           xDigCedenteBlt := DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT_REG').AsString;
           xCodCarteiraBlt := DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT_REG').AsString;
           xNossoNumBlt := DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT_REG').AsString;
           xProxBoleto := DMBANCO.TCtaCor.FieldByName('PROXBOLETO_REG').AsString;
       end
       else begin // se não estiver usa os dados tradicionais
       	xPrefixoNossoNum := DMBANCO.TCtaCor.FieldByName('PREFIXO_NOSSONUM').AsString;
       	xModalidade := DMBANCO.TCtaCor.FieldByName('CODEMPRESABLT').AsString;
       	xNumAgenciaBlt := DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString;
           xDigAgenciaBlt := DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
           xCodCedenteBlt := DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString;
           xDigCedenteBlt := DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT').AsString;
           xCodCarteiraBlt := DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString;
           xNossoNumBlt := DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString;
           xProxBoleto := DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString; 
       end;

       //Edmar - 27/05/2016 - Inicializa o boleto caso não tenha sido inicializado
       if (xProxBoleto = '') OR (xProxBoleto = '0') then
       	xProxBoleto := '1';

       if DMBANCO.TCtaCor.FieldByName('NOVOLAYOUT').AsString = '1' then
       	ACBrBoleto.Cedente.NovoLayout := '1'
       else
       	ACBrBoleto.Cedente.NovoLayout := '0';

   	//FILTRA AGENCIA DE ACORDO COM CONTA CORRENTE SELECIONADA
       DMCONTA.TAlx.Close;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add(' select * from agencia where agencia.cod_agencia=:CODAGENCIA ');
       DMCONTA.TAlx.ParamByName('CODAGENCIA').AsInteger:=DMBANCO.TCtaCor.FieldByName('COD_AGENCIA').AsInteger;
       DMCONTA.TAlx.Open;

   	//FILTRA BANCO DE ACORDO COM CONTA CORRENTE SELECIONADA
       DMBANCO.TAlx.Close;
       DMBANCO.TAlx.SQL.Clear;
       DMBANCO.TAlx.SQL.Add(' select * from banco where banco.cod_banc=:CODBANCO ');
       DMBANCO.TAlx.ParamByName('CODBANCO').AsInteger:=DMCONTA.TAlx.FieldByName('COD_BANCO').AsInteger;
       DMBANCO.TAlx.Open;
       
       //------------------------------------------------------------------------------------------------------------
       //Teste - Felipe - 06/03/2015
       //ACBrBoleto (Cedente e Banco), Titulo (Sacado)
   	//PASSA VALORES PARA O COMPONENTE DE BOLETO
		Titulo := ACBrBoleto.CriarTituloNaLista;
       ACBrBoleto.ACBrBoletoFC.LayOut := lPadrao;
       if DMCONTA.TAlx.FieldByName('COD_BANCO').AsInteger = 104 then
       begin
          ACBrBoletoFCFR.FastReportFile := 'C:\MZR\Macs\Rel\BoletoFR_caixa.fr3';//caminho do relatorio do boleto
       end else
       begin
          ACBrBoletoFCFR.FastReportFile := 'C:\MZR\Macs\Rel\BoletoFR.fr3';//caminho do relatorio do boleto
       end;


       //ACBrBoleto.Cedente.TipoInscricao := pJuridica;
       if DMBANCO.TCtaCor.FieldByName('CPFCNPJ_BOLETO').AsString <> '' then
           xCpfCnpjExibicao := DMBANCO.TCtaCor.FieldByName('CPFCNPJ_BOLETO').AsString
       else
           xCpfCnpjExibicao := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;

       if DMBANCO.TCtaCor.FieldByName('NOME_EXIBICAO_BOLETO').AsString <> '' then
           xNomeExibicao := DMBANCO.TCtaCor.FieldByName('NOME_EXIBICAO_BOLETO').AsString
       else
           xNomeExibicao := DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString;

       if ValidCPF(xCpfCnpjExibicao) then
           ACBrBoleto.Cedente.TipoInscricao := pFisica
       else
           ACBrBoleto.Cedente.TipoInscricao := pJuridica;
           
       if (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='756')
           AND (xPrefixoNossoNum <> '') then
       begin
           Titulo.Sacado.SacadoAvalista.CNPJCPF := xCpfCnpjExibicao;
           Titulo.Sacado.SacadoAvalista.NomeAvalista := xNomeExibicao;
           {Titulo.Sacado.DocAvalista := xCpfCnpjExibicao;
           Titulo.Sacado.Avalista := xNomeExibicao;}

       	ACBrBoleto.Cedente.Nome := 'VIDE CAMPO SACADOR/AVALISTA ABAIXO';
			ACBrBoleto.Cedente.CNPJCPF := '';
       	{
           Titulo.Sacado.Avalista := DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString;
       	Titulo.Sacado.DocAvalista := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;
           }
       end
       else begin
           Titulo.Sacado.SacadoAvalista.CNPJCPF := xCpfCnpjExibicao;
           Titulo.Sacado.SacadoAvalista.NomeAvalista := xNomeExibicao;
           {Titulo.Sacado.DocAvalista := xCpfCnpjExibicao;
           Titulo.Sacado.Avalista := xNomeExibicao;}
                  
           ACBrBoleto.Cedente.CNPJCPF := xCpfCnpjExibicao;
           ACBrBoleto.Cedente.Nome := xNomeExibicao;
       	{
           ACBrBoleto.Cedente.Nome := DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString;
       	ACBrBoleto.Cedente.CNPJCPF := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;
           }
       end;
       
       ACBrBoleto.Cedente.Logradouro := DMMACS.TEmpresa.FieldByName('ENDERECO').AsString;
       ACBrBoleto.Cedente.Bairro := DMMACS.TEmpresa.FieldByName('BAIRRO').AsString;
       ACBrBoleto.Cedente.Convenio := ConcatZero(xModalidade, 7);
       if DMBANCO.TAlx.FieldByName('NUMBANCO').AsString = '756' then
			ACBrBoleto.Cedente.Modalidade := xModalidade;
		//
		if ACBrBoleto.Cedente.NovoLayout = '1' then
    	begin
      		ACBrBoleto.Cedente.Agencia := xNumAgenciaBlt;
			ACBrBoleto.Cedente.AgenciaDigito := '00';
    	end
    	else
			ACBrBoleto.Cedente.Agencia := xNumAgenciaBlt;//+'-'+DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
      	ACBrBoleto.Cedente.AgenciaDigito := xDigAgenciaBlt;
       //
       ACBrBoleto.Cedente.Conta := DMBANCO.TCtaCor.FieldByName('NUMCTACOR').AsString;
       ACBrBoleto.Cedente.ContaDigito:= DMBANCO.TCtaCor.FieldByName('DIGCTACOR').AsString;
       if ACBrBoleto.Cedente.NovoLayout = '1' then
			ACBrBoleto.Cedente.CodigoCedente := ConcatZero(xCodCedenteBlt+xDigCedenteBlt, 7)
       else
           if DMBANCO.TCtaCor.FieldByName('COBRANCA_BANCOOB').AsString = '1' then
               ACBrBoleto.Cedente.CodigoCedente := xCodCedenteBlt+xDigCedenteBlt
           else
       	    ACBrBoleto.Cedente.CodigoCedente := xCodCedenteBlt+'-'+xDigCedenteBlt;

		if DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 1 then
       	ACBrBoleto.Cedente.Convenio := ConcatZero(xModalidade, 7);           


       //NÚMERO DO BANCO DEFINI TIPO DE COBRANÇA (LAYOUT)
		{case (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger) of
       	001 : ACBrBoleto.Banco.TipoCobranca := cobBancoDoBrasil;
           104 : ACBrBoleto.Banco.TipoCobranca := cobCaixaEconomica;
           237 : ACBrBoleto.Banco.TipoCobranca := cobBradesco;
           341 : ACBrBoleto.Banco.TipoCobranca := cobItau;
           399 : ACBrBoleto.Banco.TipoCobranca := cobHSBC;
           748 : ACBrBoleto.Banco.TipoCobranca := cobSicred;
       	756 : ACBrBoleto.Banco.TipoCobranca := cobBancoDoBrasil;
           else  ShowMessage('Banco não encontrado!');
       end;}

       // DMBANCO.TCtaCor.FieldByName('COBRANCA_BANCOOB').AsString = '1'
       if DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 001 then
           ACBrBoleto.Banco.TipoCobranca := cobBancoDoBrasil
       else if DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 104 then
           ACBrBoleto.Banco.TipoCobranca := cobCaixaEconomica
       else if DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 237 then
           ACBrBoleto.Banco.TipoCobranca := cobBradesco
       else if DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 341 then
           ACBrBoleto.Banco.TipoCobranca := cobItau
       else if DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 399 then
           ACBrBoleto.Banco.TipoCobranca := cobHSBC
       else if DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 748 then
           ACBrBoleto.Banco.TipoCobranca := cobSicred
       else if (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 756)
           and (DMBANCO.TCtaCor.FieldByName('COBRANCA_BANCOOB').AsString = '1') then
           ACBrBoleto.Banco.TipoCobranca := cobBancoob
       else if (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 756) then
           ACBrBoleto.Banco.TipoCobranca := cobBancoDoBrasil
       else
           ShowMessage('Banco não encontrado!');

       ACBrBoleto.Banco.Numero := DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger;

       //TESTE - CAIXA ECONÔMICA... 10.03.2015
       //CARTEIRA É DIFERENTE PARA A CAIXA
       if (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 104)
       	then begin
           	if (xCodCarteiraBlt = '01') then
               	Titulo.Carteira := 'SR' //SEM Registro
               else
               	Titulo.Carteira := 'RG'; //COM Registro
           end
       //A CARTEIRA É IGUAL PARA O RESTANTE
       else
			Titulo.Carteira := xCodCarteiraBlt;
           
       Titulo.EspecieMod := 'R$';
       Titulo.LocalPagamento := 'Pagar preferêncialmente nas agências do Banco';
       Titulo.Vencimento:=DMFinanc.TAlx.FieldByName('DTVENC').AsDateTime;
       Titulo.DataDocumento:=DMFinanc.TAlx.FieldByName('DTLANC').AsDateTime;
       Titulo.EspecieDoc:= 'DM';
       Titulo.Aceite := atNao;
       Titulo.DataProcessamento:=Date();

       if TIPOIMP <> 2 then
       begin//Não for uma copia do boleto
       	Titulo.NumeroDocumento :=XNumFisc+'-'+XnNum+':'+DMFinanc.TAlx.FieldByName('NUMPARC').AsString;
           if (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='1')
           	OR (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='756')
               	AND (xPrefixoNossoNum <> '') then
           	Titulo.NossoNumero := xNossoNumBlt+xPrefixoNossoNum+ConcatZero(xProxBoleto, 7)
			else
		    	Titulo.NossoNumero := xNossoNumBlt+xPrefixoNossoNum+ConcatZero(xProxBoleto, 7);
       end
       else begin
           Titulo.NumeroDocumento := XNumFisc+'-'+DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString+':'+DMFinanc.TAlx.FieldByName('NUMPARC').AsString;
		    Titulo.NossoNumero := DMFINANC.TAlx.FieldByName('NOSSONUMBLT').AsString;
       end;
       
       Titulo.ValorDocumento:=DMFinanc.TAlx.FieldByName('VALOR').AsCurrency;
       //sacado
       if ValidCPF(DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString) = True then
       	Titulo.Sacado.NomeSacado:=TiraCaracter(TiraAcentos(DMFinanc.TAlx.FieldByName('SACADO_PF').AsString), '-')
       else
       	Titulo.Sacado.NomeSacado:=TiraCaracter(TiraAcentos(DMFinanc.TAlx.FieldByName('SACADO_PJ').AsString), '-');       

       if ValidCPF(DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString)=True then
       	Titulo.Sacado.Pessoa := pFisica
		else
       	Titulo.Sacado.Pessoa := pJuridica;
           
       Titulo.Sacado.CNPJCPF:=DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString;
       Titulo.Sacado.Logradouro:=DMFinanc.TAlx.FieldByName('ENDERECO').AsString;
		Titulo.Sacado.Bairro:=DMFinanc.TAlx.FieldByName('Bairro').AsString;
       Titulo.Sacado.Cidade:=DMFinanc.TAlx.FieldByName('CIDADE').AsString;
       Titulo.Sacado.UF:=DMFinanc.TAlx.FieldByName('UF_ESTADO').AsString;
       Titulo.Sacado.CEP:=TiraCaracter(DMFinanc.TAlx.FieldByName('CEP').AsString, '-');
      	Titulo.Sacado.Numero:=DMFinanc.TAlx.FieldByName('endnumero').AsString;

       if (DMFINANC.TAlx.FieldByName('MULTA').AsCurrency > 0) then
           xVlMulta := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency) * (DMFINANC.TAlx.FieldByName('MULTA').AsCurrency / 100))
       else
           xVlMulta := 0;
       
       {if DMMACS.TLoja.FieldByName('MULTA').AsCurrency > 0 then//Edmar - 11/05/2015 - Calcula o valor da multa para o boleto
         if (FMenu.XAPLICAMULTA = 'S') and (FMenu.XVALORMULTA = 0) then
       	   xVlMulta := DMFinanc.TAlx.FieldByName('VALOR').AsCurrency * (DMMACS.TLoja.FieldByName('MULTA').AsCurrency / 100)
         else if (FMenu.XVALORMULTA <> 0) AND (FMenu.XAPLICAMULTA = 'S') then
           xVlMulta := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency) * (FMenu.XVALORMULTA / 100))
         else
           xVlMulta := 0
       else
		  	xVlMulta := 0;}

       if (DMFINANC.TAlx.FieldByName('JUROS').AsCurrency > 0) then
           xVlJuros := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency + xVlMulta) * (DMFINANC.TAlx.FieldByName('JUROS').AsCurrency / 100)) / 30
       else
           xVlJuros := 0;
           
       {if DMMACS.TLoja.FieldByName('JUROS').AsCurrency > 0 then//Calcula o valor diario de juros
           if (FMenu.XAPLICAMULTA = 'S') and (FMenu.XVALORJUROS = 0) then
              xVlJuros := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency + xVlMulta) * (DMMACS.TLoja.FieldByName('JUROS').AsCurrency / 100)) / 30
           else if (FMenu.XVALORJUROS <> 0) and (FMenu.XAPLICAMULTA = 'S') then
              xVlJuros := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency + xVlMulta) * (FMenu.XVALORJUROS / 100)) / 30
           else
              xVlJuros := 0
       else
			  xVlJuros := 0;}              

       //Edmar - 19/05/2015 - Diferente de 2 significa que não é outra via
       if TIPOIMP<>2 then
       begin
       	//nesta caso, coloca o valor calculado e o que está na loja
       	Titulo.ValorMoraJuros := xVlJuros;
//           Titulo.CodigoMulta := cmPercentual;
       	if FMenu.XAPLICAMULTA = 'S' then
//         		Titulo.PercentualMulta := DMFINANC.TAlx.FieldByName('MULTA').AsFloat
        	else
//          		Titulo.PercentualMulta := 0;
       end
       else begin
//           Titulo.CodigoMulta := cmPercentual;
       	//se for outra via, busca o que foi salvo na parcela
       	Titulo.ValorMoraJuros := DMFINANC.TAlx.FieldByName('VALOR_JUROSBOLETO').AsCurrency;
//       	Titulo.PercentualMulta := DMFINANC.TAlx.FieldByName('MULTA').AsFloat; //(DMFINANC.TAlx.FieldByName('VALOR_MULTABOLETO').AsCurrency * 100) / DMFinanc.TAlx.FieldByName('VALOR').AsCurrency;
       end;

       Titulo.ValorAbatimento := 0;
       Titulo.DataMoraJuros := 0;
       Titulo.DataAbatimento := 0;

       Titulo.Mensagem.Text := DMFINANC.TAlx.FieldByName('TEXTOBLT').AsString;

       if (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '-1')
       	AND (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '') then
       begin
       	Titulo.DataProtesto := IncDay(Titulo.Vencimento, DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsInteger);
       	Titulo.TipoDiasProtesto := diCorridos;
       end;
       
       if FMenu.XTIPOBOLTO='R' Then
       	Titulo.Sacado.Complemento:='1'
       else
       	Titulo.Sacado.Complemento:='3';

       if (xProxBoleto <> '0') or (xProxBoleto <> '')then
           XnNum := xProxBoleto;
       if (xProxBoleto = '0') or (xProxBoleto = '')then
           XnNum := '1';
           
       Titulo.LocalPagamento := 'PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO.';
       //Montar Nosso Numero para SICOOB
       if (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='756') then
       begin
       	Titulo.LocalPagamento := 'PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO.';
  			//extratifica data Atual
           DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
           If TIPOIMP <> 2 then // Se naum for uma copia do Boleto
           	Titulo.NossoNumero := xNossoNumBlt+xPrefixoNossoNum+ConcatZero(xProxBoleto, 7)
           else
           	Titulo.NossoNumero := DMFINANC.TAlx.FieldByName('NOSSONUMBLT').AsString;
       End;
       //Montar Nosso Numero para SICREDI
       If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='748')
       Then Begin
           Titulo.LocalPagamento:='ATÉ O VENCIMENTO, PREFERENCIALMENTE NAS AGÊNCIAS SICREDI.';
  			//extratifica data Atual
           DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
           If TIPOIMP<>2
           Then Begin //Se naum for uma copia do Boleto
			    Titulo.NossoNumero := COPY(IntToStr(YearAtu), 3, 2)+'2'+ConcatZero(xProxBoleto, 5);
           End
           Else Begin
			    Titulo.NossoNumero := COPY(IntToStr(YearAtu), 3, 2)+'2'+ConcatZero(DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString, 5);
           End;
       End;

       //Paulo 11/07/2011: mpnta nosso numero para caixa
       If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='104')
       Then Begin
           if xCodCarteiraBlt = 'SR' then
  			    Titulo.NossoNumero:= ConcatZero(XnNum, 10);
           if xCodCarteiraBlt = 'CR' then
               Titulo.NossoNumero:= '9'+ConcatZero(XnNum, 9);
       End;

       //Se for impressão de um novo boleto e naum uma copia
       DMCONTA.TParcCR.Close;
       DMCONTA.TParcCR.SQL.Clear;
       DMCONTA.TParcCR.SQL.Add('SELECT * FROM PARCELACR WHERE PARCELACR.COD_PARCELACR=:CODPAR' );
       DMCONTA.TParcCR.ParamByName('CODPAR').AsInteger:=DMFINANC.TAlx.FieldByName('COD_PARCELACR').AsInteger;
       DMCONTA.TParcCR.Open;
       if not DMCONTA.TParcCR.IsEmpty then
       begin
       	Try
           	if TIPOIMP<>2
               Then Begin
           	    DMCONTA.TParcCR.Edit;
           	    DMCONTA.TParcCR.FieldByName('IMP').AsString:='B';
				    {if xProxBoleto = '' OR xProxBoleto = '0' then
                   begin
                       DMBANCO.TCtaCor.Edit;
                       DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency := 1;
                       DMBANCO.TCtaCor.Post;
                   end;}
           	    DMCONTA.TParcCR.FieldByName('NUMFISC').AsString := XNumFisc;
           	    DMCONTA.TParcCR.FieldByName('COD_CTACOR').AsInteger := XCOD_CTACORBLT;
           	    DMCONTA.TParcCR.FieldByName('NUMBOLETO').AsString := xProxBoleto;
           	    //DMCONTA.TParcCR.FieldByName('NOSSONUMBLT').AsString:= Titulo.NossoNumero;
                   //Edmar - 29/09/2015 - Nova forma de buscar o nosso numero com o digito verificador (sem o hífen)
					DMCONTA.TParcCR.FieldByName('NOSSONUMBLT').AsString := Titulo.NossoNumero;
           	    DMCONTA.TParcCR.FieldByName('VALOR_MULTABOLETO').AsCurrency := xVlMulta;
           	    DMCONTA.TParcCR.FieldByName('VALOR_JUROSBOLETO').AsCurrency := xVlJuros;
           	  	DMCONTA.TParcCR.FieldByName('TIPOBLT').AsString := FMenu.XTIPOBOLTO;
           	    DMCONTA.TParcCR.Post;
           	    DMCONTA.IBT.CommitRetaining;
                   DMBANCO.TCtaCor.Edit;
                   if FMenu.XTIPOBOLTO='R' then
						DMBANCO.TCtaCor.FieldByName('PROXBOLETO_REG').AsCurrency := StrToInt(xProxBoleto) + 1                   
                   else
                   	DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency := StrToInt(xProxBoleto) + 1;
                   DMBANCO.TCtaCor.Post;
                   DMBANCO.IBT.CommitRetaining;
               End;
           Except
               Mensagem('A T E N Ç Ã O ', 'O boleto não foi impresso devido a uma falha ao gravar o tipo de impressão na parcela!', '', 1,1, false, 'a');
           End;
       End;
		DMFINANC.TAlx.Next;
   End;
	ACBrBoleto.Imprimir;
   {
   ACBrBoletoFCFR.NomeArquivo := 'C:\MZR\Macs\Boleto.pdf';
	ACBrBoleto.EnviarEmail('smtp.mzrsistemas.com', '587', 'xmlnfe@mzrsistemas.com', 'M357ZR', 'xmlnfe@mzrsistemas.com', 'dimahcs@gmail.com',
   		'MZR Sistemas - Financeiro', nil, false, true, nil, nil, False, False, DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString, False, True);
   }
End;

//procedure que seleciona e imprime o Boleto da cta
Procedure TFPADRAOCONTAS.ImpBoleto(CODCTA:INTEGER; TIPOIMP: Integer; IMPRIMIR: Boolean);
Var
  	YearAtu, MonthAtu, DayAtu:word;
  	XnNum, XNumFisc: String;
  	XVlExtMulta : String;
 	  XVlExtJuros: String;
 	  xVlJuros: Double;
 	  xVlMulta: Double;
	  hoje: TDateTime;
Begin
   //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   //PREPARA SQL
   DMFinanc.TAlx.Close;
   DMFinanc.TAlx.SQL.Clear;
   DMFinanc.TAlx.SQL.Add(' SELECT DISTINCT(PARCELACR.COD_PARCELACR), PARCELACR.DTVENC, PARCELACR.NUMBOLETO, PARCELACR.NUMPARC, PARCELACR.VALEXT, PARCELACR.VALOR, PARCELACR.TEXTOBLT, ');
   DMFinanc.TAlx.SQL.Add(' PARCELACR.DIAS_PROTESTO, PARCELACR.MULTA, PARCELACR.NOSSONUMBLT, PARCELACR.VALOR_JUROSBOLETO, PARCELACR.VALOR_MULTABOLETO, PESSOA.NOME SACADO_PF, PESSOAJ.RAZAO_SOCIAL SACADO_PJ, ');
   DMFinanc.TAlx.SQL.Add(' PESSOA.BAIRRO, PESSOA.CEP, PESSOA.TELREL, PESSOA.CPFCNPJ, PESSOA.ENDNUMERO, PESSOA.ENDERECO, ');
   DMFinanc.TAlx.SQL.Add(' CTARECEBER.NUMDOC, CTARECEBER.TIPOGERADOR, CTARECEBER.COD_GERADOR, CTARECEBER.DTLANC, CIDADE.NOME AS CIDADE, ESTADO.UF_ESTADO FROM PARCELACR ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CTARECEBER ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CLIENTE ON CLIENTE.COD_CLIENTE = CTARECEBER.COD_CLIENTE ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN PESSOA ON PESSOA.COD_PESSOA = CLIENTE.COD_PESSOA ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN PESSOAJ ON PESSOAJ.COD_PESSOA = PESSOA.COD_PESSOA ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CIDADE ON CIDADE.COD_CIDADE = PESSOA.COD_CIDADE ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN ESTADO ON ESTADO.COD_ESTADO = CIDADE.COD_ESTADO ');
   If TIPOIMP<>1
   Then Begin
   	//Neste caso imprime boletos de forma individual
   	DMFinanc.TAlx.SQL.Add(' WHERE PARCELACR.COD_PARCELACR = :CODIGO ');
//   	DMFinanc.TAlx.ParamByName('CODCTARECEBER').AsInteger:=CODCTA;//XViewRef.FieldByName('COD_PARCELACR').AsInteger;
	End;
   If TIPOIMP=1
   Then Begin
   	//Neste caso imprime boletos para varias parcelas
   	DMFinanc.TAlx.SQL.Add(' WHERE CTARECEBER.COD_CTARECEBER = :CODIGO ');
  // 	DMFinanc.TAlx.ParamByName('CODCTARECEBER').AsInteger:=CODCTA;
   end;
   DMFINANC.TAlx.ParamByName('CODIGO').AsInteger := CODCTA;
   DMFINANC.TAlx.SQL.Add(' AND (FECH <> ''S'') ');   
   DMFINANC.TAlx.Open;
   DMFINANC.TAlx.First;

   ACBrBoleto.ListadeBoletos.Clear;   

   while not DMFINANC.TAlx.Eof do
   begin
		//FILTRA PEDIDO PARA VERIFICAR SE FOI ADICIONADO NUMERO DE NF
       If DMFINANC.TAlx.FieldByName('TIPOGERADOR').AsString='PEDVENDA' then
       begin
           DMSAIDA.TPedV.Close;
           DMSAIDA.TPedV.SQL.Clear;
           DMSAIDA.TPedV.SQL.Add('SELECT * FROM PEDVENDA WHERE PEDVENDA.COD_PEDVENDA=:CODPDV');
           DMSAIDA.TPedV.ParamByName('CODPDV').AsInteger:=DMFinanc.TAlx.FieldByName('COD_GERADOR').AsInteger;
           DMSAIDA.TPedV.Open;

			If Not DMSAIDA.TPedV.IsEmpty Then
           	XNumFisc:=DMSAIDA.TPedV.FieldByName('NUMFISCAL').AsString
           Else
				XNumFisc:='';
       end;

       //FILTRA CONTA CORRENTE DE ACORDO COM A SELECIONADA
       DMBANCO.TCtaCor.Close;
       DMBANCO.TCtaCor.SQL.Clear;
       DMBANCO.TCtaCor.SQL.Add(' select * from ctacor where ');
       DMBANCO.TCtaCor.SQL.Add(' ctacor.cod_ctacor=:CODCTACOR');
       DMBANCO.TCtaCor.ParamByName('CODCTACOR').AsInteger:=XCOD_CTACORBLT;
       DMBANCO.TCtaCor.Open;

		  if DMBANCO.TCtaCor.FieldByName('NOVOLAYOUT').AsString = '1' then
       	ACBrBoleto.Cedente.NovoLayout := '1'
       else
       	ACBrBoleto.Cedente.NovoLayout := '0';

   	//FILTRA AGENCIA DE ACORDO COM CONTA CORRENTE SELECIONADA
       DMCONTA.TAlx.Close;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add(' select * from agencia where agencia.cod_agencia=:CODAGENCIA ');
       DMCONTA.TAlx.ParamByName('CODAGENCIA').AsInteger:=DMBANCO.TCtaCor.FieldByName('COD_AGENCIA').AsInteger;
       DMCONTA.TAlx.Open;

   	//FILTRA BANCO DE ACORDO COM CONTA CORRENTE SELECIONADA
       DMBANCO.TAlx.Close;
       DMBANCO.TAlx.SQL.Clear;
       DMBANCO.TAlx.SQL.Add(' select * from banco where banco.cod_banc=:CODBANCO ');
       DMBANCO.TAlx.ParamByName('CODBANCO').AsInteger:=DMCONTA.TAlx.FieldByName('COD_BANCO').AsInteger;
       DMBANCO.TAlx.Open;
       
       //------------------------------------------------------------------------------------------------------------
       //Teste - Felipe - 06/03/2015
       //ACBrBoleto (Cedente e Banco), Titulo (Sacado)
   	//PASSA VALORES PARA O COMPONENTE DE BOLETO
		Titulo := ACBrBoleto.CriarTituloNaLista;
       ACBrBoleto.ACBrBoletoFC.LayOut := lPadrao;
       if DMCONTA.TAlx.FieldByName('COD_BANCO').AsInteger = 104 then
       begin
          ACBrBoletoFCFR.FastReportFile := 'C:\MZR\Macs\Rel\BoletoFR_caixa.fr3';//caminho do relatorio do boleto
       end else
       begin
          ACBrBoletoFCFR.FastReportFile := 'C:\MZR\Macs\Rel\BoletoFR.fr3';//caminho do relatorio do boleto
       end;
       
       ACBrBoleto.Cedente.TipoInscricao:=pJuridica;

       if (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='1') AND (DMBANCO.TCtaCor.FieldByName('prefixo_nossonum').AsString <> '') then
       begin
           Titulo.Sacado.SacadoAvalista.NomeAvalista := DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString;
           Titulo.Sacado.SacadoAvalista.CNPJCPF := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;
       	{Titulo.Sacado.Avalista := DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString;
       	Titulo.Sacado.DocAvalista := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;}
       	ACBrBoleto.Cedente.Nome := 'VIDE CAMPO SACADOR/AVALISTA ABAIXO';
			ACBrBoleto.Cedente.CNPJCPF := '';                      
       end
       else begin
       	ACBrBoleto.Cedente.Nome:=DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString;
			ACBrBoleto.Cedente.CNPJCPF := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;
       end;
       
       ACBrBoleto.Cedente.Logradouro := DMMACS.TEmpresa.FieldByName('ENDERECO').AsString;
       ACBrBoleto.Cedente.Bairro := DMMACS.TEmpresa.FieldByName('BAIRRO').AsString;
       if DMBANCO.TAlx.FieldByName('NUMBANCO').AsString = '756' then
			ACBrBoleto.Cedente.Modalidade := DMBANCO.TCtaCor.FieldByName('CODEMPRESABLT').AsString;
		//
		ACBrBoleto.Cedente.Agencia := DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString;       
		if ACBrBoleto.Cedente.NovoLayout = '1' then
			ACBrBoleto.Cedente.AgenciaDigito := '00'
       else
			ACBrBoleto.Cedente.Agencia := DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString+DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
       //
       ACBrBoleto.Cedente.Conta:=DMBANCO.TCtaCor.FieldByName('NUMCTACOR').AsString;
       ACBrBoleto.Cedente.ContaDigito:= DMBANCO.TCtaCor.FieldByName('DIGCTACOR').AsString;
       if ACBrBoleto.Cedente.NovoLayout = '1' then
			ACBrBoleto.Cedente.CodigoCedente:=ConcatZero(DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString+DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT').AsString, 7)
       else
       	ACBrBoleto.Cedente.CodigoCedente:=DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString+DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT').AsString;

		if DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 1 then
       	ACBrBoleto.Cedente.Convenio := ConcatZero(DMBANCO.TCtaCor.FieldByName('codempresablt').AsString, 7);           

       //NÚMERO DO BANCO DEFINI TIPO DE COBRANÇA (LAYOUT)
		case (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger) of
       	001 : ACBrBoleto.Banco.TipoCobranca := cobBancoDoBrasil;
           104 : ACBrBoleto.Banco.TipoCobranca := cobCaixaEconomica;
           237 : ACBrBoleto.Banco.TipoCobranca := cobBradesco;
           341 : ACBrBoleto.Banco.TipoCobranca := cobItau;
           399 : ACBrBoleto.Banco.TipoCobranca := cobHSBC;
           748 : ACBrBoleto.Banco.TipoCobranca := cobSicred;
       	756 : ACBrBoleto.Banco.TipoCobranca := cobBancoob;
           else  ShowMessage('Banco não encontrado!');
       end;
       ACBrBoleto.Banco.Numero := DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger;

       //TESTE - CAIXA ECONÔMICA... 10.03.2015
       //CARTEIRA É DIFERENTE PARA A CAIXA
       if (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 104)
       	then begin
           	if (DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString = '01') then
               	Titulo.Carteira := 'SR' //SEM Registro
               else
               	Titulo.Carteira := 'RG'; //COM Registro
           end
       //A CARTEIRA É IGUAL PARA O RESTANTE
       else
			Titulo.Carteira := DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString;

       Titulo.EspecieMod := 'R$';
       Titulo.LocalPagamento := 'Pagar preferêncialmente nas agências do Banco';
       Titulo.Vencimento:=DMFinanc.TAlx.FieldByName('DTVENC').AsDateTime;
       Titulo.DataDocumento:=DMFinanc.TAlx.FieldByName('DTLANC').AsDateTime;
       Titulo.EspecieDoc:= 'DM';
       Titulo.Aceite := atNao;
       Titulo.DataProcessamento:=Date();

       if TIPOIMP <> 2 then
       begin//Não for uma copia do boleto
       	Titulo.NumeroDocumento :=XNumFisc+'-'+XnNum+':'+DMFinanc.TAlx.FieldByName('NUMPARC').AsString;
           if (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='1') AND (DMBANCO.TCtaCor.FieldByName('prefixo_nossonum').AsString <> '') then
           	Titulo.NossoNumero:=DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString+DMBANCO.TCtaCor.FieldByName('prefixo_nossonum').AsString+ConcatZero(DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString, 7)
			else
		    	Titulo.NossoNumero:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString;
       end
       else begin
           Titulo.NumeroDocumento:=XNumFisc+'-'+DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString+':'+DMFinanc.TAlx.FieldByName('NUMPARC').AsString;
		    Titulo.NossoNumero:=DMFINANC.TAlx.FieldByName('NOSSONUMBLT').AsString;
       end;
       
       Titulo.ValorDocumento:=DMFinanc.TAlx.FieldByName('VALOR').AsCurrency;
       //sacado
       if ValidCPF(DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString) = True then
       	Titulo.Sacado.NomeSacado:=TiraCaracter(TiraAcentos(DMFinanc.TAlx.FieldByName('SACADO_PF').AsString), '-')
       else
       	Titulo.Sacado.NomeSacado:=TiraCaracter(TiraAcentos(DMFinanc.TAlx.FieldByName('SACADO_PJ').AsString), '-');       

       if ValidCPF(DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString)=True then
       	Titulo.Sacado.Pessoa := pFisica
		else
       	Titulo.Sacado.Pessoa := pJuridica;
           
       Titulo.Sacado.CNPJCPF:=DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString;
       Titulo.Sacado.Logradouro:=DMFinanc.TAlx.FieldByName('ENDERECO').AsString;
		Titulo.Sacado.Bairro:=DMFinanc.TAlx.FieldByName('Bairro').AsString;
       Titulo.Sacado.Cidade:=DMFinanc.TAlx.FieldByName('CIDADE').AsString;
       Titulo.Sacado.UF:=DMFinanc.TAlx.FieldByName('UF_ESTADO').AsString;
       Titulo.Sacado.CEP:=TiraCaracter(DMFinanc.TAlx.FieldByName('CEP').AsString, '-');
      	Titulo.Sacado.Numero:=DMFinanc.TAlx.FieldByName('endnumero').AsString;

       if DMMACS.TLoja.FieldByName('MULTA').AsCurrency > 0 then//Edmar - 11/05/2015 - Calcula o valor da multa para o boleto
         if (FMenu.XAPLICAMULTA = 'S') and (FMenu.XVALORMULTA = 0) then
       	   xVlMulta := DMFinanc.TAlx.FieldByName('VALOR').AsCurrency * (DMMACS.TLoja.FieldByName('MULTA').AsCurrency / 100)
         else if (FMenu.XVALORMULTA <> 0) AND (FMenu.XAPLICAMULTA = 'S') then
           xVlMulta := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency) * (FMenu.XVALORMULTA / 100))
         else
           xVlMulta := 0
       else
		  	xVlMulta := 0;

       if DMMACS.TLoja.FieldByName('JUROS').AsCurrency > 0 then//Calcula o valor diario de juros
           if (FMenu.XAPLICAMULTA = 'S') and (FMenu.XVALORJUROS = 0) then
              xVlJuros := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency + xVlMulta) * (DMMACS.TLoja.FieldByName('JUROS').AsCurrency / 100)) / 30
           else if (FMenu.XVALORJUROS <> 0) and (FMenu.XAPLICAMULTA = 'S') then
              xVlJuros := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency + xVlMulta) * (FMenu.XVALORJUROS / 100)) / 30
           else
              xVlJuros := 0
       else
			  xVlJuros := 0;

//       Titulo.CodigoMulta := cmPercentual;
       //Edmar - 19/05/2015 - Diferente de 2 significa que não é outra via
       if TIPOIMP<>2 then
       begin
       	//nesta caso, coloca o valor calculado e o que está na loja
       	Titulo.ValorMoraJuros := xVlJuros;
       	if FMenu.XAPLICAMULTA = 'S' then
//         	    Titulo.PercentualMulta := DMFINANC.TAlx.FieldByName('MULTA').AsFloat
           else
//               Titulo.PercentualMulta := xVlMulta;
       end
       else begin
       	//se for outra via, busca o que foi salvo na parcela
       	Titulo.ValorMoraJuros := DMFINANC.TAlx.FieldByName('VALOR_JUROSBOLETO').AsCurrency;
//       	Titulo.PercentualMulta := (DMFINANC.TAlx.FieldByName('VALOR_MULTABOLETO').AsCurrency * 100) / DMFinanc.TAlx.FieldByName('VALOR').AsCurrency;
       end;

       Titulo.ValorAbatimento := 0;
       Titulo.DataMoraJuros := 0;
       Titulo.DataAbatimento := 0;

       Titulo.Mensagem.Text := DMFINANC.TAlx.FieldByName('TEXTOBLT').AsString;

       if (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '-1') AND (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '') then
       begin
       	Titulo.DataProtesto := IncDay(Titulo.Vencimento, DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsInteger);
       	Titulo.TipoDiasProtesto := diCorridos;
       end;
       
       if FMenu.XTIPOBOLTO='R' Then
       	Titulo.Sacado.Complemento:='1'
       else
       	Titulo.Sacado.Complemento:='3';
         
       if (DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString<>'0') or (DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString<>'')then
           XnNum:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString;
       if (DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString='0') or (DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString='')then
           XnNum:='1';
           
       Titulo.LocalPagamento:='PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO.';
       //Montar Nosso Numero para SICOOB
       If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='756')
       Then Begin
           Titulo.LocalPagamento:='ATÉ O VENCIMENTO, PREFERENCIALMENTE NAS AGÊNCIAS SICOOB.';
  			//extratifica data Atual
           DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
           If TIPOIMP<>2
           Then Begin //Se naum for uma copia do Boleto
			    Titulo.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+ConcatZero(DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString, 5);
           End
           Else Begin
			    Titulo.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+ConcatZero(DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString, 5);
           End;
       End;
       //Montar Nosso Numero para SICREDI
       If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='748')
       Then Begin
           Titulo.LocalPagamento:='ATÉ O VENCIMENTO, PREFERENCIALMENTE NAS AGÊNCIAS SICREDI.';
  			//extratifica data Atual
           DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
           If TIPOIMP<>2
           Then Begin //Se naum for uma copia do Boleto
			    Titulo.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+'2'+ConcatZero(DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString, 5);
           End
           Else Begin
			    Titulo.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+'2'+ConcatZero(DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString, 5);
           End;
       End;

       //Paulo 11/07/2011: mpnta nosso numero para caixa
       If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='104')
       Then Begin
           if DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString = 'SR' then
  			    Titulo.NossoNumero:= ConcatZero(XnNum,10);
           if DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString = 'CR' then
               Titulo.NossoNumero:= '9'+ConcatZero(XnNum,9);
       End;

       //Se for impressão de um novo boleto e naum uma copia
       DMCONTA.TParcCR.Close;
       DMCONTA.TParcCR.SQL.Clear;
       DMCONTA.TParcCR.SQL.Add('SELECT * FROM PARCELACR WHERE PARCELACR.COD_PARCELACR=:CODPAR' );
       DMCONTA.TParcCR.ParamByName('CODPAR').AsInteger:=DMFINANC.TAlx.FieldByName('COD_PARCELACR').AsInteger;
       DMCONTA.TParcCR.Open;
       if not DMCONTA.TParcCR.IsEmpty then
       begin
       	Try
               If TIPOIMP<>2
               Then Begin
           	    DMCONTA.TParcCR.Edit;
           	    DMCONTA.TParcCR.FieldByName('IMP').AsString:='B';
				    if DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency = 0 then
                   begin
                       DMBANCO.TCtaCor.Edit;
                       DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency:=1;
                       DMBANCO.TCtaCor.Post;
                   end;
           	    DMCONTA.TParcCR.FieldByName('NUMFISC').AsString:=XNumFisc;
           	    DMCONTA.TParcCR.FieldByName('COD_CTACOR').AsInteger:=XCOD_CTACORBLT;
           	    DMCONTA.TParcCR.FieldByName('NUMBOLETO').AsString:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString;
           	    //DMCONTA.TParcCR.FieldByName('NOSSONUMBLT').AsString:= Titulo.NossoNumero;
                   //Edmar - 29/09/2015 - Nova forma de buscar o nosso numero com o digito verificador (sem o hífen)
					DMCONTA.TParcCR.FieldByName('NOSSONUMBLT').AsString:=Titulo.NossoNumero;
           	    DMCONTA.TParcCR.FieldByName('VALOR_MULTABOLETO').AsCurrency := xVlMulta;
           	    DMCONTA.TParcCR.FieldByName('VALOR_JUROSBOLETO').AsCurrency := xVlJuros;
           	  	DMCONTA.TParcCR.FieldByName('TIPOBLT').AsString:=FMenu.XTIPOBOLTO;
           	    DMCONTA.TParcCR.Post;
           	    DMCONTA.IBT.CommitRetaining;
                   DMBANCO.TCtaCor.Edit;
                   DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency+1;
                   DMBANCO.TCtaCor.Post;
                   DMBANCO.IBT.CommitRetaining;
               End;
           Except
               Mensagem('A T E N Ç Ã O ', 'O boleto não foi impresso devido a uma falha ao gravar o tipo de impressão na parcela!', '', 1,1, false, 'a');
           End;
       End;
		DMFINANC.TAlx.Next;
   End;
	ACBrBoleto.Imprimir;
   {
   ACBrBoletoFCFR.NomeArquivo := 'C:\MZR\Macs\Boleto.pdf';
	ACBrBoleto.EnviarEmail('smtp.mzrsistemas.com', '587', 'xmlnfe@mzrsistemas.com', 'M357ZR', 'xmlnfe@mzrsistemas.com', 'dimahcs@gmail.com',
   		'MZR Sistemas - Financeiro', nil, false, true, nil, nil, False, False, DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString, False, True);
   }
End;

Procedure TFPADRAOCONTAS.ImpDupDec(CODCTA:INTEGER; QTDPARC: INTEGER);
Var
	XValor, XContParc: Real;
   Data: Integer;
   Mes, XNOMECIDADE:String;
   Year, Month, Day:word;

Begin
   //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	//PREPARA SQL
   If XTipoPR='P'
   Then Begin
	   DMFinanc.TAlx.Close;
	   DMFinanc.TAlx.SQL.Clear;
	   DMFinanc.TAlx.SQL.Add('SELECT parcelacp.dtvenc, parcelacp.numparc, parcelacp.valor, ');
	   DMFinanc.TAlx.SQL.Add('pessoa.bairro, Pessoa.TelRel, pessoa.cep, pessoa.cpfcnpj, pessoa.endnumero, pessoa.endereco, pessoa.nome, ');
	   DMFinanc.TAlx.SQL.Add('CtaPagar.NumDoc, CtaPagar.DTLanc, cidade.nome, estado.uf_estado ');
	   DMFinanc.TAlx.SQL.Add('FROM parcelacp join ctapagar ON parcelacp.cod_ctapagar = ctapagar.cod_ctapagar ');
	   DMFinanc.TAlx.SQL.Add('JOIN fornecedor on fornecedor.cod_fornec = ctapagar.cod_fornec ');
	   DMFinanc.TAlx.SQL.Add('join pessoa ON pessoa.cod_pessoa = fornecedor.cod_pessoa ');
	   DMFinanc.TAlx.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
	   DMFinanc.TAlx.SQL.Add('left join estado ON estado.cod_estado = cidade.cod_estado ');
	   If QTDPARC=1
      Then Begin//neste caso deve ser impresso todas as parcelas
		   DMFinanc.TAlx.SQL.Add('Where ctapagar.cod_ctapagar=:CODCTAPAGAR ');
		   DMFinanc.TAlx.ParamByName('CODCTAPAGAR').AsInteger:=xCODCTA;
      End
      Else Begin //neste caso deve ser impresso apenas a parcela referente selecionada na view
		   DMFinanc.TAlx.SQL.Add('Where parcelacp.COD_PARCELACP=:CODCTAPAGAR ');
		   DMFinanc.TAlx.ParamByName('CODCTAPAGAR').AsInteger:=XViewRef.FieldByName('COD_PARCELACR').AsInteger;
      End;

      //verifica se deve-se movimentar parcelas a vista de contas
      If DMMACS.TLoja.FieldByName('MOVPARCAVISTA').AsString='1'
      Then Begin
		   DMFinanc.TAlx.SQL.Add(' And (parcelacp.dtvenc <> :DTVENC)');
		   DMFinanc.TALX.ParamByName('DTVENC').AsDate:=Date();
      End;

	   DMFinanc.TAlx.Open;
   End
   Else Begin
	   DMFinanc.TAlx.Close;
	   DMFinanc.TAlx.SQL.Clear;
	   DMFinanc.TAlx.SQL.Add('SELECT distinct(parcelacr.cod_parcelacr), parcelacr.cod_ctareceber, CLIENTE.COD_INTERNO, parcelacr.dtvenc, parcelacr.dtdebito, parcelacr.numparc, parcelacr.valExt, parcelacr.valor, ');
	   DMFinanc.TAlx.SQL.Add('pessoa.bairro, pessoa.cep, Pessoa.Telrel, pessoa.cpfcnpj, pessoa.endnumero, pessoa.endereco, pessoa.nome, ');
	   DMFinanc.TAlx.SQL.Add('CtaReceber.NumDoc, CtaReceber.DTLanc, cidade.nome, estado.uf_estado ');
	   DMFinanc.TAlx.SQL.Add('FROM parcelacr join ctareceber ON parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
	   DMFinanc.TAlx.SQL.Add('JOIN cliente on cliente.cod_cliente = ctareceber.cod_cliente ');
	   DMFinanc.TAlx.SQL.Add('join pessoa ON pessoa.cod_pessoa = cliente.cod_pessoa ');
	   DMFinanc.TAlx.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
	   DMFinanc.TAlx.SQL.Add('left join estado ON estado.cod_estado = cidade.cod_estado ');
	   DMFinanc.TAlx.SQL.Add('Where ctareceber.cod_ctareceber=:CODCTARECEBER ');
	   DMFinanc.TAlx.ParamByName('CODCTARECEBER').AsInteger:=XCODCTA;
	   DMFinanc.TAlx.SQL.Add(' order by parcelacr.dtvenc ');
	   DMFinanc.TAlx.Open;
      //VERIFICA VALORES DE TODAS AS PARCELAS PARA JOGAR EM RELATÓRIO
      If Not DMFINANC.TAlx.IsEmpty
      Then Begin
      		FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', DMFINANC.TAlx.FieldByName('COD_CTARECEBER').AsString, '');
      		FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
      		DMMACS.TLoja.Edit;
      		DMMACS.TLoja.FieldByName('TMP1').AsString:='';
           DMMACS.TLoja.Post;
           DMFINANC.TAlx.First;
           XContParc:=0;
           XValor:=DMFINANC.TAlx.FieldByName('VALOR').AsCurrency;
      		While not DMFINANC.TAlx.Eof do
      		Begin
               If DMFINANC.TAlx.FieldByName('VALOR').AsCurrency=XValor
               Then Begin
                   XContParc:=XContParc+1;
               End
               Else Begin
                   FMenu.Extenso.Moeda:='';
                   FMenu.Extenso.PluralMoeda:='';
                   FMenu.Extenso.Numero:=FormatFloat('0.00', XContParc);
                   DMMACS.TLoja.Edit;
                   DMMACS.TLoja.FieldByName('TMP1').AsString:= DMMACS.TLoja.FieldByName('TMP1').AsString+' '+FloatToStr(XContParc)+ '('+FMenu.Extenso.Extenso+') parcela(s)';
                   DMMACS.TLoja.Post;
                   FMenu.Extenso.Moeda:='real';
                   FMenu.Extenso.PluralMoeda:='reais';
                   FMenu.Extenso.Numero:=FormatFloat('0.00', XValor);
                   DMMACS.TLoja.Edit;
                   DMMACS.TLoja.FieldByName('TMP1').AsString:= DMMACS.TLoja.FieldByName('TMP1').AsString+' de R$ '+FormatFloat('0.00', XValor)+ '('+FMenu.Extenso.Extenso+'), ' ;
                   DMMACS.TLoja.Post;
                   XContParc:=1;
           		XValor:=DMFINANC.TAlx.FieldByName('VALOR').AsCurrency;
				End;
       		DMFINANC.TAlx.Next;
      		End;
           FMenu.Extenso.Moeda:='';
           FMenu.Extenso.PluralMoeda:='';
           FMenu.Extenso.Numero:=FloatToStr(XContParc);
           DMMACS.TLoja.Edit;
           DMMACS.TLoja.FieldByName('TMP1').AsString:= DMMACS.TLoja.FieldByName('TMP1').AsString+' '+FloatToStr(XContParc)+ '('+FMenu.Extenso.Extenso+') parcela(s)';
			DMMACS.TLoja.Post;
           FMenu.Extenso.Moeda:='real';
           FMenu.Extenso.PluralMoeda:='reais';
           FMenu.Extenso.Numero:=FormatFloat('0.00', XValor);
           DMMACS.TLoja.Edit;
           DMMACS.TLoja.FieldByName('TMP1').AsString:= DMMACS.TLoja.FieldByName('TMP1').AsString+' de R$ '+FormatFloat('0.00', XValor)+ '('+FMenu.Extenso.Extenso+'), ' ;
			DMMACS.TLoja.Post;

     		FiltraTabela(DMMACS.TALX, 'EMPRESA', 'COD_EMPRESA', FMENU.LCODEMPRESA.Caption, '');
     		If FiltraTabela(DMGEOGRAFIA.WCidade,'VWCIDADE', 'COD_CIDADE', DMMACS.TALX.FieldByName('COD_CIDADE').AsString, '') Then
	  			XNOMECIDADE:=' '+DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString+'. '
     		Else
       		XNOMECIDADE:='';

    		Data := DayOfWeek(DMCONTA.TCtaR.FieldByName('dtlanc').AsDateTime);{Volta um número inteiro que representa o dia da semana}
    		DecodeDate(DMCONTA.TCtaR.FieldByName('dtlanc').AsDateTime, Year, Month, Day);
    		Case Month of
      			1:Mes:='Janeiro';
      			2:Mes:='Fevereiro';
      			3:Mes:='Março';
      			4:Mes:='Abril';
      			5:Mes:='Maio';
      			6:Mes:='Junho';
      			7:Mes:='Julho';
      			8:Mes:='Agosto';
      			9:Mes:='Setembro';
      			10:Mes:='Outubro';
      			11:Mes:='Novembro';
      			12:Mes:='Dezembro';
    		End;
    		Case data of
      			1:DMMACS.TLoja.FieldByName('TMP2').AsString:= (XNOMECIDADE+'Domingo, '+ IntToStr(Day)+' de ' + mes+' de '+IntToStr(year)+' ');
      			2:DMMACS.TLoja.FieldByName('TMP2').AsString:= (XNOMECIDADE+'Segunda-feira, '+ IntToStr(Day)+' de ' + mes+' de '+IntToStr(year)+' ');
      			3:DMMACS.TLoja.FieldByName('TMP2').AsString:= (XNOMECIDADE+'Terça-feira, '+ IntToStr(Day)+' de ' + mes+' de '+IntToStr(year)+' ');
      			4:DMMACS.TLoja.FieldByName('TMP2').AsString:= (XNOMECIDADE+'Quarta-feira, '+ IntToStr(Day)+' de ' + mes+' de '+IntToStr(year)+' ');
      			5:DMMACS.TLoja.FieldByName('TMP2').AsString:= (XNOMECIDADE+'Quinta-feira, '+ IntToStr(Day)+' de ' + mes+' de '+IntToStr(year)+' ');
      			6:DMMACS.TLoja.FieldByName('TMP2').AsString:= (XNOMECIDADE+'Sexta-feira, '+ IntToStr(Day)+' de ' + mes+' de '+IntToStr(year)+' ');
      			7:DMMACS.TLoja.FieldByName('TMP2').AsString:= (XNOMECIDADE+'Sábado, '+ IntToStr(Day)+' de ' + mes+' de '+IntToStr(year)+' ');
    		End;
			DMMACS.Transaction.CommitRetaining;
	   		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfDupVend.frf');
           FSRel.ShowReport;
      End;
   End;
End;

//procedure que seleciona e imprime as duplicatas da cta/ QTDPARC 0=Imprime parcela selecionada; 1=Imprime todas asprcelas da conta
Procedure TFPADRAOCONTAS.ImpDuplicata(CODCTA:INTEGER; QTDPARC: INTEGER);
Var
	XCOD_Selecao: Integer;
Begin
   //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	//PREPARA SQL
   If XTipoPR='P'
   Then Begin
	   DMFinanc.TAlx.Close;
	   DMFinanc.TAlx.SQL.Clear;
	   DMFinanc.TAlx.SQL.Add('SELECT parcelacp.dtvenc, parcelacp.numparc, parcelacp.valor, ');
	   DMFinanc.TAlx.SQL.Add('pessoa.bairro, Pessoa.TelRel, pessoa.cep, pessoa.cpfcnpj, pessoa.endnumero, pessoa.endereco, pessoa.nome, ');
	   DMFinanc.TAlx.SQL.Add('CtaPagar.NumDoc, CtaPagar.DTLanc, cidade.nome as cidade, estado.uf_estado ');
	   DMFinanc.TAlx.SQL.Add('FROM parcelacp join ctapagar ON parcelacp.cod_ctapagar = ctapagar.cod_ctapagar ');
	   DMFinanc.TAlx.SQL.Add('JOIN fornecedor on fornecedor.cod_fornec = ctapagar.cod_fornec ');
	   DMFinanc.TAlx.SQL.Add('join pessoa ON pessoa.cod_pessoa = fornecedor.cod_pessoa ');
	   DMFinanc.TAlx.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
	   DMFinanc.TAlx.SQL.Add('left join estado ON estado.cod_estado = cidade.cod_estado ');
	   If QTDPARC=1
      Then Begin//neste caso deve ser impresso todas as parcelas
		   DMFinanc.TAlx.SQL.Add('Where ctapagar.cod_ctapagar=:CODCTAPAGAR ');
		   DMFinanc.TAlx.ParamByName('CODCTAPAGAR').AsInteger:=xCODCTA;
      End
      Else Begin //neste caso deve ser impresso apenas a parcela referente selecionada na view
		   DMFinanc.TAlx.SQL.Add('Where parcelacp.COD_PARCELACP=:CODCTAPAGAR ');
		   DMFinanc.TAlx.ParamByName('CODCTAPAGAR').AsInteger:=XViewRef.FieldByName('COD_PARCELACR').AsInteger;
      End;

      //verifica se deve-se movimentar parcelas a vista de contas
      If DMMACS.TLoja.FieldByName('MOVPARCAVISTA').AsString='1'
      Then Begin
		   DMFinanc.TAlx.SQL.Add(' And (parcelacp.dtvenc <> :DTVENC)');
		   DMFinanc.TALX.ParamByName('DTVENC').AsDate:=Date();
      End;

	   DMFinanc.TAlx.Open;
   End
   //conta a receber
   Else Begin
	   DMFinanc.TAlx.Close;
	   DMFinanc.TAlx.SQL.Clear;
	   DMFinanc.TAlx.SQL.Add('SELECT distinct(parcelacr.cod_parcelacr), CLIENTE.COD_INTERNO, parcelacr.dtvenc, parcelacr.numparc, parcelacr.valExt, parcelacr.valor, ');
	   DMFinanc.TAlx.SQL.Add('pessoa.bairro, pessoa.cep, Pessoa.Telrel, pessoa.cpfcnpj, pessoa.endnumero, pessoa.endereco, parcelacr.historico, ');

      // o campo "VISUALRS" se refere á razão social da empresa, e caso tiver selecionado o que sera exibido no relatorio sera a RAZAO SOCIAL senao o NOME FANTASIA
      If DMMACS.TLoja.FieldByName('VISUALRS').AsString = '1'
      Then Begin
           DMFINANC.TAlxMoeda.Close;
           DMFINANC.TAlxMoeda.SQL.Clear;
           DMFINANC.TAlxMoeda.SQL.Add('select * from pessoa');
           DMFINANC.TAlxMoeda.SQL.Add('left join cliente on pessoa.cod_pessoa = cliente.cod_pessoa');
           DMFINANC.TAlxMoeda.SQL.Add('left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa');
           DMFINANC.TAlxMoeda.SQL.Add('left join ctareceber on cliente.cod_cliente = ctareceber.cod_cliente');
           DMFINANC.TAlxMoeda.SQL.Add('left join parcelacr on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber');
           DMFINANC.TAlxMoeda.SQL.Add('where parcelacr.cod_parcelacr = :codigo');
           DMFINANC.TAlxMoeda.ParamByName('codigo').AsInteger := XViewRef.FieldByName('COD_PARCELACR').AsInteger;
           DMFINANC.TAlxMoeda.Open;

           // verifica se o cliente eh pessoa juridica com nome social, se nao for seleciona o nome fantasia ou nome do cliente
           If DMFINANC.TAlxMoeda.FieldByName('razao_social').AsString = ''
           Then Begin
               DMFINANC.TAlx.SQL.Add('pessoa.nome,')
           End
           Else Begin
               DMFINANC.TAlx.SQL.Add('pessoaj.razao_social as NOME,');
           End;
      End
      Else Begin
           DMFINANC.TAlx.SQL.Add('pessoa.nome,')
      End;

      //DMFinanc.TAlx.SQL.Add('CtaReceber.NumDoc, CtaReceber.DTLanc, cidade.nome, estado.uf_estado ');
      DMFinanc.TAlx.SQL.Add('CtaReceber.NumDoc, CtaReceber.DTLanc, cidade.nome as nome1, estado.uf_estado ');
	   DMFinanc.TAlx.SQL.Add('FROM parcelacr left join ctareceber ON parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
	   DMFinanc.TAlx.SQL.Add('left JOIN cliente on ctareceber.cod_cliente = cliente.cod_cliente');
	   DMFinanc.TAlx.SQL.Add('left join pessoa ON cliente.cod_pessoa = pessoa.cod_pessoa');
      DMFINANC.TAlx.SQL.Add('left join pessoaj on pessoaj.cod_pessoa = pessoa.cod_pessoa');
	   DMFinanc.TAlx.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
	   DMFinanc.TAlx.SQL.Add('left join estado ON cidade.cod_estado = estado.cod_estado');
	   If QTDPARC=1
      Then Begin//neste caso deve ser impresso todas as parcelas
		   DMFinanc.TAlx.SQL.Add('Where ctareceber.cod_ctareceber=:CODCTARECEBER ');
		   DMFinanc.TAlx.ParamByName('CODCTARECEBER').AsInteger:=XCODCTA;
      End;
	   If QTDPARC=0
      Then Begin
		   //neste caso deve ser impresso apenas a parcela referente selecionada na view
		   DMFinanc.TAlx.SQL.Add('Where parcelacr.COD_PARCELACR=:CODCTARECEBER ');
		   DMFinanc.TAlx.ParamByName('CODCTARECEBER').AsInteger:=XViewRef.FieldByName('COD_PARCELACR').AsInteger;
      End;
	   If QTDPARC=2
      Then Begin//neste caso deve ser impresso as parcelas ateh a dt selencionaa
		   DMFinanc.TAlx.SQL.Add('Where (ctareceber.cod_CLIENTE=:CODCTARECEBER) ');
		   DMFinanc.TAlx.SQL.Add('And (parcelacr.DTVENC<=:DTVENC)  AND ((FECH<>'+#39+'S'+#39+') OR (FECH IS NULL)) ');
		   DMFinanc.TAlx.ParamByName('CODCTARECEBER').AsInteger:=XCODCTA;
		   DMFinanc.TAlx.ParamByName('DTVENC').AsDateTime:=XViewRef.FieldByName('DTVENC').AsDateTime;
      End;
	   If QTDPARC=3
      Then Begin//O SISTEMA VAI IMPRIMIR AS DUPLICATAS DO INICIO DA SELEÇÃO PRINCIPAL ATEH A SELECÃO MARCADA
          XCOD_Selecao:=XCODCTA;
          //Limpa todas as parcelas marcadas
          DMCONTA.TAlx.Close;
          DMCONTA.TAlx.SQL.Clear;
          DMCONTA.TAlx.SQL.Add(' update parcelacr set parcelacr.mark=0');
          DMCONTA.TAlx.ExecSQL;
          XViewRef.First;
          While (XViewRef.FieldByName('COD_PARCELACR').AsInteger<=XCOD_Selecao) and (not XViewRef.Eof) DO
          Begin
				DMCONTA.TParcCR.Close;
               DMCONTA.TParcCR.SQL.Clear;
               DMCONTA.TParcCR.SQL.Add(' select * from parcelacr where parcelacr.cod_parcelacr=:CODIGO ');
               DMCONTA.TParcCR.ParamByName('CODIGO').AsString:=XViewRef.FieldByName('COD_PARCELACR').AsString;
               DMCONTA.TParcCR.Open;
               If not DMCONTA.TParcCR.IsEmpty
               Then Begin
                   DMCONTA.TParcCR.Edit;
                   DMCONTA.TParcCR.FieldByName('MARK').AsString:='I';
                   DMCONTA.TParcCR.Post;
               End;
               XViewRef.Next;
          End;
          DMCONTA.IBT.CommitRetaining;
		   DMFinanc.TAlx.SQL.Add('Where (PARCELACR.MARK='+#39+'I'+#39+') ');
      End;

      //verifica se deve-se movimentar parcelas a vista de contas
      If DMMACS.TLoja.FieldByName('MOVPARCAVISTA').AsString='1'
      Then Begin
		   DMFinanc.TAlx.SQL.Add(' And (parcelacr.dtvenc <> :DTVENC)');
		   DMFinanc.TALX.ParamByName('DTVENC').AsDate:=Date();
      End;

	   DMFinanc.TAlx.SQL.Add(' AND ((FECH<>'+#39+'S'+#39+')  OR (FECH IS NULL)) ');
	   DMFinanc.TAlx.SQL.Add(' ORDER BY NOME, DTVENC ');
	   DMFinanc.TAlx.Open;
      If DMMacs.TLoja.FieldByName('IMPDUP').AsString='1'
      Then Begin
      		If DMMacs.TLoja.FieldByName('TIPODUPLICATA').AsString='1' Then
  				QRDUPLICATA.Print;
      		If DMMacs.TLoja.FieldByName('TIPODUPLICATA').AsString='2'
           Then Begin
           	If QTDPARC=1 Then
               	PrnDupPerson(2, QTDPARC, XCODCTA);
           	If QTDPARC=2 Then
               	PrnDupPerson(2, QTDPARC, XCODCTA);
           	If QTDPARC=0 Then
               	PrnDupPerson(2, QTDPARC, XViewRef.FieldByName('cod_parcelacr').AsInteger);
           	If QTDPARC=3 Then
               	PrnDupPerson(2, QTDPARC, XCODCTA);

           End;
      End
      Else Begin
      		If DMMacs.TLoja.FieldByName('TIPODUPLICATA').AsString='1' Then
           	QRDUPLICATA.Preview;
      		If DMMacs.TLoja.FieldByName('TIPODUPLICATA').AsString='2'
           Then Begin
           	If QTDPARC=1 Then
               	PrnDupPerson(2, QTDPARC, XCODCTA);
           	If QTDPARC=0 Then
               	PrnDupPerson(2, QTDPARC, XViewRef.FieldByName('cod_parcelacr').AsInteger);
           	If QTDPARC=2 Then
               	PrnDupPerson(2, QTDPARC, XCODCTA);
           	If QTDPARC=3 Then
               	PrnDupPerson(2, QTDPARC, XCODCTA);
           End;
      End;
   End;
End;

//Paulo 18/01/2011: procedure que seleciona e imprime carne para cta/ QTDPARC 0=Imprime parcela selecionada; 1=Imprime todas asprcelas da conta
Procedure TFPADRAOCONTAS.ImpCarne(CODCTA:INTEGER; QTDPARC: INTEGER; TipoGer: integer);
Var
   YearAtu, MonthAtu, DayAtu:word;
   XNumFisc: String;
	XCOD_Selecao: Integer;
   XTotalParcelas: Integer;
  	XVlExtMulta : String;
 	XVlExtJuros: String;   
 	xVlJuros: Double;
 	xVlMulta: Double;   
Begin
   QTDPARC1:=QTDPARC;
   CODCTA1:=CODCTA;
   XtipoGer1:=TipoGer;
   //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	//PREPARA SQL
   DMFinanc.TAlx.Close;
   DMFinanc.TAlx.SQL.Clear;
   DMFinanc.TAlx.SQL.Add(' SELECT DISTINCT(PARCELACR.COD_PARCELACR), PARCELACR.DTVENC, PARCELACR.MULTA,PARCELACR.TEXTOBLT, PARCELACR.NUMBOLETO, CTARECEBER.DTLANC, PARCELACR.NUMPARC, PARCELACR.VALEXT, PARCELACR.VALOR, parcelacr.DIAS_PROTESTO, ');
   DMFinanc.TAlx.SQL.Add(' PESSOA.BAIRRO, PESSOA.CEP, PESSOA.TELREL, PESSOA.CPFCNPJ, PESSOA.ENDNUMERO, PESSOA.ENDERECO, PESSOA.NOME AS SACADO,CTACOR.COD_CTACOR,AGENCIA.COD_AGENCIA, PARCELACR.VALOR_JUROSBOLETO, ');
   DMFinanc.TAlx.SQL.Add(' BANCO.COD_BANC,BANCO.LOGOBANCO,CTARECEBER.NUMDOC, CTARECEBER.TIPOGERADOR, CTARECEBER.COD_GERADOR, CTARECEBER.DTLANC, CIDADE.NOME AS CIDADE, ESTADO.UF_ESTADO, PARCELACR.VALOR_MULTABOLETO ');
   DMFinanc.TAlx.SQL.Add(' FROM PARCELACR LEFT JOIN CTARECEBER ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CTACOR ON PARCELACR.COD_CTACOR = CTACOR.COD_CTACOR ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CLIENTE ON CTARECEBER.COD_CLIENTE = CLIENTE.COD_CLIENTE ');
   DMFinanc.TAlx.SQL.Add(' JOIN PESSOA ON PESSOA.COD_PESSOA = CLIENTE.COD_PESSOA ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CIDADE ON CIDADE.COD_CIDADE = PESSOA.COD_CIDADE ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN ESTADO ON ESTADO.COD_ESTADO = CIDADE.COD_ESTADO ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN AGENCIA ON AGENCIA.COD_AGENCIA = CTACOR.COD_AGENCIA ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN BANCO ON BANCO.COD_BANC = AGENCIA.COD_BANCO ');
   if QTDPARC = 1 then
   begin
   	//neste caso deve ser impresso todas as parcelas
       DMFinanc.TAlx.SQL.Add(' WHERE (CTARECEBER.COD_CTARECEBER=:CODCTARECEBER) AND (PARCELACR.FECH = ''N'') ');
		DMFinanc.TAlx.ParamByName('CODCTARECEBER').AsInteger := CODCTA;
   end;

   if QTDPARC = 0 then
   begin
       //Neste caso imprime carnê de forma individual
   	DMFinanc.TAlx.SQL.Add(' WHERE PARCELACR.COD_PARCELACR=:CODCTARECEBER ');
       DMFinanc.TAlx.ParamByName('CODCTARECEBER').AsInteger := CODCTA;
   end;
   DMFINANC.TAlx.SQL.Add(' AND (FECH <> ''S'') ORDER BY COD_PARCELACR');
   DMFINANC.TAlx.Open;
   DMFINANC.TAlx.Last;
   XTotalParcelas  := DMFINANC.TAlx.RecNo;
   DMFINANC.TAlx.First;

   ACBrBoleto.ListadeBoletos.Clear;
   while not DMFINANC.TAlx.Eof do
   begin
   	if DMFINANC.TAlx.FieldByName('TIPOGERADOR').AsString='PEDVENDA' then
       begin
           DMSAIDA.TPedV.Close;
           DMSAIDA.TPedV.SQL.Clear;
           DMSAIDA.TPedV.SQL.Add('SELECT * FROM PEDVENDA WHERE PEDVENDA.COD_PEDVENDA=:CODPDV');
           DMSAIDA.TPedV.ParamByName('CODPDV').AsInteger:=DMFinanc.TAlx.FieldByName('COD_GERADOR').AsInteger;
           DMSAIDA.TPedV.Open;

           If Not DMSAIDA.TPedV.IsEmpty Then
               XNumFisc:=DMSAIDA.TPedV.FieldByName('NUMFISCAL').AsString
           Else
               XNumFisc:='';
       end;
       
       //FILTRA CONTA CORRENTE DE ACORDO COM A SELECIONADA
       DMBANCO.TCtaCor.Close;
       DMBANCO.TCtaCor.SQL.Clear;
       DMBANCO.TCtaCor.SQL.Add(' select * from ctacor where ');
       DMBANCO.TCtaCor.SQL.Add(' ctacor.cod_ctacor=:CODCTACOR');
       DMBANCO.TCtaCor.ParamByName('CODCTACOR').AsInteger:=XCOD_CTACORBLT;
       DMBANCO.TCtaCor.Open;

       //FILTRA AGENCIA DE ACORDO COM CONTA CORRENTE SELECIONADA
       DMCONTA.TAlx.Close;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add(' select * from agencia where agencia.cod_agencia=:CODAGENCIA ');
       DMCONTA.TAlx.ParamByName('CODAGENCIA').AsInteger:=DMBANCO.TCtaCor.FieldByName('COD_AGENCIA').AsInteger;
       DMCONTA.TAlx.Open;

       //FILTRA BANCO DE ACORDO COM CONTA CORRENTE SELECIONADA
       DMBANCO.TAlx.Close;
       DMBANCO.TAlx.SQL.Clear;
       DMBANCO.TAlx.SQL.Add(' select * from banco where banco.cod_banc=:CODBANCO ');
       DMBANCO.TAlx.ParamByName('CODBANCO').AsInteger:=DMCONTA.TAlx.FieldByName('COD_BANCO').AsInteger;
       DMBANCO.TAlx.Open;

		if DMBANCO.TCtaCor.FieldByName('NOVOLAYOUT').AsString = '1' then
       	ACBrBoleto.Cedente.NovoLayout := '1'
       else
       	ACBrBoleto.Cedente.NovoLayout := '0';

       //------------------------------------------------------------------------------------------------------------
       //Teste - Felipe - 06/03/2015
       //ACBrBoleto (Cedente e Banco), Titulo (Sacado)
       //PASSA VALORES PARA O COMPONENTE DE BOLETO
       Titulo := ACBrBoleto.CriarTituloNaLista;
       ACBrBoleto.ACBrBoletoFC.LayOut := lCarne;
       ACBrBoletoFCFR.FastReportFile := 'C:\MZR\Macs\Rel\BoletoCarne.fr3';//caminho do relatorio do boleto
       
       ACBrBoleto.Cedente.TipoInscricao:=pJuridica;

       if (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='1') AND (DMBANCO.TCtaCor.FieldByName('prefixo_nossonum').AsString <> '') then
       begin
           Titulo.Sacado.SacadoAvalista.NomeAvalista := DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString;
       	Titulo.Sacado.SacadoAvalista.CNPJCPF := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;
       	{Titulo.Sacado.Avalista := DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString;
       	Titulo.Sacado.DocAvalista := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;}
       	ACBrBoleto.Cedente.Nome := 'VIDE CAMPO SACADOR/AVALISTA ABAIXO';
			ACBrBoleto.Cedente.CNPJCPF := '';                      
       end
       else begin
       	ACBrBoleto.Cedente.Nome:=DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString;
			ACBrBoleto.Cedente.CNPJCPF := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;
       end;       
		
       ACBrBoleto.Cedente.Logradouro := DMMACS.TEmpresa.FieldByName('ENDERECO').AsString;
       ACBrBoleto.Cedente.Bairro := DMMACS.TEmpresa.FieldByName('BAIRRO').AsString;
		ACBrBoleto.Cedente.Modalidade := DMBANCO.TCtaCor.FieldByName('CODEMPRESABLT').AsString;       
		//
		ACBrBoleto.Cedente.Agencia := DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString;       
		if ACBrBoleto.Cedente.NovoLayout = '1' then
			ACBrBoleto.Cedente.AgenciaDigito := '00'
       else
			ACBrBoleto.Cedente.Agencia := DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString+DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
       //
       ACBrBoleto.Cedente.Conta:= DMBANCO.TCtaCor.FieldByName('NUMCTACOR').AsString;
       ACBrBoleto.Cedente.ContaDigito:= DMBANCO.TCtaCor.FieldByName('DIGCTACOR').AsString;
//     ACBrBoleto.Cedente.CodigoCedente:=DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString;
       if ACBrBoleto.Cedente.NovoLayout = '1' then
			ACBrBoleto.Cedente.CodigoCedente:=ConcatZero(DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString+DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT').AsString, 7)
       else
       	ACBrBoleto.Cedente.CodigoCedente:=DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString+DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT').AsString;       

       //NÚMERO DO BANCO DEFINI TIPO DE COBRANÇA (LAYOUT)
       case (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger) of
           001 : ACBrBoleto.Banco.TipoCobranca := cobBancoDoBrasil;
           104 : ACBrBoleto.Banco.TipoCobranca := cobCaixaEconomica;
           237 : ACBrBoleto.Banco.TipoCobranca := cobBradesco;
           341 : ACBrBoleto.Banco.TipoCobranca := cobItau;
           399 : ACBrBoleto.Banco.TipoCobranca := cobHSBC;
           748 : ACBrBoleto.Banco.TipoCobranca := cobSicred;
           756 : ACBrBoleto.Banco.TipoCobranca := cobBancoob;
           else  ShowMessage('Banco não encontrado!');
       end;
       ACBrBoleto.Banco.Numero := DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger;

       //TESTE - CAIXA ECONÔMICA... 10.03.2015
       //CARTEIRA É DIFERENTE PARA A CAIXA
       if (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 104) then
       begin
           if (DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString = '01') then
               Titulo.Carteira := 'SR' //SEM Registro
           else
               Titulo.Carteira := 'RG'; //COM Registro
       end
       else//A CARTEIRA É IGUAL PARA O RESTANTE
           Titulo.Carteira := DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString;

       Titulo.Parcela := DMFINANC.TAlx.RecNo;//XNumeroParcelas;
       Titulo.TotalParcelas := XTotalParcelas;
       Titulo.EspecieMod := 'R$';
       Titulo.LocalPagamento := 'Pagar preferêncialmente nas agências do Banco';
       Titulo.Vencimento:=DMFinanc.TAlx.FieldByName('DTVENC').AsDateTime;
       Titulo.DataDocumento:=DMFinanc.TAlx.FieldByName('DTLANC').AsDateTime;
       Titulo.EspecieDoc:= 'DM';
       Titulo.Aceite := atNao;
       Titulo.DataProcessamento:=Date();
       Titulo.NossoNumero:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString;
       Titulo.ValorDocumento:=DMFinanc.TAlx.FieldByName('VALOR').AsCurrency;
       //sacado
       Titulo.Sacado.NomeSacado:=TiraCaracter(TiraAcentos(DMFinanc.TAlx.FieldByName('SACADO').AsString), '-');

       if ValidCPF(DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString)=True then
           Titulo.Sacado.Pessoa := pFisica
       else
           Titulo.Sacado.Pessoa := pJuridica;

       Titulo.Sacado.CNPJCPF:=DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString;
       Titulo.Sacado.Logradouro:=DMFinanc.TAlx.FieldByName('ENDERECO').AsString;
       Titulo.Sacado.Bairro:=DMFinanc.TAlx.FieldByName('Bairro').AsString;
       Titulo.Sacado.Cidade:=DMFinanc.TAlx.FieldByName('CIDADE').AsString;
       Titulo.Sacado.UF:=DMFinanc.TAlx.FieldByName('UF_ESTADO').AsString;
       Titulo.Sacado.CEP:=TiraCaracter(DMFinanc.TAlx.FieldByName('CEP').AsString, '-');
       Titulo.Sacado.Numero:=DMFinanc.TAlx.FieldByName('endnumero').AsString;
       
       if DMMACS.TLoja.FieldByName('MULTA').AsCurrency > 0 then//Edmar - 11/05/2015 - Calcula o valor da multa para o boleto
         if (FMenu.XAPLICAMULTA = 'S') and (FMenu.XVALORMULTA = 0) then
       	   xVlMulta := DMFinanc.TAlx.FieldByName('VALOR').AsCurrency * (DMMACS.TLoja.FieldByName('MULTA').AsCurrency / 100)
         else if (FMenu.XVALORMULTA <> 0) AND (FMenu.XAPLICAMULTA = 'S') then
           xVlMulta := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency) * (FMenu.XVALORMULTA / 100))
         else
           xVlMulta := 0
       else
		  	xVlMulta := 0;

       if DMMACS.TLoja.FieldByName('JUROS').AsCurrency > 0 then//Calcula o valor diario de juros
           if (FMenu.XAPLICAMULTA = 'S') and (FMenu.XVALORJUROS = 0) then
              xVlJuros := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency + xVlMulta) * (DMMACS.TLoja.FieldByName('JUROS').AsCurrency / 100)) / 30
           else if (FMenu.XVALORJUROS <> 0) and (FMenu.XAPLICAMULTA = 'S') then
              xVlJuros := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency + xVlMulta) * (FMenu.XVALORJUROS / 100)) / 30
           else
              xVlJuros := 0
       else
			  xVlJuros := 0;

//       Titulo.CodigoMulta := cmPercentual;
       //Edmar - 19/05/2015 - Diferente de 2 significa que não é outra via
       if XtipoGer1<>2 then
       begin
       	//nesta caso, coloca o valor calculado e o que está na loja
       	Titulo.ValorMoraJuros := xVlJuros;
       	if FMenu.XAPLICAMULTA = 'S' then
//            	Titulo.PercentualMulta := DMFINANC.TAlx.FieldByName('MULTA').AsFloat
           else
//               Titulo.PercentualMulta := xVlMulta;
       end
       else begin
       	//se for outra via, busca o que foi salvo na parcela
       	Titulo.ValorMoraJuros := DMFINANC.TAlx.FieldByName('VALOR_JUROSBOLETO').AsCurrency;
//       	Titulo.PercentualMulta := (DMFINANC.TAlx.FieldByName('VALOR_MULTABOLETO').AsCurrency * 100) / DMFinanc.TAlx.FieldByName('VALOR').AsCurrency;
       end;

       Titulo.ValorAbatimento := 0;
       Titulo.DataMoraJuros := 0;
       Titulo.DataAbatimento := 0;

       Titulo.Mensagem.Text := DMFinanc.TAlx.FieldByName('TEXTOBLT').AsString;

       if (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '-1') AND (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '') then
       begin
       	Titulo.DataProtesto := IncDay(Titulo.Vencimento, DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsInteger);
       	Titulo.TipoDiasProtesto := diUteis;
       end;
       
       If FMenu.XTIPOBOLTO='R' Then
         Titulo.Sacado.Complemento:='1'
       Else
         Titulo.Sacado.Complemento:='3';

       If XtipoGer1<>2
       Then Begin//Não for uma copia do carne
           Titulo.NumeroDocumento:=XNumFisc+'-'+DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString+':'+DMFinanc.TAlx.FieldByName('NUMPARC').AsString;
           Titulo.NossoNumero:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString;
       End
       Else Begin
           Titulo.NumeroDocumento:=XNumFisc+'-'+DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString+':'+DMFinanc.TAlx.FieldByName('NUMPARC').AsString;
           Titulo.NossoNumero:=DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString;
       End;
       
       //Montar Nosso Numero para BB e cedente de 7 digitos
       If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger=1) And (Length(DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString)=7)
       Then Begin
         Titulo.NossoNumero:=ConcatZero(DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString, 10);
         Titulo.NossoNumero:=DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString+Titulo.NossoNumero;
       End;
       Titulo.LocalPagamento:='PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO.';
       //Montar Nosso Numero para SICOOB
       If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='756')
       Then Begin
           Titulo.LocalPagamento:='ATÉ O VENCIMENTO, PREFERENCIALMENTE NAS AGÊNCIAS SICOOB.';
           //extratifica data Atual
           DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
           If XtipoGer1<>2
           Then Begin //Se naum for uma copia do Boleto
               Titulo.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+ConcatZero(DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString, 5);
           End
           Else Begin
               Titulo.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+ConcatZero(DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString, 5);
           End;
       End;
       //Montar Nosso Numero para SICREDI
       If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='748')
       Then Begin
           Titulo.LocalPagamento:='ATÉ O VENCIMENTO, PREFERENCIALMENTE NAS AGÊNCIAS SICREDI.';
           //extratifica data Atual
           DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
           If XtipoGer1<>2
           Then Begin //Se naum for uma copia do Boleto
               Titulo.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+'2'+ConcatZero(DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString, 5);
           End
           Else Begin
               Titulo.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+'2'+ConcatZero(DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString, 5);
           End;
       End;
       
       //Se for impressão de um novo carnê e naum uma copia
       DMCONTA.TParcCR.Close;
       DMCONTA.TParcCR.SQL.Clear;
       DMCONTA.TParcCR.SQL.Add('SELECT * FROM PARCELACR WHERE PARCELACR.COD_PARCELACR=:CODPAR');
       DMCONTA.TParcCR.ParamByName('CODPAR').AsInteger:=DMFINANC.TAlx.FieldByName('COD_PARCELACR').AsInteger;
       DMCONTA.TParcCR.Open;
                     
       if not DMCONTA.TParcCR.IsEmpty then
       begin
           try
               if (XtipoGer1<>2) then
               begin
                   DMCONTA.TParcCR.Edit;
                   DMCONTA.TParcCR.FieldByName('IMP').AsString:='B';

                   if DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency=0 then
                   begin
                       DMBANCO.TCtaCor.Edit;
                       DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency:=1;
                       DMBANCO.TCtaCor.Post;
                   end;

                   DMCONTA.TParcCR.FieldByName('NUMFISC').AsString:=XNumFisc;
                   DMCONTA.TParcCR.FieldByName('COD_CTACOR').AsInteger:=XCOD_CTACORBLT;
                   DMCONTA.TParcCR.FieldByName('NUMBOLETO').AsString:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString;
                   DMCONTA.TParcCR.FieldByName('NOSSONUMBLT').AsString:=Titulo.NossoNumero;
           	    DMCONTA.TParcCR.FieldByName('VALOR_MULTABOLETO').AsCurrency := xVlMulta;
           	    DMCONTA.TParcCR.FieldByName('VALOR_JUROSBOLETO').AsCurrency := xVlJuros;                   
                   DMCONTA.TParcCR.FieldByName('TIPOBLT').AsString:=FMenu.XTIPOBOLTO;                   
                   DMCONTA.TParcCR.Post;
                   DMCONTA.IBT.CommitRetaining;
                   DMBANCO.TCtaCor.Edit;
                   DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency+1;
                   DMBANCO.TCtaCor.Post;
                   DMBANCO.IBT.CommitRetaining;
               End;
           except
               Mensagem('A T E N Ç Ã O ', 'O carnê não foi impresso devido a uma falha ao gravar o tipo de impressão na parcela!', '', 1,1, false, 'a');
           end;
       end;
       DMFINANC.TAlx.Next;
   end;
	ACBrBoleto.Imprimir;   
End;

//Paulo 18/01/2011: procedure que seleciona e imprime carne para cta/ QTDPARC 0=Imprime parcela selecionada; 1=Imprime todas asprcelas da conta
Procedure TFPADRAOCONTAS.ImpCarneRegistrado(CODCTA:INTEGER; QTDPARC: INTEGER; TipoGer: integer);
Var
   YearAtu, MonthAtu, DayAtu:word;
   XNumFisc: String;
	XCOD_Selecao: Integer;
   XTotalParcelas: Integer;
  	XVlExtMulta : String;
 	XVlExtJuros: String;   
 	xVlJuros: Double;
 	xVlMulta: Double;
   xPrefixoNossoNum, xModalidade, xNumAgenciaBlt, xDigAgenciaBlt: String;
   xCodCedenteBlt, xDigCedenteBlt, xCodCarteiraBlt, xNossoNumBlt, xProxBoleto: String;
Begin
   QTDPARC1:=QTDPARC;
   CODCTA1:=CODCTA;
   XtipoGer1:=TipoGer;
   //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	//PREPARA SQL
   DMFinanc.TAlx.Close;
   DMFinanc.TAlx.SQL.Clear;
   DMFinanc.TAlx.SQL.Add(' SELECT DISTINCT(PARCELACR.COD_PARCELACR), PARCELACR.DTVENC, PARCELACR.MULTA, PARCELACR.TEXTOBLT, ');
   DMFinanc.TAlx.SQL.Add(' PARCELACR.TIPOBLT, PARCELACR.NUMBOLETO, CTARECEBER.DTLANC, PARCELACR.NUMPARC, PARCELACR.VALEXT, ');
   DMFinanc.TAlx.SQL.Add(' PARCELACR.VALOR, parcelacr.DIAS_PROTESTO, PESSOA.BAIRRO, PESSOA.CEP, PESSOA.TELREL, PARCELACR.MULTA, ');
   DMFinanc.TAlx.SQL.Add(' PARCELACR.JUROS, PESSOA.CPFCNPJ, PESSOA.ENDNUMERO, PESSOA.ENDERECO, PESSOA.NOME AS SACADO,CTACOR.COD_CTACOR, ');
   DMFinanc.TAlx.SQL.Add(' AGENCIA.COD_AGENCIA, PARCELACR.VALOR_JUROSBOLETO, BANCO.COD_BANC, BANCO.LOGOBANCO, CTARECEBER.NUMDOC, ');
   DMFinanc.TAlx.SQL.Add(' PARCELACR.NOSSONUMBLT,CTARECEBER.TIPOGERADOR, CTARECEBER.COD_GERADOR, CTARECEBER.DTLANC, CIDADE.NOME AS CIDADE, ');
   DMFinanc.TAlx.SQL.Add(' ESTADO.UF_ESTADO, PARCELACR.VALOR_MULTABOLETO ');
   DMFinanc.TAlx.SQL.Add(' FROM PARCELACR ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CTARECEBER ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CTACOR ON PARCELACR.COD_CTACOR = CTACOR.COD_CTACOR ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CLIENTE ON CTARECEBER.COD_CLIENTE = CLIENTE.COD_CLIENTE ');
   DMFinanc.TAlx.SQL.Add(' JOIN PESSOA ON PESSOA.COD_PESSOA = CLIENTE.COD_PESSOA ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CIDADE ON CIDADE.COD_CIDADE = PESSOA.COD_CIDADE ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN ESTADO ON ESTADO.COD_ESTADO = CIDADE.COD_ESTADO ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN AGENCIA ON AGENCIA.COD_AGENCIA = CTACOR.COD_AGENCIA ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN BANCO ON BANCO.COD_BANC = AGENCIA.COD_BANCO ');
   if QTDPARC = 1 then
   begin
   	//neste caso deve ser impresso todas as parcelas
       DMFinanc.TAlx.SQL.Add(' WHERE (CTARECEBER.COD_CTARECEBER=:CODCTARECEBER) AND (PARCELACR.FECH = ''N'') ');
		DMFinanc.TAlx.ParamByName('CODCTARECEBER').AsInteger := CODCTA;
   end;

   if QTDPARC = 0 then
   begin
       //Neste caso imprime carnê de forma individual
   	DMFinanc.TAlx.SQL.Add(' WHERE PARCELACR.COD_PARCELACR=:CODCTARECEBER ');
       DMFinanc.TAlx.ParamByName('CODCTARECEBER').AsInteger := CODCTA;
   end;
   DMFINANC.TAlx.SQL.Add(' AND (FECH <> ''S'') ORDER BY COD_PARCELACR');
   DMFINANC.TAlx.Open;
   DMFINANC.TAlx.Last;
   XTotalParcelas  := DMFINANC.TAlx.RecNo;
   DMFINANC.TAlx.First;

   ACBrBoleto.ListadeBoletos.Clear;
   while not DMFINANC.TAlx.Eof do
   begin
   	if DMFINANC.TAlx.FieldByName('TIPOGERADOR').AsString='PEDVENDA' then
       begin
           DMSAIDA.TPedV.Close;
           DMSAIDA.TPedV.SQL.Clear;
           DMSAIDA.TPedV.SQL.Add('SELECT * FROM PEDVENDA WHERE PEDVENDA.COD_PEDVENDA=:CODPDV');
           DMSAIDA.TPedV.ParamByName('CODPDV').AsInteger:=DMFinanc.TAlx.FieldByName('COD_GERADOR').AsInteger;
           DMSAIDA.TPedV.Open;

           If Not DMSAIDA.TPedV.IsEmpty Then
               XNumFisc:=DMSAIDA.TPedV.FieldByName('NUMFISCAL').AsString
           Else
               XNumFisc:='';
       end;
       
       //FILTRA CONTA CORRENTE DE ACORDO COM A SELECIONADA
       DMBANCO.TCtaCor.Close;
       DMBANCO.TCtaCor.SQL.Clear;
       DMBANCO.TCtaCor.SQL.Add(' select * from ctacor where ');
       DMBANCO.TCtaCor.SQL.Add(' ctacor.cod_ctacor=:CODCTACOR');
       DMBANCO.TCtaCor.ParamByName('CODCTACOR').AsInteger:=XCOD_CTACORBLT;
       DMBANCO.TCtaCor.Open;

       // Edmar - 27/05/2016 - Verifica se a conta está configurada da nova forma.
       if ((FMenu.XTIPOBOLTO = 'R') OR (DMFinanc.TAlx.FieldByName('TIPOBLT').AsString = 'R'))
           AND (DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT_REG').AsString <> '') then
       begin
       	xPrefixoNossoNum := DMBANCO.TCtaCor.FieldByName('PREFIXO_NOSSONUM_REG').AsString;
       	xModalidade := DMBANCO.TCtaCor.FieldByName('CODMODALIDADE_REG').AsString;
       	xNumAgenciaBlt := DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT_REG').AsString;
           xDigAgenciaBlt := DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT_REG').AsString;
           xCodCedenteBlt := DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT_REG').AsString;
           xDigCedenteBlt := DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT_REG').AsString;
           xCodCarteiraBlt := DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT_REG').AsString;
           xNossoNumBlt := DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT_REG').AsString;
           xProxBoleto := DMBANCO.TCtaCor.FieldByName('PROXBOLETO_REG').AsString;
       end
       else begin // se não estiver usa os dados tradicionais
       	xPrefixoNossoNum := DMBANCO.TCtaCor.FieldByName('PREFIXO_NOSSONUM').AsString;
       	xModalidade := DMBANCO.TCtaCor.FieldByName('CODEMPRESABLT').AsString;
       	xNumAgenciaBlt := DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString;
           xDigAgenciaBlt := DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
           xCodCedenteBlt := DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString;
           xDigCedenteBlt := DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT').AsString;
           xCodCarteiraBlt := DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString;
           xNossoNumBlt := DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString;
           xProxBoleto := DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString; 
       end;

       if (xProxBoleto = '') OR (xProxBoleto = '0') then
           xProxBoleto := '1';
           
       //FILTRA AGENCIA DE ACORDO COM CONTA CORRENTE SELECIONADA
       DMCONTA.TAlx.Close;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add(' select * from agencia where agencia.cod_agencia=:CODAGENCIA ');
       DMCONTA.TAlx.ParamByName('CODAGENCIA').AsInteger:=DMBANCO.TCtaCor.FieldByName('COD_AGENCIA').AsInteger;
       DMCONTA.TAlx.Open;

       //FILTRA BANCO DE ACORDO COM CONTA CORRENTE SELECIONADA
       DMBANCO.TAlx.Close;
       DMBANCO.TAlx.SQL.Clear;
       DMBANCO.TAlx.SQL.Add(' select * from banco where banco.cod_banc=:CODBANCO ');
       DMBANCO.TAlx.ParamByName('CODBANCO').AsInteger:=DMCONTA.TAlx.FieldByName('COD_BANCO').AsInteger;
       DMBANCO.TAlx.Open;

		if DMBANCO.TCtaCor.FieldByName('NOVOLAYOUT').AsString = '1' then
       	ACBrBoleto.Cedente.NovoLayout := '1'
       else
       	ACBrBoleto.Cedente.NovoLayout := '0';

       //------------------------------------------------------------------------------------------------------------
       //Teste - Felipe - 06/03/2015
       //ACBrBoleto (Cedente e Banco), Titulo (Sacado)
       //PASSA VALORES PARA O COMPONENTE DE BOLETO
       Titulo := ACBrBoleto.CriarTituloNaLista;
       ACBrBoleto.ACBrBoletoFC.LayOut := lCarne;
       ACBrBoletoFCFR.FastReportFile := 'C:\MZR\Macs\Rel\BoletoCarne.fr3';//caminho do relatorio do boleto
       
       ACBrBoleto.Cedente.TipoInscricao:=pJuridica;
                 
       if (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='756') AND (xPrefixoNossoNum <> '') then
       begin
           Titulo.Sacado.SacadoAvalista.NomeAvalista := DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString;
       	Titulo.Sacado.SacadoAvalista.CNPJCPF := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;
       	{Titulo.Sacado.Avalista := DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString;
       	Titulo.Sacado.DocAvalista := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;}
       	ACBrBoleto.Cedente.Nome := 'VIDE CAMPO SACADOR/AVALISTA ABAIXO';
			ACBrBoleto.Cedente.CNPJCPF := '';
       end
       else begin
       	ACBrBoleto.Cedente.Nome := DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString;
       	ACBrBoleto.Cedente.CNPJCPF := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;
       end;
		
       ACBrBoleto.Cedente.Logradouro := DMMACS.TEmpresa.FieldByName('ENDERECO').AsString;
       ACBrBoleto.Cedente.Bairro := DMMACS.TEmpresa.FieldByName('BAIRRO').AsString;
       ACBrBoleto.Cedente.Convenio := ConcatZero(xModalidade, 7);
       if DMBANCO.TAlx.FieldByName('NUMBANCO').AsString = '756' then
           ACBrBoleto.Cedente.Modalidade := xModalidade;
		//
		if ACBrBoleto.Cedente.NovoLayout = '1' then
    	begin
      		ACBrBoleto.Cedente.Agencia := xNumAgenciaBlt;
			ACBrBoleto.Cedente.AgenciaDigito := '00'
    	end
    	else
			ACBrBoleto.Cedente.Agencia := xNumAgenciaBlt;
      	ACBrBoleto.Cedente.AgenciaDigito := xDigAgenciaBlt;
       //
       ACBrBoleto.Cedente.Conta:= DMBANCO.TCtaCor.FieldByName('NUMCTACOR').AsString;
       ACBrBoleto.Cedente.ContaDigito:= DMBANCO.TCtaCor.FieldByName('DIGCTACOR').AsString;

       if ACBrBoleto.Cedente.NovoLayout = '1' then
           ACBrBoleto.Cedente.CodigoCedente := ConcatZero(xCodCedenteBlt+xDigCedenteBlt, 7)
       else
           if DMBANCO.TCtaCor.FieldByName('COBRANCA_BANCOOB').AsString = '1' then
               ACBrBoleto.Cedente.CodigoCedente := xCodCedenteBlt+xDigCedenteBlt
           else
               ACBrBoleto.Cedente.CodigoCedente := xCodCedenteBlt+'-'+xDigCedenteBlt;

       if DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 1 then
           ACBrBoleto.Cedente.Convenio := ConcatZero(xModalidade, 7);

       //NÚMERO DO BANCO DEFINI TIPO DE COBRANÇA (LAYOUT)
       {case (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger) of
           001 : ACBrBoleto.Banco.TipoCobranca := cobBancoDoBrasil;
           104 : ACBrBoleto.Banco.TipoCobranca := cobCaixaEconomica;
           237 : ACBrBoleto.Banco.TipoCobranca := cobBradesco;
           341 : ACBrBoleto.Banco.TipoCobranca := cobItau;
           399 : ACBrBoleto.Banco.TipoCobranca := cobHSBC;
           748 : ACBrBoleto.Banco.TipoCobranca := cobSicred;
           756 : ACBrBoleto.Banco.TipoCobranca := cobBancoDoBrasil;
           else  ShowMessage('Banco não encontrado!');
       end;}

       if DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 001 then
           ACBrBoleto.Banco.TipoCobranca := cobBancoDoBrasil
       else if DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 104 then
           ACBrBoleto.Banco.TipoCobranca := cobCaixaEconomica
       else if DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 237 then
           ACBrBoleto.Banco.TipoCobranca := cobBradesco
       else if DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 341 then
           ACBrBoleto.Banco.TipoCobranca := cobItau
       else if DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 399 then
           ACBrBoleto.Banco.TipoCobranca := cobHSBC
       else if DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 748 then
           ACBrBoleto.Banco.TipoCobranca := cobSicred
       else if (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 756)
           and (DMBANCO.TCtaCor.FieldByName('COBRANCA_BANCOOB').AsString = '1') then
           ACBrBoleto.Banco.TipoCobranca := cobBancoob
       else if (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 756) then
           ACBrBoleto.Banco.TipoCobranca := cobBancoDoBrasil
       else
           ShowMessage('Banco não encontrado!');
           
       ACBrBoleto.Banco.Numero := DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger;

       //TESTE - CAIXA ECONÔMICA... 10.03.2015
       //CARTEIRA É DIFERENTE PARA A CAIXA
       if (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 104) then
       begin
           if (DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString = '01') then
               Titulo.Carteira := 'SR' //SEM Registro
           else
               Titulo.Carteira := 'RG'; //COM Registro
       end
       else//A CARTEIRA É IGUAL PARA O RESTANTE
           Titulo.Carteira := xCodCarteiraBlt;

       Titulo.Parcela := DMFINANC.TAlx.RecNo;//XNumeroParcelas;
       Titulo.TotalParcelas := XTotalParcelas;
       Titulo.EspecieMod := 'R$';
       Titulo.LocalPagamento := 'Pagar preferêncialmente nas agências do Banco';
       Titulo.Vencimento:=DMFinanc.TAlx.FieldByName('DTVENC').AsDateTime;
       Titulo.DataDocumento:=DMFinanc.TAlx.FieldByName('DTLANC').AsDateTime;
       Titulo.EspecieDoc:= 'DM';
       Titulo.Aceite := atNao;
       Titulo.DataProcessamento:=Date();

       if TipoGer <> 2 then
       begin//Não for uma copia do boleto
           Titulo.NumeroDocumento :=XNumFisc+'-'+XNumFisc+':'+DMFinanc.TAlx.FieldByName('NUMPARC').AsString;
           if (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='1')
           	OR (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='756')
               	AND (xPrefixoNossoNum <> '') then
           	Titulo.NossoNumero := xNossoNumBlt+xPrefixoNossoNum+ConcatZero(xProxBoleto, 7)
			else
		    	Titulo.NossoNumero := xNossoNumBlt+xPrefixoNossoNum+ConcatZero(xProxBoleto, 7);
       end
       else begin
           Titulo.NumeroDocumento := XNumFisc+'-'+DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString+':'+DMFinanc.TAlx.FieldByName('NUMPARC').AsString;
		    Titulo.NossoNumero := DMFINANC.TAlx.FieldByName('NOSSONUMBLT').AsString;
       end;
       
       Titulo.ValorDocumento:=DMFinanc.TAlx.FieldByName('VALOR').AsCurrency;
       //sacado
       Titulo.Sacado.NomeSacado:=TiraCaracter(TiraAcentos(DMFinanc.TAlx.FieldByName('SACADO').AsString), '-');

       if ValidCPF(DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString)=True then
           Titulo.Sacado.Pessoa := pFisica
       else
           Titulo.Sacado.Pessoa := pJuridica;

       Titulo.Sacado.CNPJCPF:=DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString;
       Titulo.Sacado.Logradouro:=DMFinanc.TAlx.FieldByName('ENDERECO').AsString;
       Titulo.Sacado.Bairro:=DMFinanc.TAlx.FieldByName('Bairro').AsString;
       Titulo.Sacado.Cidade:=DMFinanc.TAlx.FieldByName('CIDADE').AsString;
       Titulo.Sacado.UF:=DMFinanc.TAlx.FieldByName('UF_ESTADO').AsString;
       Titulo.Sacado.CEP:=TiraCaracter(DMFinanc.TAlx.FieldByName('CEP').AsString, '-');
       Titulo.Sacado.Numero:=DMFinanc.TAlx.FieldByName('endnumero').AsString;
       
       {if DMMACS.TLoja.FieldByName('MULTA').AsCurrency > 0 then//Edmar - 11/05/2015 - Calcula o valor da multa para o boleto
         if (FMenu.XAPLICAMULTA = 'S') and (FMenu.XVALORMULTA = 0) then
       	   xVlMulta := DMFinanc.TAlx.FieldByName('VALOR').AsCurrency * (DMMACS.TLoja.FieldByName('MULTA').AsCurrency / 100)
         else if (FMenu.XVALORMULTA <> 0) AND (FMenu.XAPLICAMULTA = 'S') then
           xVlMulta := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency) * (FMenu.XVALORMULTA / 100))
         else
           xVlMulta := 0
       else
		  	xVlMulta := 0;}

       {if DMMACS.TLoja.FieldByName('JUROS').AsCurrency > 0 then//Calcula o valor diario de juros
           if (FMenu.XAPLICAMULTA = 'S') and (FMenu.XVALORJUROS = 0) then
              xVlJuros := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency + xVlMulta) * (DMMACS.TLoja.FieldByName('JUROS').AsCurrency / 100)) / 30
           else if (FMenu.XVALORJUROS <> 0) and (FMenu.XAPLICAMULTA = 'S') then
              xVlJuros := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency + xVlMulta) * (FMenu.XVALORJUROS / 100) / 30)
           else
              xVlJuros := 0
       else
        xVlJuros := 0;

       //Edmar - 19/05/2015 - Diferente de 2 significa que não é outra via
       if XtipoGer1<>2 then
       begin
       	//nesta caso, coloca o valor calculado e o que está na loja
       	Titulo.ValorMoraJuros := xVlJuros;
        if FMenu.XAPLICAMULTA = 'S' then
         	Titulo.PercentualMulta := DMFINANC.TAlx.FieldByName('MULTA').AsFloat
        else
          Titulo.PercentualMulta := xVlMulta;
       end
       else begin
       	//se for outra via, busca o que foi salvo na parcela
       	Titulo.ValorMoraJuros := DMFINANC.TAlx.FieldByName('VALOR_JUROSBOLETO').AsCurrency;
       	Titulo.PercentualMulta := (DMFINANC.TAlx.FieldByName('VALOR_MULTABOLETO').AsCurrency * 100) / DMFinanc.TAlx.FieldByName('VALOR').AsCurrency;
       end;}

       if (DMFINANC.TAlx.FieldByName('MULTA').AsCurrency > 0) then
           xVlMulta := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency) * (DMFINANC.TAlx.FieldByName('MULTA').AsCurrency / 100))
       else
           xVlMulta := 0;

       if (DMFINANC.TAlx.FieldByName('JUROS').AsCurrency > 0) then
           xVlJuros := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency + xVlMulta) * (DMFINANC.TAlx.FieldByName('JUROS').AsCurrency / 100)) / 30
       else
           xVlJuros := 0;

//       Titulo.CodigoMulta := cmPercentual;
       if TipoGer <> 2 then
       begin
       	//nesta caso, coloca o valor calculado e o que está na loja
           Titulo.ValorMoraJuros := xVlJuros;
       	if FMenu.XAPLICAMULTA = 'S' then
//         		Titulo.PercentualMulta := DMFINANC.TAlx.FieldByName('MULTA').AsFloat
        	else
//          		Titulo.PercentualMulta := 0;
       end
       else begin
       	//se for outra via, busca o que foi salvo na parcela
       	Titulo.ValorMoraJuros := DMFINANC.TAlx.FieldByName('VALOR_JUROSBOLETO').AsCurrency;
//       	Titulo.PercentualMulta := DMFINANC.TAlx.FieldByName('MULTA').AsFloat; //(DMFINANC.TAlx.FieldByName('VALOR_MULTABOLETO').AsCurrency * 100) / DMFinanc.TAlx.FieldByName('VALOR').AsCurrency;
       end;

       Titulo.ValorAbatimento := 0;
       Titulo.DataMoraJuros := 0;
       Titulo.DataAbatimento := 0;

       Titulo.Mensagem.Text := DMFinanc.TAlx.FieldByName('TEXTOBLT').AsString;

       if (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '-1')
           AND (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '') then
       begin
       	Titulo.DataProtesto := IncDay(Titulo.Vencimento, DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsInteger);
       	Titulo.TipoDiasProtesto := diCorridos;
       end;
       
       If FMenu.XTIPOBOLTO='R' Then
         Titulo.Sacado.Complemento:='1'
       Else
         Titulo.Sacado.Complemento:='3';

       If TipoGer<>2
       Then Begin//Não for uma copia do carne
           Titulo.NumeroDocumento:=XNumFisc+'-'+DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString+':'+DMFinanc.TAlx.FieldByName('NUMPARC').AsString;
           Titulo.NossoNumero:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString;
       End
       Else Begin
           Titulo.NumeroDocumento:=XNumFisc+'-'+DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString+':'+DMFinanc.TAlx.FieldByName('NUMPARC').AsString;
           Titulo.NossoNumero:=DMFINANC.TAlx.FieldByName('NOSSONUMBLT').AsString;
       End;
       
       //Montar Nosso Numero para BB e cedente de 7 digitos
       {If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger=1) And (Length(DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString)=7)
       Then Begin
         Titulo.NossoNumero:=ConcatZero(DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString, 10);
         Titulo.NossoNumero:=DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString+Titulo.NossoNumero;
       End;
       Titulo.LocalPagamento:='PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO.';
       //Montar Nosso Numero para SICOOB
       If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='756')
       Then Begin
           Titulo.LocalPagamento:='PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO.';
           //extratifica data Atual
           DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
           If XtipoGer1<>2
           Then Begin //Se naum for uma copia do Boleto
               Titulo.NossoNumero:=DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString+DMBANCO.TCtaCor.FieldByName('prefixo_nossonum').AsString+ConcatZero(DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString, 7);
           End
           Else Begin
               Titulo.NossoNumero:=DMFINANC.TAlx.FieldByName('NOSSONUMBLT').AsString;
           End;
       End;
       //Montar Nosso Numero para SICREDI
       If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='748')
       Then Begin
           Titulo.LocalPagamento:='ATÉ O VENCIMENTO, PREFERENCIALMENTE NAS AGÊNCIAS SICREDI.';
           //extratifica data Atual
           DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
           If XtipoGer1<>2
           Then Begin //Se naum for uma copia do Boleto
               Titulo.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+'2'+ConcatZero(DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString, 5);
           End
           Else Begin
               Titulo.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+'2'+ConcatZero(DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString, 5);
           End;
       End;}

       Titulo.LocalPagamento := 'PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO.';
       //Montar Nosso Numero para SICOOB
       if (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='756') then
       begin
       	Titulo.LocalPagamento := 'PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO.';
  			//extratifica data Atual
           DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
           If TipoGer <> 2 then // Se naum for uma copia do Boleto
           	Titulo.NossoNumero := xNossoNumBlt+xPrefixoNossoNum+ConcatZero(xProxBoleto, 7)
           else
           	Titulo.NossoNumero := DMFINANC.TAlx.FieldByName('NOSSONUMBLT').AsString;
       End;
       //Montar Nosso Numero para SICREDI
       If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='748')
       Then Begin
           Titulo.LocalPagamento:='ATÉ O VENCIMENTO, PREFERENCIALMENTE NAS AGÊNCIAS SICREDI.';
  			//extratifica data Atual
           DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
           If TipoGer <> 2
           Then Begin //Se naum for uma copia do Boleto
			    Titulo.NossoNumero := COPY(IntToStr(YearAtu), 3, 2)+'2'+ConcatZero(xProxBoleto, 5);
           End
           Else Begin
			    Titulo.NossoNumero := COPY(IntToStr(YearAtu), 3, 2)+'2'+ConcatZero(DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString, 5);
           End;
       End;

       //Paulo 11/07/2011: mpnta nosso numero para caixa
       If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='104')
       Then Begin
           if xCodCarteiraBlt = 'SR' then
               Titulo.NossoNumero:= ConcatZero(XNumFisc, 10);
           if xCodCarteiraBlt = 'CR' then
               Titulo.NossoNumero:= '9'+ConcatZero(XNumFisc, 9);
       End;
       
       //Se for impressão de um novo carnê e naum uma copia
       DMCONTA.TParcCR.Close;
       DMCONTA.TParcCR.SQL.Clear;
       DMCONTA.TParcCR.SQL.Add('SELECT * FROM PARCELACR WHERE PARCELACR.COD_PARCELACR=:CODPAR');
       DMCONTA.TParcCR.ParamByName('CODPAR').AsInteger:=DMFINANC.TAlx.FieldByName('COD_PARCELACR').AsInteger;
       DMCONTA.TParcCR.Open;
                     
       if not DMCONTA.TParcCR.IsEmpty then
       begin
           try
               if (TipoGer <> 2) then
               begin
                   DMCONTA.TParcCR.Edit;
                   DMCONTA.TParcCR.FieldByName('IMP').AsString:='B';

                   {if DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency=0 then
                   begin
                       DMBANCO.TCtaCor.Edit;
                       DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency:=1;
                       DMBANCO.TCtaCor.Post;
                   end;}

                   DMCONTA.TParcCR.FieldByName('NUMFISC').AsString:=XNumFisc;
                   DMCONTA.TParcCR.FieldByName('COD_CTACOR').AsInteger:=XCOD_CTACORBLT;
                   DMCONTA.TParcCR.FieldByName('NUMBOLETO').AsString:=xProxBoleto;
                   DMCONTA.TParcCR.FieldByName('NOSSONUMBLT').AsString:=Titulo.NossoNumero;
                   DMCONTA.TParcCR.FieldByName('VALOR_MULTABOLETO').AsCurrency := xVlMulta;
                   DMCONTA.TParcCR.FieldByName('VALOR_JUROSBOLETO').AsCurrency := xVlJuros;
                   DMCONTA.TParcCR.FieldByName('TIPOBLT').AsString:=FMenu.XTIPOBOLTO;                   
                   DMCONTA.TParcCR.Post;
                   DMCONTA.IBT.CommitRetaining;
                   DMBANCO.TCtaCor.Edit;
                   if FMenu.XTIPOBOLTO='R' then
						DMBANCO.TCtaCor.FieldByName('PROXBOLETO_REG').AsCurrency := StrToInt(xProxBoleto) + 1
                   else
                   	DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency := StrToInt(xProxBoleto) + 1;
                   DMBANCO.TCtaCor.Post;
                   DMBANCO.IBT.CommitRetaining;
               End;
           except
               Mensagem('A T E N Ç Ã O ', 'O carnê não foi impresso devido a uma falha ao gravar o tipo de impressão na parcela!', '', 1,1, false, 'a');
           end;
       end;
       DMFINANC.TAlx.Next;
   end;
	ACBrBoleto.Imprimir;
End;


//procedure que seleciona e imprime recibo de extrato referente a parcela
Procedure TFPADRAOCONTAS.ImpReciboExt(CODCTA:INTEGER);
Var
   XExtenso: String;
Begin
   //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	//PREPARA SQL
   If XTipoPR='R'
   Then Begin
	   DMFinanc.TRel.Close;
	   DMFinanc.TRel.SQL.Clear;
	   DMFinanc.TRel.SQL.Add('SELECT distinct(parcelacr.cod_parcelacr), parcelacr.dtvenc AS VENCIMENTO, parcelacr.valorpg, parcelacr.numparc, parcelacr.valExt, parcelacr.valor, ');
	   DMFinanc.TRel.SQL.Add('pessoa.bairro, pessoa.cep, Pessoa.Telrel, pessoa.cpfcnpj, pessoa.endereco, pessoa.endnumero, pessoa.nome, ');
	   DMFinanc.TRel.SQL.Add('CtaReceber.NumDoc, CtaReceber.DTLanc, cidade.nome, estado.uf_estado ');
	   DMFinanc.TRel.SQL.Add('FROM parcelacr join ctareceber ON parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
	   DMFinanc.TRel.SQL.Add('JOIN cliente on cliente.cod_cliente = ctareceber.cod_cliente ');
	   DMFinanc.TRel.SQL.Add('join pessoa ON pessoa.cod_pessoa = cliente.cod_pessoa ');
	   DMFinanc.TRel.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
	   DMFinanc.TRel.SQL.Add('left join estado ON estado.cod_estado = cidade.cod_estado ');
	   DMFinanc.TRel.SQL.Add('Where parcelacr.COD_PARCELACR=:CODCTARECEBER ');
	   DMFinanc.TRel.ParamByName('CODCTARECEBER').AsInteger:=CODCTA;
	   DMFinanc.TRel.Open;
      If not DMFINANC.TRel.IsEmpty
      Then Begin
           If DMFINANC.TRel.FieldByName('valorpg').AsCurrency>0
           Then Begin
               FMenu.Extenso.Numero:=FormatFloat('0.00', DMFINANC.TRel.FieldByName('valorpg').AsCurrency);
               XExtenso:=DMMACS.TLoja.FieldByName('TMP3').AsString;

               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' update loja set loja.tmp3=:tmp3 ');
               MDO.Query.ParamByName('tmp3').AsString:=FMenu.Extenso.Extenso;
               MDO.Query.ExecSQL;
               MDO.Transac.CommitRetaining;
               DMMACS.Transaction.CommitRetaining;
               FiltraTabela(DMMACS.TLoja,'LOJA','COD_LOJA',FMenu.LCODLOJA.Caption,'');
           End;
           PadraoImp(DMMACS.TLoja.FieldByName('IMPTHERMAL').AsString);
           FSReciboCupom.LoadFromFile('C:\MZR\MACS\Rel\FrfReciboExtrato.frf');
           FSReciboCupom.ShowReport;
           RetPadraoImp;

           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' update loja set loja.tmp3=:tmp3 ');
           MDO.Query.ParamByName('tmp3').AsString:=XExtenso;
           MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;
           DMMACS.Transaction.CommitRetaining;

      End
      Else Begin
           MessageDlg('Sem retorno', mtWarning, [mbOK], 0);
      End;
   End;
End;
//procedure que seleciona e imprime recibo referente a parcela
Procedure TFPADRAOCONTAS.ImpRecibo(CODCTA:INTEGER);
Begin
   //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   FiltraTabela(DMMacs.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');

	//PREPARA SQL
   If XTipoPR='R'
   Then Begin
	   DMFinanc.TAlx.Close;
	   DMFinanc.TAlx.SQL.Clear;
	   DMFinanc.TAlx.SQL.Add('SELECT distinct(parcelacr.cod_parcelacr), parcelacr.dtvenc AS VENCIMENTO, parcelacr.dtdebito as PAGAMENTO, parcelacr.valorpg, parcelacr.numparc, parcelacr.valExt, parcelacr.valor, ');
	   DMFinanc.TAlx.SQL.Add('pessoa.bairro, pessoa.cep, Pessoa.Telrel, pessoa.cpfcnpj, pessoa.endnumero, pessoa.endereco, pessoa.nome, parcelacr.historico, ');
	   DMFinanc.TAlx.SQL.Add('CtaReceber.NumDoc, CtaReceber.DTLanc, cidade.nome, estado.uf_estado ');
	   DMFinanc.TAlx.SQL.Add('FROM parcelacr join ctareceber ON parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
	   DMFinanc.TAlx.SQL.Add('JOIN cliente on cliente.cod_cliente = ctareceber.cod_cliente ');
	   DMFinanc.TAlx.SQL.Add('join pessoa ON pessoa.cod_pessoa = cliente.cod_pessoa ');
	   DMFinanc.TAlx.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
	   DMFinanc.TAlx.SQL.Add('left join estado ON estado.cod_estado = cidade.cod_estado ');
	   DMFinanc.TAlx.SQL.Add('Where parcelacr.COD_PARCELACR=:CODCTARECEBER ');
	   DMFinanc.TAlx.ParamByName('CODCTARECEBER').AsInteger:=CODCTA;
	   DMFinanc.TAlx.Open;

      //Filtra o numero da OS
     DMMACS.Transaction.CommitRetaining;
     DMMACS.TALX.Close;
     DMMACS.TALX.SQL.Clear;
     DMMACS.TALX.SQL.Add('select * from parcelacr');
     DMMACS.TALX.SQL.Add('left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber');
     DMMACS.TALX.SQL.Add('left join ordem on ctareceber.cod_gerador = ordem.cod_ordem');
     DMMACS.TALX.SQL.Add('where ctareceber.tipogerador = ''ORD'' AND parcelacr.cod_parcelacr =:param');
     DMMACS.TALX.ParamByName('param').AsInteger:=DMFINANC.TAlx.FieldByName('cod_parcelacr').AsInteger;
     DMMACS.TALX.Open;
     
      If Not DMFINANC.TAlx.IsEmpty
      Then Begin
           If (DMMACS.TLoja.FieldByName('TIPORECIBO').AsString='NORMAL') Or (DMMACS.TLoja.FieldByName('TIPORECIBO').AsString='')
           Then Begin
               If FMenu.TIPOREL='RECIBOVALOR' Then
                   QRReciboValor.Preview;
               If FMenu.TIPOREL='RECIBOGFINAL'
               then begin
                   //recebe o nº dos documentos e seus vencimentos pra imprimir no recibo grande cm valor final
                   QRRDocumentos.Lines.Clear;
                   QRRDocumentos.Lines.Text:=XDOCPARC;
                   QRReciboGFinal.Preview
               end;
               If FMenu.TIPOREL='RECIBOGSEMCORRECAO'
               then begin
                   //recebe o nº dos documentos e seus vencimentos pra imprimir no recibo grande cm valor final
                   QRRDocumento.Lines.Clear;
                   QRRDocumento.Lines.Text:=XDOCPARC;
                   QRFinalSimples.Preview;
               end;
               IF FMenu.TIPOREL=''
               Then Begin
                   // se estiver valendo 1 eh pq o campo de referencia do relatorio QRRecibo está liberado para modificações
                   If XLIBERA_CAMPO = '1'
                   Then Begin
                       QRDBText31.Visible := false;
                       QRDBText31.SendToBack;

                       // verifica se o pgto eh menor que o total da parcela. Se for menor a frase no cupom sai como pagamento parcial, caso contrario, como pagamento completo
                       If DMFinanc.TAlx.FieldByName('VALORPG').AsCurrency < DMFinanc.TAlx.FieldByName('VALOR').AsCurrency Then
                           QRLabel36.Caption := 'REFERENTE: PAGTO PARCIAL DOCUMENTO ' + DMFinanc.TAlx.FieldByName('NUMPARC').AsString
                       Else
                           QRLabel36.Caption := 'REFERENTE: PAGTO DOCUMENTO ' + DMFinanc.TAlx.FieldByName('NUMPARC').AsString;
                   End;

                   QRRECIBO.Preview;
               End;
           End;
           If (DMMACS.TLoja.FieldByName('TIPORECIBO').AsString='CUPOM 1 COLUNA') Then
				      ImpReciboExt(CODCTA);
           If (DMMACS.TLoja.FieldByName('TIPORECIBO').AsString='CUPOM 2 COLUNAS') Then
				      ImpReciboExtDuasVias(CODCTA);
      end;
   End;
End;
//Seleciona parcelas de acordo com filtro da edit. se valor em branco passado com o no inicio mostrar todas mas ordenado pelo valor
Procedure TFPadraoContas.FiltraParcelaEdit(TipoCons: String);
Begin
	If XTipoPR='P'
   Then Begin//Consulpta para parcelas de contas a pagar
       XViewRef.Close;
       XViewRef.SQL.Clear;
       XViewRef.SQL.Add('Select * From VWparCP ');
       //SQL PARA TOTALIZAR
       DMFINANC.TAlx.Close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add(' SELECT SUM(VWPARCP.VALOR) AS TOTAL, SUM(vwparcP.valorpg) AS TOTALPG  FROM VWPARCP ');
   End
   Else Begin//Consulpta para parcelas de contas a receber
   	//SQL PARA FILTRO
       XViewRef.Close;
       XViewRef.SQL.Clear;
       XViewRef.SQL.Add('Select * From VWparCR  ');
       //SQL PARA TOTALIZAR
       DMFINANC.TAlx.Close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add(' SELECT SUM(VWPARCR.VALOR) AS TOTAL, SUM(vwparcr.valorpg) AS TOTALPG  FROM VWPARCR ')
   End;

   //filtra para loja
   XViewRef.SQL.Add('Where (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') ');

   //Edmar - 28/01/2015 - se não for tela de contas a pagar, buscar somente as parcelas que não estão no spc
   //   if XTipoPR = 'R' then
   // 	XViewRef.SQL.Add(' AND ((VWPARCR.  <> ''1'') OR (VWPARCR.SCPC IS NULL))  ');

   //XViewRef.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
	//TOTALIZA PARA LOJA
   DMFINANC.TAlx.SQL.Add('  WHERE (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') ');

   If XTipoPR='P'
   Then Begin // Realizará o filtro de pessoa para fornecedor de contas a pagar
	   If TCConsultContas.ActiveTab=3
      Then Begin
	       XViewRef.SQL.Add('  And (PREVISAO ='+#39+'1'+#39+')  ');
	       DMFINANC.TAlx.SQL.Add('  And (PREVISAO ='+#39+'1'+#39+')  ');
      End;
	End;

	if(RadioSpcNao.Checked) then   // Rodrigo Brandão - 18/03/2015 - Verifica check box para buscar tambem contas com SCPC ou não.
   begin
   	XViewRef.SQL.Add(' AND ((SCPC = ''0'') OR (SCPC IS NULL)) ');
      	DMFINANC.TAlx.SQL.Add(' AND ((SCPC = ''0'') OR (SCPC IS NULL)) ');
   end;
   
  If PIndividual.Visible = True
  Then Begin
    If cbFiltroCobr.ItemIndex = 0
    Then Begin
       //
    End
    Else If cbFiltroCobr.ItemIndex = 1
    Then Begin
        XViewRef.SQL.Add(' And (COBRANCA = ''Banco'')');
		    DMFINANC.TAlx.SQL.Add(' And (COBRANCA = ''Banco'')');
    End
    Else If cbFiltroCobr.ItemIndex = 2
    Then Begin
        XViewRef.SQL.Add(' And (COBRANCA = ''Carteira'')');
		    DMFINANC.TAlx.SQL.Add(' And (COBRANCA = ''Carteira'')');
    End
    Else If cbFiltroCobr.ItemIndex = 3
    Then Begin
        XViewRef.SQL.Add(' And (COBRANCA = ''Cartão'')');
		    DMFINANC.TAlx.SQL.Add(' And (COBRANCA = ''Cartão'')');
    End
    Else If cbFiltroCobr.ItemIndex = 4
    Then Begin
        XViewRef.SQL.Add(' And (COBRANCA = ''Cheque'')');
		    DMFINANC.TAlx.SQL.Add(' And (COBRANCA = ''Cheque'')');
    End
    Else If cbFiltroCobr.ItemIndex = 5
    Then Begin
        XViewRef.SQL.Add(' And (COBRANCA = ''Chq. Terc.'')');
		    DMFINANC.TAlx.SQL.Add(' And (COBRANCA = ''Chq. Terc.'')');
    End;
  End
  Else Begin
    If cbFiltroCobrBaixadas.ItemIndex = 0
    Then Begin
       //
    End
    Else If cbFiltroCobrBaixadas.ItemIndex = 1
    Then Begin
        XViewRef.SQL.Add(' And (COBRANCA = ''Banco'')');
		    DMFINANC.TAlx.SQL.Add(' And (COBRANCA = ''Banco'')');
    End
    Else If cbFiltroCobrBaixadas.ItemIndex = 2
    Then Begin
        XViewRef.SQL.Add(' And (COBRANCA = ''Carteira'')');
		    DMFINANC.TAlx.SQL.Add(' And (COBRANCA = ''Carteira'')');
    End
    Else If cbFiltroCobrBaixadas.ItemIndex = 3
    Then Begin
        XViewRef.SQL.Add(' And (COBRANCA = ''Cartão'')');
		    DMFINANC.TAlx.SQL.Add(' And (COBRANCA = ''Cartão'')');
    End
    Else If cbFiltroCobrBaixadas.ItemIndex = 4
    Then Begin
        XViewRef.SQL.Add(' And (COBRANCA = ''Cheque'')');
		    DMFINANC.TAlx.SQL.Add(' And (COBRANCA = ''Cheque'')');
    End
    Else If cbFiltroCobrBaixadas.ItemIndex = 5
    Then Begin
        XViewRef.SQL.Add(' And (COBRANCA = ''Chq. Terc.'')');
		    DMFINANC.TAlx.SQL.Add(' And (COBRANCA = ''Chq. Terc.'')');
    End;
  End;




   //filtra para contas baixadas ou não
   If PIndividual.Visible=True
   Then Begin  //filtra contas em aberto
		XViewRef.SQL.Add(' And (Fech <> '+#39+'S'+#39+') ');
		DMFINANC.TAlx.SQL.Add(' And (Fech <> '+#39+'S'+#39+') ');
		{If XTipo<>'P'
   	Then Begin//Consulpta para parcelas de contas a pagar
	   		XViewRef.SQL.Add(' And ((SCPC <>'+#39+'1'+#39+') or (SCPC IS NULL)) ');
	   		DMFINANC.TAlx.SQL.Add(' And ((SCPC <>'+#39+'1'+#39+') or (SCPC IS NULL)) ');
       End;}
   End
   Else Begin
	   If (XTipoPR='P') and (TCConsultContas.ActiveTab<>3)
      Then Begin
	   		XViewRef.SQL.Add(' And (Fech = '+#39+'S'+#39+') ');
	   		DMFINANC.TAlx.SQL.Add(' And (Fech = '+#39+'S'+#39+') ');
      End;
	   If (XTipoPR<>'P')
      Then Begin
	   		XViewRef.SQL.Add(' And (Fech = '+#39+'S'+#39+') ');
	   		DMFINANC.TAlx.SQL.Add(' And (Fech = '+#39+'S'+#39+') ');
      End;
   End;

   //Continua sql com os valores para consulta
   If TipoCons='NUMPARC'
   Then Begin//filtrar pelo numparc numero da parcela e ordenar
       XViewRef.SQL.Add(' And (upper(NUMPARC) like upper('+#39+EdNumParc.Text+'%'+#39+')) ORDER BY NUMPARC, DTVENC, NOME');
       DMFINANC.TAlx.SQL.Add(' And (upper(NUMPARC) like upper('+#39+EdNumParc.Text+'%'+#39+'))');
   End;
   If TipoCons='ONUMPARC'
   Then Begin//ordena pelo valor
       XViewRef.SQL.Add(' ORDER BY NUMPARC, DTVENC, NOME');
   End;

   If TipoCons='DTLANC'
   Then Begin//filtrar pelo DTLANC Data de Lançamento  da parcela e ordenar
		XViewRef.SQL.Add(' And (DTLANC = '+#39+SubstituiCaracter(EDLANCAMENTO.TEXT,'/','.')+#39+') ORDER BY DTLANC, NOME');   
       //XViewRef.SQL.Add(' And (DTLANC = :DTLANC) ORDER BY DTLANC, NOME');
       //XViewRef.ParamByName('DTLANC').AsDate:=StrToDate(EDLANCAMENTO.TEXT);

       DMFINANC.TAlx.SQL.Add(' And (DTLANC = '+#39+SubstituiCaracter(EDLANCAMENTO.TEXT,'/','.')+#39+')');
       //DMFINANC.TAlx.ParamByName('DTLANC').AsDate:=StrToDate(EDLANCAMENTO.TEXT);
   End;
   If TipoCons='ODTLANC'
   Then Begin//ordena pelo valor
       XViewRef.SQL.Add(' ORDER BY DTLANC, NOME');
   End;
   If TipoCons='DTVENC'
   Then Begin//filtrar pelo DTVENC Data de Vencimento da parcela e ordenar
		Try
       	//StrToDate(EdVencimento2.TEXT);
       	//XViewRef.SQL.Add(' And (DTVENC Between :Data1 and :Data2) ORDER BY DTVENC, NOME');
			//XViewRef.SQL.Add(' And (DTVENC Between '+#39+SubstituiCaracter(EdVencimento.TEXT,'/','.')+#39+' and '+#39+SubstituiCaracter(EdVencimento2.TEXT,'/','.')+#39+')');
       	//DMFINANC.TAlx.SQL.Add(' And (DTVENC Between :Data1 and :Data2)');

           If TCConsultContas.ActiveTab=2
           Then Begin
				XViewRef.SQL.Add(' And (DTVENC Between '+#39+SubstituiCaracter(EdVencBaixa.TEXT,'/','.')+#39+' and '+#39+SubstituiCaracter(EdVencBaixa2.TEXT,'/','.')+#39+')');
           	DMFINANC.TAlx.SQL.Add(' And (DTVENC Between '+#39+SubstituiCaracter(EdVencBaixa.TEXT,'/','.')+#39+' and '+#39+SubstituiCaracter(EdVencBaixa2.TEXT,'/','.')+#39+')');
           	//Somente para aba de baixadas
				//XViewRef.ParamByName('Data1').AsString:=EdVencBaixa.TEXT;
				//XViewRef.ParamByName('Data2').AsString:=EdVencBaixa2.TEXT;

				//DMFINANC.TAlx.ParamByName('Data1').AsString:=EdVencBaixa.TEXT;
				//DMFINANC.TAlx.ParamByName('Data2').AsString:=EdVencBaixa2.TEXT;
           End
           Else Begin
				XViewRef.SQL.Add(' And (DTVENC Between '+#39+SubstituiCaracter(EdVencimento.TEXT,'/','.')+#39+' and '+#39+SubstituiCaracter(EdVencimento2.TEXT,'/','.')+#39+')');
           	DMFINANC.TAlx.SQL.Add(' And (DTVENC Between '+#39+SubstituiCaracter(EdVencimento.TEXT,'/','.')+#39+' and '+#39+SubstituiCaracter(EdVencimento2.TEXT,'/','.')+#39+')');
           	//Somente para aba de não baixadas
				{XViewRef.ParamByName('Data1').AsString:=EdVencimento.TEXT;
				XViewRef.ParamByName('Data2').AsString:=EdVencimento2.TEXT;}

				//DMFINANC.TAlx.ParamByName('Data1').AsString:=EdVencimento.TEXT;
				//DMFINANC.TAlx.ParamByName('Data2').AsString:=EdVencimento2.TEXT;
           End;
       Except
       	StrToDate(EdVencBaixa2.Text);
           If TCConsultContas.ActiveTab=2
           Then Begin
           	//Somente para aba de baixadas

				XViewRef.SQL.Add(' And (DTVENC = '+#39+SubstituiCaracter(EdVencBaixa.TEXT,'/','.')+#39+') ORDER BY DTVENC, NOME');
               //XViewRef.SQL.Add(' And (DTVENC = :DTVENC) ORDER BY DTVENC, NOME');
               //XViewRef.ParamByName('DTVENC').AsDate:=StrToDate(EdVencBaixa.TEXT);

				DMFINANC.TAlx.SQL.Add(' And (DTVENC = '+#39+SubstituiCaracter(EdVencBaixa.TEXT,'/','.')+#39+')');
               //DMFINANC.TAlx.SQL.Add(' And (DTVENC = :DTVENC)');
               //DMFINANC.TAlx.ParamByName('DTVENC').AsDate:=StrToDate(EdVencBaixa.TEXT);
           End
           Else Begin
           	//Somente para aba de não baixadas
				XViewRef.SQL.Add(' And (DTVENC = '+#39+SubstituiCaracter(EdVencimento.TEXT,'/','.')+#39+') ORDER BY DTVENC, NOME');
               //XViewRef.SQL.Add(' And (DTVENC = :DTVENC) ORDER BY DTVENC, NOME');
               //XViewRef.ParamByName('DTVENC').AsDate:=StrToDate(EdVencimento.TEXT);

               DMFINANC.TAlx.SQL.Add(' And (DTVENC = '+#39+SubstituiCaracter(EdVencimento.TEXT,'/','.')+#39+')');
               //DMFINANC.TAlx.ParamByName('DTVENC').AsDate:=StrToDate(EdVencimento.TEXT);
			End;
		End;
   End;
   If (TipoCons='ODTVENC') OR (TipoCons='DTVENC')
   Then Begin//ordena pelo valor
       XViewRef.SQL.Add(' ORDER BY DTVENC, NOME ');
       //DMFINANC.TAlx.SQL.Add(' ORDER BY DTVENC, NOME ');
   End;

   If TipoCons='HIST'
   Then Begin//filtrar pelo fornecedor  da parcela e ordenar
      XViewRef.SQL.Add(' And (upper(HISTORICO) like upper('+#39+EdHistFornec.Text+'%'+#39+')) ORDER BY HISTORICO, DTVENC');

      DMFINANC.TAlx.SQL.Add(' And (upper(HISTORICO) like upper('+#39+EdHistFornec.Text+'%'+#39+')) ');
   End;

   If TipoCons='OHIST'
   Then Begin//ordena pelo valor
      XViewRef.SQL.Add(' ORDER BY HISTORICO, DTVENC');
   End;

   If XTipoPR='P'
   Then Begin // Realizará o filtro de pessoa para fornecedor de contas a pagar
	   If TipoCons='PESSOA'
	   Then Begin//filtrar pelo fornecedor  da parcela e ordenar
	       XViewRef.SQL.Add(' And (upper(NOME) like upper('+#39+EDFornecedor.Text+'%'+#39+')) ORDER BY NOME, DTVENC');

	       DMFINANC.TAlx.SQL.Add(' And (upper(NOME) like upper('+#39+EDFornecedor.Text+'%'+#39+'))');
	   End;
	   If TipoCons='OPESSOA'
	   Then Begin//ordena pelo valor
	       XViewRef.SQL.Add(' ORDER BY NOME, DTVENC');
	   End;
	   If TipoCons='RAZAO'
	   Then Begin//filtrar pelo fornecedor  da parcela e ordenar
	       XViewRef.SQL.Add(' And (upper(RAZAOSOCIAL) like upper('+#39+EDFornecedor.Text+'%'+#39+')) ORDER BY RAZAOSOCIAL, DTVENC');
	       DMFINANC.TAlx.SQL.Add(' And (upper(RAZAOSOCIAL) like upper('+#39+EDFornecedor.Text+'%'+#39+'))');
	   End;
	   If TipoCons='ORAZAO'
	   Then Begin//ordena pelo valor
	       XViewRef.SQL.Add(' ORDER BY RAZAOSOCIAL, DTVENC');
	   End;
      //Continua sql com os valores para consulta
      If TipoCons='CODIGO'
      Then Begin//filtrar pelo numparc numero da parcela e ordenar
      		XViewRef.SQL.Add(' And (upper(COD_INTERNO) like upper('+#39+EdCod_Interno.Text+'%'+#39+')) ORDER BY COD_INTERNO, DTVENC, NOME');
      		DMFINANC.TAlx.SQL.Add(' And (upper(COD_INTERNO) like upper('+#39+EdCod_Interno.Text+'%'+#39+')) ');
      End;
      If TipoCons='OCODIGO'
      Then Begin//ordena pelo valor
      		XViewRef.SQL.Add(' ORDER BY COD_INTERNO, DTVENC, NOME');
      End;
      //Paulo 14/04/2011: Consulta pelo nº do boleto
      If TipoCons='NUMBOLETO'
      Then Begin//filtrar pelo numparc numero da parcela e ordenar
      		XViewRef.SQL.Add(' And (upper(NUMBOLETO) like upper('+#39+EdNumBoleto.Text+'%'+#39+')) ORDER BY NUMBOLETO, DTVENC, NOME');

      		DMFINANC.TAlx.SQL.Add(' And (upper(NUMBOLETO) like upper('+#39+EdNumBoleto.Text+'%'+#39+')) ');
      End;

   End
   Else Begin
	   If TipoCons='PESSOA'
	   Then Begin//filtrar pelo cliente da parcela e ordenar
	       XViewRef.SQL.Add(' And (upper(NOME) like upper('+#39+EDFornecedor.Text+'%'+#39+')) ORDER BY NOME, DTVENC');

	       DMFINANC.TAlx.SQL.Add(' And (upper(NOME) like upper('+#39+EDFornecedor.Text+'%'+#39+'))');
	   End;
	   If TipoCons='OPESSOA'
	   Then Begin//ordena pelo valor
	       XViewRef.SQL.Add(' ORDER BY NOME, DTVENC');
	   End;
      //Continua sql com os valores para consulta
      If TipoCons='NUMBOLETO'
      Then Begin//filtrar pelo numparc numero da parcela e ordenar
      		XViewRef.SQL.Add(' And (upper(NUMBOLETO) like upper('+#39+EdNumBoleto.Text+'%'+#39+')) ORDER BY NUMBOLETO, DTVENC, NOME');

      		DMFINANC.TAlx.SQL.Add(' And (upper(NUMBOLETO) like upper('+#39+EdNumBoleto.Text+'%'+#39+')) ');
      End;
      If TipoCons='ONUMBOLETO'
      Then Begin//ordena pelo valor
      		XViewRef.SQL.Add(' ORDER BY NUMBOLETO, DTVENC, NOME');
      End;

      //Continua sql com os valores para consulta
      If TipoCons='CODIGO'
      Then Begin//filtrar pelo numparc numero da parcela e ordenar
      		XViewRef.SQL.Add(' And (upper(COD_INTERNO) like upper('+#39+EdCod_Interno.Text+'%'+#39+')) ORDER BY COD_INTERNO, DTVENC, NOME');
      		DMFINANC.TAlx.SQL.Add(' And (upper(COD_INTERNO) like upper('+#39+EdCod_Interno.Text+'%'+#39+')) ');
      End;
      If TipoCons='OCODIGO'
      Then Begin//ordena pelo valor
      		XViewRef.SQL.Add(' ORDER BY COD_INTERNO, DTVENC, NOME');
      End;
      //Continua sql com os valores para consulta
      If TipoCons='NUMFISCAL'
      Then Begin//filtrar pelo numparc numero da parcela e ordenar
      		XViewRef.SQL.Add(' And (upper(NUMFISC) like upper('+#39+EdNumFiscal.Text+'%'+#39+')) ORDER BY NUMFISC, DTVENC, NOME');

      		DMFINANC.TAlx.SQL.Add(' And (upper(NUMFISC) like upper('+#39+EdNumFiscal.Text+'%'+#39+'))');
      End;
      If TipoCons='ONUMFISCAL'
      Then Begin//ordena pelo valor
      		XViewRef.SQL.Add(' ORDER BY NUMFISC, DTVENC, NOME');
      End;

      If TipoCons='CARTAO'
      Then Begin//filtrar pelo numparc numero da parcela e ordenar
      		XViewRef.SQL.Add(' And NUMCARTAO = ''' + EdHistorico.Text + '''');

      		DMFINANC.TAlx.SQL.Add(' And NUMCARTAO = ''' + EdHistorico.Text + '''');
      End;
   End;


  If TipoCons = 'ORDERCARTAO'
  Then Begin
      XViewRef.SQL.Add(' ORDER BY COBRANCA, DTVENC, NOME');
  End;


   //abre sql com filtro
   XViewRef.SQL.Text;
   XViewRef.Open;

   XSqlFiltro:=XViewRef.SQL.Text;
   //abre sql com totalizadores
   XSQLFILTROSOMA:=DMFINANC.TAlx.SQL.Text;
   DMFINANC.TAlx.Open;
   If not DMFINANC.TAlx.IsEmpty
   Then Begin
   	//Passa Valores para as edits
   	If TCConsultContas.ActiveTab=0 Then
       	EdTotIndividual.ValueNumeric:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;
   	If TCConsultContas.ActiveTab=1 Then
       	EDTotAgrup.ValueNumeric:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;
   	If TCConsultContas.ActiveTab=2 Then
       	EdTotBaixadas.ValueNumeric:=DMFINANC.TAlx.FieldByName('TOTALPG').AsCurrency;
   End
   Else Begin
   	//Passa Valores para as edits
   	If TCConsultContas.ActiveTab=0 Then
       	EdTotIndividual.ValueNumeric:=0;
   	If TCConsultContas.ActiveTab=1 Then
       	EDTotAgrup.ValueNumeric:=0;
   	If TCConsultContas.ActiveTab=2 Then
       	EdTotBaixadas.ValueNumeric:=0;
   End;
End;

//Utilizado para gerar parcelas de acordo com os parametros passados 
Procedure TFPADRAOCONTAS.GeraParcela(NUM: String; DTVENC: String; VALORPROD: Real; VALORSERV: Real; COD_PARENT: Integer; COBRANCA: String; TipoJuros: Integer; DTREF: String; NUMORDEM: Smallint);
Var
	XCOD_Parcela:Integer;
   Data: Integer;
   Mes:String;
   Year, Month, Day:word;
Begin
    If XTipoPR='P'
    Then Begin
	    //Realiza Inserção de Valores
       XCOD_Parcela:=InserReg(DMCONTA.TParcCP, 'PARCELACP', 'COD_PARCELACP');
       DMCONTA.TParcCP.FieldByName('COD_PARCELACP').AsInteger:=XCOD_Parcela;
       DMCONTA.TParcCP.FieldByName('COD_CTAPAGAR').AsInteger:=XCODCTA;
	    DMCONTA.TParcCP.FieldByName('NUMPARC').AsString:=NUM;
	    DMCONTA.TParcCP.FieldByName('DTVENC').AsString:=DTVENC;
       DMCONTA.TParcCP.FieldByName('numfisc').AsString:=edfiscalpagar.Text;
       Data := DayOfWeek(DMCONTA.TParcCP.FieldByName('DTVENC').AsDateTime);{Volta um número inteiro que representa o dia da semana}

       if RGTipo.ItemIndex=0
       then begin
            DMCONTA.TParcCP.FieldByName('TIPO').AsInteger:=1; //NORMAL
       end;
       if RGTipo.ItemIndex=1
       then begin
            DMCONTA.TParcCP.FieldByName('TIPO').AsInteger:=2; //RESERVA
       end;
       if RGTipo.ItemIndex=2
       then begin
            DMCONTA.TParcCP.FieldByName('TIPO').AsInteger:=3; //PROMOÇÃO
       end;
       if RGTipo.ItemIndex=3
       then begin
            DMCONTA.TParcCP.FieldByName('TIPO').AsInteger:=4; //CONDOMINIO
       end;

       If XPREVISAO=True
       Then Begin
           IF XDATAREF <> '' then
               DMCONTA.TParcCP.FieldByName('DTREF').AsString:=XDATAREF
           else
               DMCONTA.TParcCP.FieldByName('DTREF').AsString:=DMCONTA.TCtaP.FieldByName('dtlanc').AsString;
    	 //   DecodeDate(Date(), Year, Month, Day);
         //  If Month=1 Then
	           //	DMCONTA.TParcCP.FieldByName('DTREF').AsString:='15/'+IntToStr(12)+'/'+IntToStr(Year-1)

        //   Else
	           //	DMCONTA.TParcCP.FieldByName('DTREF').AsString:='15/'+IntToStr(Month-1)+'/'+IntToStr(Year);
       End
       Else Begin
       	If XLancAut=True Then
	        	DMCONTA.TParcCP.FieldByName('DTREF').AsString:=XDATAREF
           Else
           	//DJ 03/12/2009: Data de referencia recebe a DBData
	        	DMCONTA.TParcCP.FieldByName('DTREF').AsString:=DBData.Text;
       End;
       If CdDtReferencia.Checked=True Then
           DMCONTA.TParcCP.FieldByName('DTREF').AsString:=DTVENC;

	    DMCONTA.TParcCP.FieldByName('VALOR').Value:=VALORPROD;
	    DMCONTA.TParcCP.FieldByName('COBRANCA').AsString:=COBRANCA;
	    DMCONTA.TParcCP.FieldByName('FECH').AsString:='N';
	    DMCONTA.TParcCP.FieldByName('ESTRU').AsString:='1';
	    DMCONTA.TParcCP.FieldByName('HISTORICO').AsString:=DBHISTORICO.Text;
       //Paulo 01/06/2011: Adiciona valor extenso no banco
       FMenu.Extenso.Numero:=FormatFloat('0.00', DMCONTA.TParcCP.FieldByName('VALOR').AsCurrency);
       DMCONTA.TParcCP.FieldByName('VALEXT').AsString:=FMenu.Extenso.Extenso;

       If XPREVISAO=True Then
    		DMCONTA.TParcCP.FieldByName('PREVISAO').AsString:='1'
       Else
    		DMCONTA.TParcCP.FieldByName('PREVISAO').AsString:='0';

//       DMFinanc.TParcelaCP.FieldByName('COD_COTA').AsInteger:=DMFinanc.TCTAPAGAR.FieldByName('COD_COTAMOEDA').AsInteger;
	    DMCONTA.TParcCP.Post;
	End
   Else Begin
	    //Realiza Inserção de Valores
       XCOD_Parcela:=InserReg(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR');
       DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsInteger:=XCOD_Parcela;
	    DMCONTA.TParcCR.FieldByName('COD_CTARECEBER').AsInteger:=XCODCTA;
	    DMCONTA.TParcCR.FieldByName('NUMPARC').AsString:=NUM;
	    DMCONTA.TParcCR.FieldByName('numfisc').AsString:=edfiscalpagar.Text;
	    DMCONTA.TParcCR.FieldByName('NUMORDEM').AsInteger:=NUMORDEM;
	    DMCONTA.TParcCR.FieldByName('numfisc').AsString:=edfiscalpagar.Text;
	    DMCONTA.TParcCR.FieldByName('DTVENC').AsString:=DTVENC;
       DMCONTA.TParcCR.Post;
       If XLancAut=True
       Then Begin
			DMCONTA.TParcCR.Edit;
	    	DMCONTA.TParcCR.FieldByName('DTREF').AsString:=XDATAREF;
           DMCONTA.TParcCR.Post;
       End
       Else  Begin
       	DMCONTA.TParcCR.edit;
       	DMCONTA.TParcCR.FieldByName('DTREF').AsString:=DBData.Text;
           DMCONTA.TParcCR.Post;
       End;
       DMCONTA.TParcCR.Edit;
       If CdDtReferencia.Checked=True Then
           DMCONTA.TParcCR.FieldByName('DTREF').AsString:=DTVENC;
	    DMCONTA.TParcCR.FieldByName('VALORPROD').Value:=VALORPROD;
	    DMCONTA.TParcCR.FieldByName('VALOR').Value:=VALORPROD+VALORSERV;
	    DMCONTA.TParcCR.FieldByName('VALORSERV').Value:=VALORSERV;
	    DMCONTA.TParcCR.FieldByName('PERVLRSERV').AsCurrency:=(VALORSERV*100)/(VALORPROD+VALORSERV);
	    DMCONTA.TParcCR.FieldByName('COBRANCA').AsString:=COBRANCA;
	    DMCONTA.TParcCR.FieldByName('HISTORICO').AsString:=DBHISTORICO.Text;
       DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger:=RGJuros.ItemIndex;
	    FMenu.Extenso.Numero:=FormatFloat('0.00', DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency);
		DMCONTA.TParcCR.FieldByName('VALEXT').AsString:=FMenu.Extenso.Extenso;
	    DMCONTA.TParcCR.FieldByName('FECH').AsString:='N';
	    DMCONTA.TParcCR.FieldByName('ESTRU').AsString:='1';
       DMCONTA.TParcCR.FieldByName('exporta').AsString := '0';
	    DMCONTA.TParcCR.Post;

   End;
End;


//Seleciona parcelas de acordo com laja caso tipo=0 ou de acordo com view principal tipo=1
Procedure TFPadraoContas.SelectParcela(Tipo:Integer);
Begin
    //funcionameto para contas a pagar
    Try
	   BtnApagar.Enabled:=True;
      If XTipoPR='P'
      Then Begin
        //Seleciona todas as parcelas para loja
        If Tipo=0
        Then Begin
            FiltraTabela(DMCONTA.WParP, 'VWPARCP', 'COD_LOJA', '', ' (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') AND ((FECH<>'+#39+'S'+#39+')  OR (FECH IS NULL)) ORDER BY VWPARCP.DTVENC');
			 //TOTALIZA CONTAS
            DMBANCO.TAlx.Close;
            DMBANCO.TAlx.SQL.Clear;
            DMBANCO.TAlx.SQL.Add('SELECT SUM(VWPARCP.VALOR) AS TOTAL FROM VWPARCP WHERE (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') AND ((FECH<>'+#39+'S'+#39+')  OR (FECH IS NULL))');
			 DMBANCO.TAlx.Open;
            If DMBANCO.TAlx.FieldByName('TOTAL').AsString='' Then
            	EdTotIndividual.ValueNumeric:=0
            Else
            	EdTotIndividual.ValueNumeric:=DMBANCO.TAlx.FieldByName('TOTAL').Value;
        End;
        If Tipo=1
        Then Begin
            //Seleciona todas as parcelas de acordo com a conta escolhida
            If FiltraTabela(DMCONTA.WCtaP, 'VWCTAPAGAR', 'COD_CTAPAGAR', '', ' (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+')')=True Then
	            FiltraTabela(DMCONTA.WParP, 'VWPARCP', 'COD_CTAPAGAR', '', ' (COD_CTAPAGAR = '+#39+DMCONTA.WCtaP.FieldByName('COD_CTAPAGAR').AsString+#39+')  AND ((FECH<>'+#39+'S'+#39+')  OR (FECH IS NULL)) ORDER BY VWPARCP.DTVENC DESCENDING');
			 //TOTALIZA CONTAS
            DMBANCO.TAlx.Close;
            DMBANCO.TAlx.SQL.Clear;
            DMBANCO.TAlx.SQL.Add('SELECT SUM(VWPARCP.VALOR) AS TOTAL FROM VWPARCP WHERE (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') AND  (COD_CTAPAGAR = '+#39+DMCONTA.WCtaP.FieldByName('COD_CTAPAGAR').AsString+#39+')  AND ((FECH<>'+#39+'S'+#39+')  OR (FECH IS NULL)) ');
			 DMBANCO.TAlx.Open;
            If DMBANCO.TAlx.FieldByName('TOTAL').AsString='' Then
            	EDTotAgrup.ValueNumeric:=0
            Else
            	EDTotAgrup.ValueNumeric:=DMBANCO.TAlx.FieldByName('TOTAL').Value;
        End;
        If Tipo=2
        Then Begin
			 //TOTALIZA CONTAS
            DMBANCO.TAlx.Close;
            DMBANCO.TAlx.SQL.Clear;
            DMBANCO.TAlx.SQL.Add('SELECT SUM(VWPARCP.VALOR) AS TOTAL FROM VWPARCP WHERE (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') AND (FECH='+#39+'S'+#39+')');
			 DMBANCO.TAlx.Open;
            If DMBANCO.TAlx.FieldByName('TOTAL').AsString='' Then
            	EdTotBaixadas.ValueNumeric:=0
            Else
            	EdTotBaixadas.ValueNumeric:=DMBANCO.TAlx.FieldByName('TOTAL').Value;

	         //Seleciona todas as parcelas baixadas
            FiltraTabela(DMCONTA.WParP, 'VWPARCP', 'COD_LOJA', '', ' (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') AND (FECH='+#39+'S'+#39+') ORDER BY VWPARCP.NUMPARC');
			 BtnApagar.Enabled:=False;
        End;
        //Seleciona todas as parcelas para loja que sejam de previsão
        If Tipo=3
        Then Begin
            FiltraTabela(DMCONTA.WParP, 'VWPARCP', 'COD_LOJA', '', ' (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') AND (PREVISAO='+#39+'1'+#39+') AND ((FECH<>'+#39+'S'+#39+')  OR (FECH IS NULL)) ORDER BY VWPARCP.NUMPARC');
			 //TOTALIZA CONTAS
            DMBANCO.TAlx.Close;
            DMBANCO.TAlx.SQL.Clear;
            DMBANCO.TAlx.SQL.Add('SELECT SUM(VWPARCP.VALOR) AS TOTAL FROM VWPARCP WHERE (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') AND (PREVISAO='+#39+'1'+#39+')  AND ((FECH<>'+#39+'S'+#39+')  OR (FECH IS NULL))');
			 DMBANCO.TAlx.Open;
            If DMBANCO.TAlx.FieldByName('TOTAL').AsString='' Then
            	EdTotIndividual.ValueNumeric:=0
            Else
            	EdTotIndividual.ValueNumeric:=DMBANCO.TAlx.FieldByName('TOTAL').Value;
        End;
      End
      //funcionameto para contas a receber
      Else Begin
        If Tipo=0
        Then Begin
			 //TOTALIZA CONTAS
            DMBANCO.TAlx.Close;
            DMBANCO.TAlx.SQL.Clear;
            DMBANCO.TAlx.SQL.Add('SELECT SUM(VWPARCR.VALOR) AS TOTAL, SUM(vwparcr.valorpg) AS TOTALPG  FROM VWPARCR WHERE (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') AND ((FECH<>'+#39+'S'+#39+')  OR (FECH IS NULL))');
			 DMBANCO.TAlx.Open;
         	 EdTotIndividual.ValueNumeric:=DMBANCO.TAlx.FieldByName('TOTAL').AsCurrency;
            FiltraTabela(DMCONTA.WParR, 'VWPARCR', 'COD_LOJA', '', ' (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') AND ((FECH<>'+#39+'S'+#39+') OR (FECH IS NULL))');
        End;
        If Tipo=1
        Then Begin
            If FiltraTabela(DMCONTA.WCtaR, 'VWCTARECEBER', 'COD_CTARECEBER', '', ' (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') ORDER BY VWCTARECEBER.DTLANC, VWCTARECEBER.NUMDOC')=True Then
            	FiltraTabela(DMCONTA.WParR, 'VWPARCR', 'COD_CTARECEBER', '', ' (COD_CTARECEBER = '+#39+DMCONTA.WCtaR.FieldByName('COD_CTARECEBER').AsString+#39+')  AND ((FECH<>'+#39+'S'+#39+')  OR (FECH IS NULL)) ORDER BY VWPARCR.DTVENC DESCENDING');
			 //TOTALIZA CONTAS
            DMBANCO.TAlx.Close;
            DMBANCO.TAlx.SQL.Clear;
            DMBANCO.TAlx.SQL.Add('SELECT SUM(VWPARCR.VALOR) AS TOTAL, SUM(vwparcr.valorpg) AS TOTALPG  FROM VWPARCR WHERE (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') AND  (COD_CTARECEBER = '+#39+DMCONTA.WCtaR.FieldByName('COD_CTARECEBER').AsString+#39+')   AND ((FECH<>'+#39+'S'+#39+')  OR (FECH IS NULL)) ');
			 DMBANCO.TAlx.Open;
          	 EDTotAgrup.ValueNumeric:=DMBANCO.TAlx.FieldByName('TOTAL').AsCurrency-DMBANCO.TAlx.FieldByName('TOTALPG').AsCurrency;
        End;
        If Tipo=2
        Then Begin
			 //TOTALIZA CONTAS
            DMBANCO.TAlx.Close;
            DMBANCO.TAlx.SQL.Clear;
            DMBANCO.TAlx.SQL.Add('SELECT SUM(VWPARCR.VALOR) AS TOTAL FROM VWPARCR WHERE (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') AND (FECH='+#39+'S'+#39+') ');
    		 DMBANCO.TAlx.Open;
          	 EdTotBaixadas.ValueNumeric:=DMBANCO.TAlx.FieldByName('TOTAL').AsCurrency;

	        //Seleciona todas as parcelas baixadas
           FiltraTabela(DMCONTA.WParR, 'VWPARCR', 'COD_LOJA', '', ' (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') AND (FECH='+#39+'S'+#39+') ORDER BY VWPARCR.NUMPARC');
			BtnApagar.Enabled:=False;
        End;
      End;
		XSQLFILTROSOMA:=DMBANCO.TAlx.SQL.Text;
      //XSQLFILTROSOMA:=DMFINANC.TAlx.SQL.Text;
    except
    End;
End;

procedure TFPadraoContas.TCConsultContasTabChanged(Sender: TObject);
begin
  inherited;
    PIndividual.Visible:=False;
    PAgrupados.Visible:=False;
    PBaixadas.Visible:=False;
    PFiltrarParcelas.SendToBack;
    PFiltrarParcelas.Visible:=False;
    case TCConsultContas.ActiveTab Of
        0: Begin//INDIVIDUAIS
            PIndividual.Visible:=true;
            BtnFiltrar.Visible := True;
            PIndividual.BringToFront;
            SelectParcela(0);
            //EDLANCAMENTO.SetFocus;
           End;
        1: Begin//AGRUPADOS
            PAgrupados.Visible:=true;
            BtnFiltrar.Visible := False;
            PAgrupados.BringToFront;
            SelectParcela(1);
           End;
        2: Begin//BAIXADOS
            PBaixadas.Visible:=true;
            BtnFiltrar.Visible := True;
            PBaixadas.BringToFront;
            SelectParcela(2);
            EdLancBaixa.SetFocus;
           End;
    End;
end;

procedure TFPadraoContas.EDLANCAMENTOKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13 Then
	   FiltraParcelaEdit('DTLANC');
    If Key=#27 Then
	   FiltraParcelaEdit('ODTLANC');
end;

procedure TFPadraoContas.EdVencimentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13 Then
	   FiltraParcelaEdit('DTVENC');
    If Key=#27 Then
	   FiltraParcelaEdit('ODTVENC');
end;

procedure TFPadraoContas.EDFornecedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13 Then
	   FiltraParcelaEdit('PESSOA');
    If Key=#27 Then
	   FiltraParcelaEdit('OPESSOA');
end;


procedure TFPadraoContas.EDLANCAMENTOKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
{    If Key=VK_Down Then
        XViewRef.Next;
    If Key=VK_Up Then
        XViewRef.Prior;}


end;

procedure TFPadraoContas.BtnNovoClick(Sender: TObject);
Var
	XFlag: Integer;
begin
  inherited;
    PCONSULTA.Visible:=False;
    PCADASTRO.Visible:=TRUE;
    PCADASTRO.BringToFront;
    //prepara painel e codigo do cartão, é importante manter codigo do cartão = -1
    PCartoes.Visible:=False;
    XCod_Cartao:=-1;

    //Limpa as edits que refetenciam o cliente ou fornecedor E OUTROS
    FrmCliFor.EDCodigo.Text:='';
    FrmCliFor.EdDescricao.Text:='';

    FrmConta.EDCodigo.Text:='';
    FrmConta.EdDescricao.Text:='';

    frmFormPag.EDCodigo.Text:='';
    frmFormPag.EdDescricao.Text:='';

    DBHISTORICO.Text:='';

    XCOD_CONTABANCO:=-1;
	 //insere novo registro

    //PROCURA PELA MELHOR CHAVE PRIMARIA
    XFlag:=0;
    If XTipoPR='P' Then
    	XCODCTA:=DMMACS.TCodigo.FieldByName('COD_CTAPAGAR').AsInteger
    Else
    	XCODCTA:=DMMACS.TCodigo.FieldByName('COD_CTARECEBER').AsInteger;

    Try
        While XFlag=0 do
        Begin
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           If XTipoPR='P' Then
               DMMACS.TALX.SQL.Add(' select * from ctapagar where ctapagar.cod_ctapagar=:codigo ')
           Else
               DMMACS.TALX.SQL.Add(' select * from ctareceber where ctareceber.cod_ctareceber=:codigo ');
           DMMACS.TALX.ParamByName('codigo').AsInteger:=XCODCTA;
           DMMACS.TALX.Open;
           If not DMMACS.TALX.IsEmpty
           Then Begin
               XCODCTA:=XCODCTA+1;
           End
           Else Begin
               XFlag:=1;
           End;
        End;

        //INCREMENTA PROXIMA CHAVE PRIMARIA
        If  XTipoPR='P'
        Then Begin
            DMMACS.TCodigo.Edit;
            DMMACS.TCodigo.FieldByName('COD_CTAPAGAR').AsInteger:=XCODCTA+1;
            DMMACS.TCodigo.Post;
            DMMACS.IBTCodigo.CommitRetaining;
        End
        Else Begin
            DMMACS.TCodigo.Edit;
            DMMACS.TCodigo.FieldByName('COD_CTARECEBER').AsInteger:=XCODCTA+1;
            DMMACS.TCodigo.Post;
            DMMACS.IBTCodigo.CommitRetaining;
        End;
    Except
    	MessageDlg('ERRO: 1971'+#13+'Conflito ao gerar próximo codigo do cabeçalho da conta:'+#13+'Para corrigir este erro será necessário efetuar o comando de Stop/Start do Firebird no servidor'+#13+'Por favor, repasse este código de erro ao suporte', mtWarning, [mbOK], 0);
    End;
   If  XTipoPR='R'
   Then Begin
   	XTabela.Insert;
	    XTabela.FieldByName('COD_CTARECEBER').AsInteger:=XCODCTA;
       XTabela.post;
   End
   Else Begin
   	XTabela.Insert;
	    XTabela.FieldByName('COD_CTAPAGAR').AsInteger:=XCODCTA;
       XTabela.post;
	End;
   
    If XTipoPR='P'
    Then Begin
        XTabela.Edit;
	     XTabela.FieldByName('COD_CTAPAGAR').AsInteger:=XCODCTA;
        XTabela.Post;
        FrmCliFor.LTextoBusca.Caption:='Fornecedor:';
        FrmCliFor.Visible:=True;
        FrmCliFor.BringToFront;
        FrmCliFor.Refresh;
        FiltraTabela(DMCONTA.TParcCP, 'PARCELACP', 'COD_CTAPAGAR', DMCONTA.TCtaP.FieldByName('COD_CTAPAGAR').AsString, '');
    End
    Else Begin
        XTabela.Edit;
	     XTabela.FieldByName('COD_CTARECEBER').AsInteger:=XCODCTA;
        XTabela.Post;
        FrmCliFor.LTextoBusca.Caption:='Cliente:';
        FrmCliFor.Visible:=True;
        FrmCliFor.BringToFront;
        FrmCliFor.Refresh;
        FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_CTARECEBER', DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '');
    End;
    Try
        If XLancAut=False Then
        If DMMACS.TLoja.FieldByName('PADMECDOCFIN').AsString='1'
        Then Begin
           XTabela.Edit;
           XTabela.FieldByName('NUMDOC').AsString:=DMMACS.TLoja.FieldByName('PROXDOCPADMEC').AsString;
           XTabela.Post;
           DMMACS.TLoja.Edit;
           DMMACS.TLoja.FieldByName('PROXDOCPADMEC').AsInteger:=DMMACS.TLoja.FieldByName('PROXDOCPADMEC').AsInteger+1;
           DMMACS.TLoja.Post;
        End
        Else Begin
           DBGrid3.Columns.Items[0].Expanded:=False;
           XTabela.Edit;
           XTabela.FieldByName('NUMDOC').AsString:=DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsString;
           XTabela.Post;
           DMMACS.TLoja.Edit;
           DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsInteger:=DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsInteger+1;
           DMMACS.TLoja.Post;
        End;
        DMMACS.Transaction.CommitRetaining;
    Except
    	 MessageDlg('ERRO: 2028'+#13+'Conflito ao gerar próximo Numero de documento do cabeçalho da conta:'+#13+'Por favor, repasse este código de erro ao suporte', mtWarning, [mbOK], 0);
        DMMACS.Transaction.RollbackRetaining;
    End;
    FrmCliFor.BTNOPEN.SetFocus;
    If XLancAut<>True
    Then Begin
       XTabela.Edit;
		XTabela.FieldByName('DTLANC').AsDateTime:=Date();
    	XTabela.Post;
    End;
    DBData.Text:=XTabela.FieldByName('DTLANC').AsString;

    {//Paulo 14/04/2011: Se a cobrança for boleto mostra o campo Nº Boleto
    if(XTabRef.FieldByName('COBRANCA').AsString ='Boleto')then
       DBGrid3.Columns[2].Visible:=True
    else
       DBGrid3.Columns[2].Visible:=False;   }
end;

procedure TFPadraoContas.BTNLOADCLIClick(Sender: TObject);
begin
  inherited;
{    If XTipo='P'
    Then Begin
        If AbrirForm(TFFornecedor, FFornecedor, 1)='Selected'
        Then Begin
            XTabela.Edit;
            XTabela.Post;
			 FiltraTabela(DMFinanc.TCTAPAGAR, 'CTAPAGAR', 'COD_CTAPAGAR', IntToStr(CODCTA));
            If DMFinanc.TabUso(DMFinanc.TCtaPagar)=false Then
                DMFinanc.TCtaPagar.Edit;

            DMFinanc.TCtaPagar.FieldByName('COD_FORNEC').AsString:=DMPESSOA.VWFornecedor.FieldByName('COD_FORNEC').AsString;
            DBCODCLIFOR.DataField:='COD_INTERNO';
            DBDESCCLIFOR.DataField:='FORNECEDOR';
            DBDESCCLIFOR.DataSource:=DMPESSOA.DSVWFornecedor;
            DBCODCLIFOR.DataSource:=DMPESSOA.DSVWFornecedor;
            DMFinanc.TCTAPAGAR.Post;
        End;
    End
    Else Begin
        If AbrirForm(TFCliente, FCliente, 1)='Selected'
        Then Begin
		     Xtabela.Edit;
	         Xtabela.Post;
			 FiltraTabela(DMFinanc.TCtaReceber, 'CTARECEBER', 'COD_CTARECEBER', IntToStr(CODCTA));
            If DMFinanc.TabUso(DMFinanc.TCtaReceber)=false Then
                DMFinanc.TCtaReceber.Edit;

            DMFinanc.TCtaReceber.FieldByName('COD_CLIENTE').AsString:=DMPESSOA.VWCliente.FieldByName('COD_CLIENTE').AsString;
            DBCODCLIFOR.DataField:='COD_INTERNO';
            DBDESCCLIFOR.DataField:='NOME';
            DBDESCCLIFOR.DataSource:=DMPESSOA.DSVWcliente;
            DBCODCLIFOR.DataSource:=DMPESSOA.DSVWcliente;
            DMFinanc.TCtaReceber.Post;
        End;
    End;
    Xtabela.edit;}
end;

procedure TFPadraoContas.BTNAPAGACLIClick(Sender: TObject);
begin
  inherited;
    If XTipoPR='P'
    Then Begin
        DMCONTA.TCtaP.Edit;
        DMCONTA.TCtaP.FieldByName('COD_FORNEC').AsString:='0';
        FrmCliFor.EDCodigo.Text:='';
        FrmCliFor.EdDescricao.Text:='';
    End
    Else Begin
        DMCONTA.TCtaR.Edit;
        DMCONTA.TCtaR.FieldByName('COD_CLIENTE').AsString:='0';
        FrmCliFor.EDCodigo.Text:='';
        FrmCliFor.EdDescricao.Text:='';
    End;
end;

// desabilita os campos para não serem alterados, desde que o usuario nao seja MESTRE
Function TFPadraoContas.DesabilitaCampos(Desabilitar: boolean):integer;
begin
   If Desabilitar = true
   Then Begin
       FrmCliFor.EDCodigo.ReadOnly := True;
       FrmCliFor.BTNOPEN.Enabled:= False;
       FrmConta.EDCodigo.ReadOnly := True;
       FrmConta.BTNOPEN.Enabled := False;
       frmFormPag.EDCodigo.ReadOnly:=True;
       frmFormPag.BTNOPEN.Enabled := False;
       frmFormPag.BTNMINUS.Enabled := False;       
       DBValor.ReadOnly := TRUE;
       DBHISTORICO.ReadOnly := true;
       DBData.ReadOnly := False;
       DBCobranca.Enabled := False; 
   End
   Else Begin
       FrmCliFor.EDCodigo.ReadOnly := False;
       FrmCliFor.BTNOPEN.Enabled:= True;
       FrmConta.EDCodigo.ReadOnly := False;
       FrmConta.BTNOPEN.Enabled := True;
       frmFormPag.EDCodigo.ReadOnly:=False;
       frmFormPag.BTNOPEN.Enabled := True;
       frmFormPag.BTNMINUS.Enabled := True;
       DBValor.ReadOnly := False;
       DBHISTORICO.ReadOnly := False;       
       DBData.ReadOnly := False;
       DBCobranca.Enabled := True;
   End;
end;

procedure TFPadraoContas.FormActivate(Sender: TObject);
begin
  inherited;
  	 If XTipoPR='P' Then
       RGTipo.Visible:=True
    Else
       RGTipo.Visible:=False;
       
    PCADASTRO.Visible := False;
	 PConsultParc.Visible := False;
    PCONSULTA.Visible:=TRUE;
    PCONSULTA.BringToFront;
    TCConsultContas.ActiveTab:=0;
    CdDtReferencia.Checked:=False;
    //Determina se a conta será do tipo de previsao ou naum
    If FMenu.TIPOAUX='PREVISAO' Then
       XPREVISAO:=True
    Else
       XPREVISAO:=False;
    //Verifica lançamento automático
    If XLancAut=True
    Then Begin
    	//aciona novo registro;
       BtnNovo.Click;

       //Lanca valores
		//Lança Cliente ou fornecedor
	    If (XPedido<>'PEDVENDA') AND (XPedido<>'ORDEM')
    	Then Begin
       	//SE COMPRA
           edfiscalpagar.Text:=fmenu.xfiscalcompra;
           //filtra vwfornec para localizar fornbecedor
			If FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', IntToStr(XCod_Pessoa), '')=True
           Then Begin
              	DMCONTA.TCtaP.Edit;
               //INFORMA GERADOR
	            DMCONTA.TCtaP.FieldByName('TIPOGERADOR').AsString:='PEDCOMPRA';
	            DMCONTA.TCtaP.FieldByName('COD_GERADOR').AsInteger:=XCODPEDIDO;
               DMCONTA.TCtaP.Post;
               //link para dbs
            	FrmCliFor.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
            	FrmCliFor.EDCodigo.Text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
	    	End;
    	End
    	Else Begin
           //filtra vwcliente para localizar fornbecedor
			If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCod_Pessoa), '')=True
        	Then Begin
	            //INFORMA GERADOR
               If XGERADOR='P'
               Then Begin//Informações vieram de um pedido de venda
               	DMCONTA.TCtaR.Edit;
              		DMCONTA.TCtaR.FieldByName('TIPOGERADOR').AsString:='PEDVENDA';
                   DMCONTA.TCtaR.FieldByName('COD_VENDEDOR').AsInteger := DMSAIDA.TPedV.FieldByName('COD_VENDEDOR').AsInteger;
                   DMCONTA.TCtaR.Post;
               End;
               If XGERADOR='O'
               Then Begin//Informações vieram de uma ordem
               	DMCONTA.TCtaR.Edit;
              		DMCONTA.TCtaR.FieldByName('TIPOGERADOR').AsString:='ORD';
                   DMCONTA.TCtaR.FieldByName('COD_VENDEDOR').AsInteger := DMSERV.WOrdem.FieldByName('COD_VENDEDOR').AsInteger;
                   DMCONTA.TCtaR.Post;
               End;
               If XGERADOR='PC'
               Then Begin//Informações vieram de um pedido de venda com pgto em caderneta
               	DMCONTA.TCtaR.Edit;
              		DMCONTA.TCtaR.FieldByName('TIPOGERADOR').AsString:='PEDVCAD';
                   DMCONTA.TCtaR.FieldByName('COD_VENDEDOR').AsInteger := DMSAIDA.WPedV.FieldByName('COD_VENDEDOR').AsInteger;
                   DMCONTA.TCtaR.Post;
               End;
               //Paulo 04/05/2011: para fatura de pedido de venda
               If XGERADOR='F'
               Then Begin//Informações vieram de um pedido de venda com pgto em caderneta
               	DMCONTA.TCtaR.Edit;
              		DMCONTA.TCtaR.FieldByName('TIPOGERADOR').AsString:='FATURA';
                   //DMCONTA.TCtaR.FieldByName('COD_VENDEDOR').AsInteger := DMSAIDA.WPedV.FieldByName('COD_VENDEDOR').AsInteger;
                   DMCONTA.TCtaR.Post;
               End;
               //Paulo 04/05/2011: para fatura de pedido de venda
               If XGERADOR='FC'
               Then Begin//Informações vieram de um pedido de venda com pgto em caderneta
               	DMCONTA.TCtaR.Edit;
              		DMCONTA.TCtaR.FieldByName('TIPOGERADOR').AsString:='FATPEDVCAD';
                   //DMCONTA.TCtaR.FieldByName('COD_VENDEDOR').AsInteger := DMSAIDA.WPedV.FieldByName('COD_VENDEDOR').AsInteger;
                   DMCONTA.TCtaR.Post;
               End;
               If XGERADOR='R'
               Then Begin//Informações vieram de um pedido de venda com pgto em caderneta
               	DMCONTA.TCtaR.Edit;
              		DMCONTA.TCtaR.FieldByName('TIPOGERADOR').AsString:='FAT';
                   DMCONTA.TCtaR.Post;
               End;
               DMCONTA.TCtaR.Edit;
              	DMCONTA.TCtaR.FieldByName('COD_GERADOR').AsInteger:=XCODPEDIDO;
               DMCONTA.TCtaR.Post;
               //link para dbs
            	FrmCliFor.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
            	FrmCliFor.EDCodigo.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
        	End;
    	End;
       //Paulo 27/04/2011: Lança tipo gerador para fatura
       If (XPedido = 'FATURA')
    	Then Begin
           DMCONTA.TCtaP.Edit;
           DMCONTA.TCtaP.FieldByName('TIPOGERADOR').AsString:='FATURA';
           DMCONTA.TCtaP.FieldByName('COD_GERADOR').AsInteger:=XCODPEDIDO;
           DMCONTA.TCtaP.Post;
       end;
       // soh libera os campos para alteração se for usuario MESTRE
       If FMenu.LCODUSUARIO.Caption = '111522'
       Then Begin
           // desabilita os campos para não serem alterados, desde que o usuario nao seja MESTRE
           DesabilitaCampos(FALSE);
       End
       Else Begin
           // desabilita os campos para não serem alterados, desde que o usuario nao seja MESTRE
           If DMMACS.TLoja.FieldByName('atividade').AsString = 'DESPACHANTE' then
               DesabilitaCampos(False)
           else
               DesabilitaCampos(TRUE);
       End;
       //lança plano de contas
		If FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCod_Conta), '')=True
      	Then Begin
       	FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		End;

       //lança forma de pagamento
		If FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(XCod_FormPag), '')=True
      	Then Begin
           frmFormPag.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
           frmFormPag.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
		End;

		XTabela.Edit;
       //Lança forma de cobrança
       XTabela.FieldByName('COBRANCA').AsString:=XCobranca;
       //Lança Histórico
       XTabela.FieldByName('HISTORICO').AsString:=XHistorico;

       //Paulo 14/04/2011: Se a cobrança for boleto mostra o campo Nº Boleto
       //if XCobranca ='Boleto'then
          DBGrid3.Columns[1].Visible:=True;
       //else
       //   DBGrid3.Columns[1].Visible:=False;

       //Paulo 13/07/2010: Lança data conforme a config loja, se é pela dtpedido ou se é dt do sistema
       if(DMMACS.TLoja.FieldByName('GERAFINANCDTSIS').AsString = '1')
       then Begin
          XTabela.FieldByName('DTLANC').AsDateTime:=XDATAPED;
          DBData.ReadOnly:=False;
       End
       else Begin
          XTabela.FieldByName('DTLANC').AsDateTime:=Date;
          DBData.ReadOnly:=False;
       End;



       //Lança Nº  do Documento
       XTabela.FieldByName('NUMDOC').AsString:=XDocumento;
       XTabela.Post;
       //lança valor
       DBValor.Text:=FloatToStr(AlxValor);
       DBHISTORICO.Text:=XHistorico;
       DBData.Text:=XTabela.FieldByName('DTLANC').AsString;
       DBCobranca.Text:=XCobranca;

       //Gera Parcelas
       btngerar.Click;

       // - 19/06/2009: VERIFICA SE ESTA MARCADO EM LOJA PARA GERAR PRIMEIRA PARCELA SEM OS VALORES DOS PRODUTOS
       If ((DMMACS.TLoja.FieldByName('GERACTAROUTROS').AsString = '1' ) And (DMFinanc.TFormPag.FieldByName('QuantParcela').AsInteger > 1))
       Then Begin
          If FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'NUMPED', Copy(XDocumento, 0, Length(XDocumento)-1), '')=True
          Then Begin
            If FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString, '')
            Then Begin
              If Mensagem('A T E N Ç Ã O', 'Deseja realmente gerar primeira parcela sem os valores de produtos?' + #13 + 'Valor 1º Parcela: R$ ' + FloatToStr(DMSAIDA.TFiscPV.FieldByName('VLRTOTDOCNF').AsCurrency - DMSAIDA.TFiscPV.FieldByName('VLRTOTPROD').AsCurrency)   , '', 2, 3, False, 'c') = 2
   		        Then Begin
                 Try
                   XTabRef.First;
                   XTabRef.Edit;
                   XTabRef.FieldByName('VALOR').AsCurrency := (DMSAIDA.TFiscPV.FieldByName('VLRTOTDOCNF').AsCurrency - DMSAIDA.TFiscPV.FieldByName('VLRTOTPROD').AsCurrency);
                   XTabRef.Post;
                 Except
                 End;
                   RecalcParc;
              End;
            End;
          End;
       End;
    End
    Else Begin
       DesabilitaCampos(FALSE);  //habilita compoenentes para alteração
    End;

    XNUMCARTAO := '';

    //Edmar - 09/06/2014 - Se estiver lançando uma nova conta, não habilitar os seguinte campos
    //para que não seja possivel modificar os dados do cabeçalho
    if FMenu.xLancConta then
    begin
       DBHISTORICO.Enabled := false;
       DBValor.Enabled := false;
       DBData.Enabled := false;
       DBNumDoc.Enabled := false;
       edfiscalpagar.Enabled := false;
       FrmCliFor.EDCodigo.Enabled := false;
       FrmCliFor.BTNOPEN.Enabled := false;
       FrmConta.EDCodigo.Enabled := false;
       FrmConta.BTNOPEN.Enabled := false;
       DBCobranca.Enabled := false;
	 end;

    // mostrar botao filtrar
    //BtnFiltrar.Visible := True;
     {
    // alinhar edit na direita
    EDDataInicio.BiDiMode := bdRightToLeft;
    EDDataFim.BiDiMode := bdRightToLeft;
    }
    //esconder painel do filtro
    //PFiltrarParcelas.SendToBack;
    //PFiltrarParcelas.Visible:=False;
end;

procedure TFPadraoContas.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin;
end;

procedure TFPadraoContas.btngerarClick(Sender: TObject);
Var
    I, PrimPar, Intervalo, QtdParcela: Integer;
    ValorProd, ValorServ: Real;
    XDataVenc,Vencimento:String;
    Ano, Mes, Dia: Word;
    XtesteMes:Integer;
begin
  inherited;
	 //    btngerar.Enabled:=False;
    //Verifica se existe um fornecedor ou cliente informado
    Try
       StrToDate(DBData.Text);
    Except
    	MessageDlg('Por favor verifique a data', mtWarning, [mbOK], 0);
       DBData.SetFocus;
       Exit;
    End;

    If FrmCliFor.EDCodigo.Text=''
    Then Begin
        If XTipoPR='P' Then
            Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necessário informar o fornecedor para que as contas sejam geradas!', '', 1, 1, False, 'i')
        Else
            Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necessário informar o cliente para que as contas sejam geradas!', '', 1, 1, False, 'i');
        FrmCliFor.BTNOPEN.SetFocus;
        Exit;
    End;

    //Verifica se existe uma forma de cobranca
    If DBCOBRANCA.Text=''
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necessário informar a forma de cobrança!', '', 1, 1, False, 'i');
        DBCOBRANCA.SetFocus;
        Exit;
    End;

    //Verifica se existe uma forma de cobranca
    If DBCOBRANCA.Text=''
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necessário informar a forma de cobrança!', '', 1, 1, False, 'i');
        DBCOBRANCA.SetFocus;
        Exit;
    End;

    //Verifica se existe um Valor
    If DBValor.Text=''
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necessário informar o valor!', '', 1, 1, False, 'i');
        DBValor.SetFocus;
        Exit;
    End;

    //Verifica se existe um conta do plano
    If FrmConta.EDCodigo.Text=''
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necessário informar uma conta!', '', 1, 1, False, 'i');
        FrmConta.BTNOPEN.SetFocus;
        Exit;
    End;

{    //Verifica se existe uma moeda
    If (DBMOEDA.Text='') And (XLancAut=False)
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necessário informar uma moeda com cotação!', '', 1, 1, False, 'i');
        DBMOEDA.SetFocus;
        Exit;
    End;}

{    //Verifica se existe um Histórico
    If DBHISTORICO.Text=''
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necessário informar o histórico para conta!', '', 1, 1, False, 'i');
        DBHISTORICO.SetFocus;
        Exit;
    End;}

    //Verifica se existe uma forma de pagamento
    If frmFormPag.EDCodigo.Text=''
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necessário informar a forma de pagamento para que as parcelas sejam geradas!', '', 1, 1, False, 'i');
        frmFormPag.BTNOPEN.SetFocus;
        Exit;
    End;

    //Paulo 16/02/2012: verifica se deve usar o dia determinado pelo usuário
    if CbDiaMes.Checked=true then
    begin
       If DBData.Text<>'  /  /    ' Then
    	    DecodeDate(StrToDate(DBData.Text), Ano, Mes, Dia)
       Else
    	    DecodeDate(Date(), Ano, Mes, Dia);
       //Edmar - 31/07/2014 - Valida se foi informado o dia
       if (EdDiaMes.Text = '0') or (EdDiaMes.Text = '') then
       begin
          Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necessário informar o dia a ser fixado!', '', 1, 1, False, 'i');
          EdDiaMes.SetFocus;
          Exit;
       end;
       XDataVenc:=EdDiaMes.Text+'/'+IntToStr(Mes)+'/'+IntToStr(Ano);
    end;


    If XTipoPR='P'
    Then Begin
       //caso já existam contas lançadas, apagar todas para relançar
       DMCONTA.TAlx.Close;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add('delete from parcelacp where parcelacp.cod_ctapagar=:CODCTA');
       DMCONTA.TAlx.ParamByName('CODCTA').AsInteger:=XCODCTA;
       DMCONTA.TAlx.ExecSQL;
       DMCONTA.IBT.CommitRetaining;
       FiltraTabela(DMCONTA.TParcCP, 'PARCELACP', 'COD_CTAPAGAR', IntToStr(XCODCTA), '');
    End
    Else Begin
       DMCONTA.TAlx.Close;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add('delete from parcelacr where parcelacr.cod_ctareceber=:CODCTA');
       DMCONTA.TAlx.ParamByName('CODCTA').AsInteger:=XCODCTA;
       DMCONTA.TAlx.ExecSQL;
       DMCONTA.IBT.CommitRetaining;
       FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_CTARECEBER', IntToStr(XCODCTA), '');
    End;

    If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(XCod_FormPag), '')=False Then
       Exit;//se não encontrou a forma de pagamento sai do processo

    //Intervalo para primeira parcela
    PrimPar := DMFINANC.TFormPag.FieldByName('PrimParcela').AsInteger;
    //Intervalo entre as demais parcelas
    Intervalo := DMFinanc.TFormPag.FieldByName('Intervalo').AsInteger;
    //Quantidade de Parcelas a serem Geradas
    QtdParcela := DMFinanc.TFormPag.FieldByName('QuantParcela').AsInteger;


    //Recebe Valor Para Cada Parcela
    If XGERADOR='O'
    Then Begin//caso trabalhando com valores de ordem fazer divisão de produtos e serviços
    	ValorProd:=XVALORPROD/QtdParcela;
    	ValorServ:=XVALORSERV/QtdParcela;
    End
    Else Begin
       ValorProd:=DBValor.ValueNumeric/QtdParcela;
       ValorServ:=0;
    End;
    //Gera Primeira Parcela
    If DMMACS.TLoja.FieldByName('PADMECDOCFIN').AsString='1'
    Then Begin
    	//Sitem para gerar numero de parcela de forma personalizada para determinados clientes
       DecodeDate(Date(), XGeraParcYear, XGeraParcMonth, XParcDay);
       If DMFinanc.TFormPag.FieldByName('QuantParcela').AsInteger=1 Then
       //Número parcelar/ Data de vencimento / Valor Produto / Valor Serviço / Codigo parent (??) / Cobrança / Tipo de juros / Data referencia / Número da ordem
    		GeraParcela(DBNumDoc.Text+'/U-'+IntToStr(XGeraParcYear), DateToStr(StrToDate(DBData.Text)+PrimPar) , ValorProd , ValorServ, 0, DBCOBRANCA.Text, RGJuros.ItemIndex, XDATAREF, 1)
		Else
    		GeraParcela(DBNumDoc.Text+'/'+Chr(65)+'-'+IntToStr(XGeraParcYear), DateToStr(StrToDate(DBData.Text)+PrimPar) , ValorProd , ValorServ, 0, DBCOBRANCA.Text, RGJuros.ItemIndex, XDATAREF, 1);
    End
    Else Begin
    	if CbDiaMes.Checked=true then
       begin
           Mes:=Mes+1;
           If mes=13
           Then Begin
               Mes:=1;
               Ano:=Ano+1;
           End;
           GeraParcela(DBNumDoc.Text+'-'+'1/'+IntToStr(QtdParcela), VerificaParcelaFixa(EdDiaMes.Text,IntToStr(Mes),IntToStr(Ano)) , ValorProd , ValorServ, 0, DBCOBRANCA.Text, RGJuros.ItemIndex, XDATAREF, 1);

       end
       else
       	GeraParcela(DBNumDoc.Text+'-'+'1/'+IntToStr(QtdParcela), DateToStr(StrToDate(DBData.Text)+PrimPar) , ValorProd , ValorServ, 0, DBCOBRANCA.Text, RGJuros.ItemIndex, XDATAREF, 1);
    End;
    if CbDiaMes.Checked=true then
    	Vencimento:=DateToStr(StrToDate(VerificaParcelaFixa(EdDiaMes.Text,IntToStr(Mes),IntToStr(Ano)))+PrimPar)
    else
    	Vencimento:=DateToStr(StrToDate(DBData.Text)+PrimPar);
    //Gera Demais Parcelas
    For I:=2 to QtdParcela do
    Begin
    	if CbDiaMes.Checked=true then
       begin
       	Mes:=Mes+1;
    		Vencimento:=VerificaParcelaFixa(EdDiaMes.Text,IntToStr(Mes),IntToStr(Ano));
           If mes=13
           Then Begin
               Mes:=1;
               Ano:=Ano+1;
           End;
       end
    	else
    		Vencimento:=DateToStr(StrToDate(Vencimento)+intervalo);
       if XPREVISAO = False
       then begin
           If DMMACS.TLoja.FieldByName('PADMECDOCFIN').AsString='1'
           Then Begin
           	GeraParcela(DBNumDoc.Text+'/'+Chr(64+I)+'-'+IntToStr(XGeraParcYear), Vencimento , ValorProd, ValorServ, 0, DBCOBRANCA.Text, RGJuros.ItemIndex, XDATAREF, I);
           End
           Else Begin
           	GeraParcela(DBNumDoc.Text+'-'+IntToStr(I)+'/'+IntToStr(QtdParcela), Vencimento , ValorProd, ValorServ, 0, DBCOBRANCA.Text, RGJuros.ItemIndex, XDATAREF, I);
           End;
       end
       else begin
           XDATAREF:=DateToStr(StrToDate(Vencimento)-intervalo);
           GeraParcela(DBNumDoc.Text+'-'+IntToStr(I)+'/'+IntToStr(QtdParcela), Vencimento , ValorProd, ValorServ, 0, DBCOBRANCA.Text, RGJuros.ItemIndex, XDATAREF, I);
       end;
    End;

end;

procedure TFPadraoContas.BtnGravarClick(Sender: TObject);
Var
    SomaValor: Real;
    ValorTabela:Real;
    XBaixaVista: Boolean;
    XHist: String;
begin
//  inherited;
    ValorTabela:=0;
    
    XTabela.Edit;
    XTabela.FieldByName('Valor').Value:=DBValor.ValueNumeric;
    XTabela.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
    XTabela.FieldByName('COD_PLNCTA').AsInteger:=XCod_Conta;
    XTabela.FieldByName('HISTORICO').AsString:=DBHISTORICO.Text;
    XTabela.FieldByName('DTLANC').AsString:=DBData.Text;
    {If XTipoPR='R' then
	    XTabela.FieldByName('TIPOGERADOR').AsString:= 'FATCR';}

    //ABRE PAINEL DE CARTÃO
    If ((DBCobranca.Text='C - Cartão') or (DBCobranca.Text='D - Cartão')) and (XCod_Cartao=-1)
    Then Begin
    	//Foi selecionado o pagamento cartão e não temos um cartão selecionado
       DMFINANC.TCartao.Close;
       DMFINANC.TCartao.SQL.Clear;
       If DBCobranca.Text='C - Cartão' Then
 			DMFINANC.TCartao.SQL.Add(' Select * from cartao where cartao.parcini>-1 order by descricao ');
       If DBCobranca.Text='D - Cartão' Then
 			DMFINANC.TCartao.SQL.Add(' Select * from cartao where cartao.parcini=-1 order by descricao ');
       DMFINANC.TCartao.Open;
       DBCartoes.DataSource:=DMFINANC.DCartao;
       PCartoes.Visible:=True;
       PCartoes.BringToFront;
       DBCartoes.SetFocus;
       Exit;
    End;

    If XTipoPR='R'
    Then Begin
    	XTabela.FieldByName('COD_PLNCTASERV').AsInteger:=XCod_ContaServ;
    End;
    XTabela.FieldByName('COD_FORMPAG').AsInteger:=XCod_FormPag;
    If XTabela.FieldByName('Valor').AsString<>'' Then
        ValorTabela:=StrToFloat(TiraPonto(DBValor.Text)); //StrToFloat(FormatFloat('#,##0.00',  StrToFloat(TiraPonto(DBValor.Text))));

    //soma os valores da parcela para verificar igualdade com o digitado
    SomaValor:=0;
    XTabRef.First;
    WHile Not XTabRef.Eof do
    Begin
        If XTabRef.FieldByName('VALOR').AsString='' Then
            SomaValor:=SomaValor+0
        Else
            SomaValor:=SomaValor+StrToFloat(TiraPonto(XTabRef.FieldByName('VALOR').AsString));
        If XTabRef.FieldByName('DTVENC').AsString=''
        Then Begin
            Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necessário que todas as datas de vencimento das parcelas sejam informadas!', '', 1, 1, False, 'i');
            Exit;
        End;
        If (XTabRef.FieldByName('COBRANCA').AsString<>'Banco')  And  (XTabRef.FieldByName('COBRANCA').AsString<>'Pix')  And  (XTabRef.FieldByName('COBRANCA').AsString<>'Carteira') And (XTabRef.FieldByName('COBRANCA').AsString<>'Cheque') And (XTabRef.FieldByName('COBRANCA').AsString<>'Cartão') And (XTabRef.FieldByName('COBRANCA').AsString<>'Boleto')  And (XTabRef.FieldByName('COBRANCA').AsString<>'C - Cartão')  And (XTabRef.FieldByName('COBRANCA').AsString<>'D - Cartão')
        Then Begin
            Mensagem('INFORMAÇÃO AO USUÁRIO', 'Foram encontradas formas de cobrança informadas incorretamente entre as parcelas. Para corrigir, dê um duplo click em cobrança. Ao aparecer uma flecha apontando para baixo, você pode selecionar a forma de pagamento.', '', 1, 1, False, 'i');
            Exit;
        End;
        //armazena valor por extenso
  		 Try
        	If XTipoPR='R'
           Then Begin
  				FMenu.Extenso.Numero:=FormatFloat('0.00', DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency);
				DMCONTA.TParcCR.Edit;
				DMCONTA.TParcCR.FieldByName('VALEXT').AsString:=FMenu.Extenso.Extenso;
               If FMenu.LABCAIXA.Caption<>'ABCAIXA'
               Then Begin
               	Try
                       StrToInt(FMenu.LABCAIXA.Caption);
               		DMCONTA.TParcCR.FieldByName('COD_ABCAIXA').AsString := FMenu.LABCAIXA.Caption;//Edmar - 09/04/2014 - Salva o codigo ABCAIXA
                   Except
						DMCONTA.TParcCR.FieldByName('COD_ABCAIXA').AsInteger := -1;
                   End;
               End;
				DMCONTA.TParcCR.Post;
				DMCONTA.TParcCR.ApplyUpdates;
               DMCONTA.IBT.CommitRetaining;
           End;
   	 Except
   	 End;
        XTabRef.Next;
    End;
    XTabRef.First;

    //Se os Valores bateram em igualdade
    If FloatToStr(SomaValor)=FloatToStr(VALORTABELA)
    Then Begin
        //Confirma e fecha operação
        IF XTipoPR='P'
        THEN bEGIN
        	DMCONTA.TCtaP.FieldByName('COD_FORNEC').AsInteger:=XCod_Pessoa;
           //PERCORRE LANÇAMENTOS PARA VERIFICAR CHEQUES
           If XCOD_CONTABANCO=-1
           Then Begin//este controle permite que o código abaixo seja executado apenas uma vez
    			XTabRef.First;
    			WHile Not XTabRef.Eof do
   			Begin
					If (XTabRef.FieldByName('COBRANCA').AsString='Cheque')
   				Then Begin//exites cheques e deve ser pedido de qual cta corrente o cheque irá sair
                       FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', '', '', '');
      					PBanco.Enabled:=True;
      					PBanco.Visible:=TRUE;
      					PBanco.BringToFront;
      					DBGCTA.SetFocus;
                   	Exit;
   				end;
               	XTabRef.Next;
          		End;
           End;
    		XTabRef.First;
    		WHile Not XTabRef.Eof do
   		Begin
				If XTabRef.FieldByName('COBRANCA').AsString='Cheque'
               Then Begin//deve lançar em controle de cheques
					If LancChSai(XCod_Conta, 'Ctas. Pagar '+XTabRef.FieldByName('NUMPARC').AsString+' - For. '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, XTabRef.FieldByName('DTVENC').AsDateTime, XTabRef.FieldByName('VALOR').AsCurrency, XCOD_CONTABANCO, 'CTAPCH', XTabRef.FieldByName('COD_PARCELACP').AsString,DMPESSOA.WFornecedor.FieldByName('NOME').AsString)=False
   				Then Begin //Se houve falha
            			Mensagem('INFORMAÇÃO AO USUÁRIO', 'Não foi possivel lançar os cheques!', '', 1, 1, False, 'i');
            			Exit;
                   End
                   Else Begin
                       If XLibera = true
                       Then Begin
                           XTabRef.Edit;
                           XTabRef.FieldByName('FECH').AsString := 'S';
                           XTabRef.Post;
                       End
                       Else Begin
                           XTabRef.Edit;
                           XTabRef.FieldByName('FECH').AsString := 'N';
                           XTabRef.Post;
                       End;
                   End;
               End;

               //se o pagamento for cartão
               If XTabRef.FieldByName('COBRANCA').AsString='Cartão'
               Then Begin
                   // valor unitario de cada parcela gerada
                   XValorTotal := XTabela.FieldByName('VALOR').AsCurrency / DMFinanc.TFormPag.FieldByName('QUANTPARCELA').AsInteger;

                   // LANCAMENTO DOS REGISTROS DE MOVIMENTAÇÃO BANCARIA REFERENTE AO PAGAMENTO EM CARTÃO
                   //LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCod_Conta,'Cta. Pagar '+XTabRef.FieldByName('NUMPARC').AsString+' - Cli. '+ DMPESSOA.WCliente.FieldByName('NOME').AsString, XValorTotal, 'CTRCARTAO',XTabRef.FieldByName('COD_PARCELACR').AsInteger, 'ENTRADA',StrToInt(FMenu.LCODUSUARIO.Caption), 'PEDVENDA', 'N', DMCONTA.TParcCP.FieldByName('DTVENC').AsString ,'',DateToStr(Date()),'0',DateToStr(Date()));
                   LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCod_Conta,'Ctas. Pagar '+XTabRef.FieldByName('NUMPARC').AsString + ' - For. '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, XValorTotal, 'CTPCARTAO',XTabRef.FieldByName('COD_PARCELACP').AsInteger, 'SAIDA',StrToInt(FMenu.LCODUSUARIO.Caption), 'PEDCOMPRA', 'N', DMCONTA.TParcCP.FieldByName('DTVENC').AsString ,'',DateToStr(Date()),'0',DateToStr(Date()));
               End;

               XTabRef.Next;
           End;
        END
        ELSE BEGIN
        	DMCONTA.TCtaR.FieldByName('COD_CLIENTE').AsInteger:=XCod_Pessoa;

    		XTabRef.First;
    		WHile Not XTabRef.Eof do
   		Begin
				If XTabRef.FieldByName('COBRANCA').AsString='Cheque'
               Then Begin//deve lançar em controle de cheques
  					If LancChEnt(XCod_Conta, XCod_ContaServ, 'Ctas. Receber '+XTabRef.FieldByName('NUMPARC').AsString+' - Cli. '+ DMPESSOA.WCliente.FieldByName('NOME').AsString, XTabRef.FieldByName('DTVENC').AsDateTime, '', XTabRef.FieldByName('VALOR').AsCurrency-XTabRef.FieldByName('VALORSERV').AsCurrency, XTabRef.FieldByName('VALORSERV').AsCurrency, '', '', 0, '', '', 'CTARCH',  XTabRef.FieldByName('COD_PARCELACR').AsString)=False
 					Then Begin ////informa que a atualização do financeiro foi efetivada
            			Mensagem('INFORMAÇÃO AO USUÁRIO', 'Não foi possivel lançar os cheques!', '', 1, 1, False, 'i');
            			Exit;
                   End;
               End;

               //se o pagamento for cartão
               If (XTabRef.FieldByName('COBRANCA').AsString='Cartão')
               Then Begin
                   // valor unitario de cada parcela gerada
                   XValorTotal := XTabela.FieldByName('VALOR').AsCurrency / DMFinanc.TFormPag.FieldByName('QUANTPARCELA').AsInteger;

                   // LANCAMENTO DOS REGISTROS DE MOVIMENTAÇÃO BANCARIA REFERENTE AO PAGAMENTO EM CARTÃO
                   LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCod_Conta,'Ctas. Receber '+XTabRef.FieldByName('NUMPARC').AsString + ' - Nº Cartão: ' + XNUMCARTAO + ' - Cli. '+ DMPESSOA.WCliente.FieldByName('NOME').AsString, XValorTotal, 'CTRCARTAO',XTabRef.FieldByName('COD_PARCELACR').AsInteger, 'ENTRADA',StrToInt(FMenu.LCODUSUARIO.Caption), 'PEDVENDA', 'N', XTabRef.FieldByName('DTVENC').AsString ,'',DateToStr(Date()),'0',DateToStr(Date()));
               End;
               // - 18/05/2009: e em banco
                If (XTabRef.FieldByName('COBRANCA').AsString='Banco')
               Then Begin
                   // valor unitario de cada parcela gerada
                  // XValorTotal := XTabela.FieldByName('VALOR').AsCurrency / DMFinanc.TFormPag.FieldByName('QUANTPARCELA').AsInteger;

                   // LANCAMENTO DOS REGISTROS DE MOVIMENTAÇÃO BANCARIA REFERENTE AO PAGAMENTO EM CARTÃO
                  // LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCod_Conta,'Ctas. Receber '+XTabRef.FieldByName('NUMPARC').AsString+' - Cli. '+ DMPESSOA.WCliente.FieldByName('NOME').AsString, XValorTotal, 'CTRBANCO',XTabRef.FieldByName('COD_PARCELACR').AsInteger, 'ENTRADA',StrToInt(FMenu.LCODUSUARIO.Caption), 'PEDVENDA', 'N', XTabRef.FieldByName('DTVENC').AsString ,'',DateToStr(Date()),'0',DateToStr(Date()));
               End;

               XTabRef.RecordCount;
				XTabRef.Next;
           End;
        END;
		 Try
	        XTabela.Post;
           XTabRef.Edit;
           XTabRef.Post;

        	DMCONTA.IBT.CommitRetaining;
			DMBANCO.IBT.CommitRetaining;//caso tenha sido feito lançamentos em cheque este é comitado
	        FMenu.LancAutConta:=True;
        Except
	     	FMenu.LancAutConta:=False;
	     End;

	     //Se a conta esta sendo lançada automáticamente deve -se fechar o form
	     If XLancAut=True
        Then Begin
           //XLancAut:=False;
	     	Close;
        End
        Else Begin
        	PCONSULTA.Visible:=true;
        	PCADASTRO.Visible:=False;
        	PCONSULTA.BringToFront;
        	TCConsultContas.ActiveTab:=0;
        End;

    	 //VERIFICA SE O SISTEMA DEVE MOVIMENTAR PARCELAS `A VISTA
        If DMMACS.TLoja.FieldByName('MOVPARCAVISTA').AsString='1'
        Then Begin
        	//Movimenta parcelas para Ctas a Pagar e Receber
        	If XTipoPR='P'
           Then Begin
	   			DMFinanc.TAlx.Close;
	   			DMFinanc.TAlx.SQL.Clear;
	   			DMFinanc.TAlx.SQL.Add(' SELECT PARCELACP.*, CTAPAGAR.*, VWFORNEC.NOME FROM PARCELACP ');
	   			DMFinanc.TAlx.SQL.Add(' LEFT JOIN CTAPAGAR ON PARCELACP.COD_CTAPAGAR=CTAPAGAR.COD_CTAPAGAR ');
	   			DMFinanc.TAlx.SQL.Add(' LEFT JOIN VWFORNEC ON CTAPAGAR.COD_FORNEC = VWFORNEC.COD_FORNEC ');
	   			DMFinanc.TAlx.SQL.Add(' WHERE (CTAPAGAR.COD_CTAPAGAR = :CODCTAPAGAR) AND (PARCELACP.DTVENC = :DTVENC) ');
		   		DMFinanc.TAlx.ParamByName('CODCTAPAGAR').AsInteger:=xCODCTA;
		   		DMFinanc.TALX.ParamByName('DTVENC').AsDate:=Date();
               DMFINANC.TAlx.Open;
               If Not DMFINANC.TAlx.IsEmpty
               Then Begin
                   DMFINANC.TAlx.First;
                   While not DMFINANC.TAlx.Eof do
                   Begin
                       If Mensagem('Confirmação', 'A parcela de R$ '+FormatFloat('0.00', DMFINANC.TAlx.FieldByName('VALOR').AsCurrency)+ ' com vencimento em '+DMFINANC.TAlx.FieldByName('DTVENC').AsString+' esta vencida. Deseja baixar?', '', 2, 3, False, 'c')=2
                       Then Begin
                           If DMFINANC.TAlx.FieldByNAme('COBRANCA').AsString='Carteira'
                           Then Begin
                               if DMFinanc.TALX.FieldByName('VALOR').AsCurrency > 0 then
                               begin
                                   FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMFINANC.TAlx.FieldByName('cod_fornec').AsString, '');
                                   If LanCaixa(-1, DateToStr(Date()), DMFinanc.TALX.FieldByName('COD_PLNCTA').AsInteger, 'Bx. Cta Pag.-'+DMFINANC.TAlx.FIELDBYNAME('NUMPARC').AsString + '-'+DateToStr(Date()) + '-'+DMFINANC.TAlx.FIELDBYNAME('NOME').AsString, DMFinanc.TALX.FieldByName('VALOR').AsCurrency, 'CTAP', DMFinanc.TALX.FieldByName('COD_PARCELACP').AsInteger, 'CARTEIRA', 'S', DMFINANC.TAlx.FIELDBYNAME('NUMPARC').AsString, DMFinanc.TALX.FieldByName('DTREF').AsDateTime, '1')=False
                                   Then Begin
                                       Mensagem('INFORMAÇÃO AO USUÁRIO', 'Existe uma parcela desta conta qua deve ser movimentada manualmente. Verifique!', '', 1, 1, False, 'i')
                                   End
                                   Else Begin
                                       If FiltraTabela(DMCONTA.TParcCP, 'PARCELACP', 'COD_PARCELACP', DMFINANC.TAlx.FieldbyName('COD_PARCELACP').AsString, '')=True
                                       Then Begin
                                           DMCONTA.TParcCP.edit;
                                           //                Dmfinanc.TParcelaCP.FieldByName('COD_COTA').Value:=Dmfinanc.TAlxMoeda.FieldByName('COD_COTA').Value;
                                           DMCONTA.TParcCP.FieldByName('DTDEBITO').ASSTRING:=DateToStr(Date());
                                           DMCONTA.TParcCP.FieldByName('COBRANCA').AsString:='Carteira';
                                           DMCONTA.TParcCP.FieldByName('VALORPG').AsCurrency:=DMCONTA.TParcCP.FieldByName('VALOR').AsCurrency;
                                           DMCONTA.TParcCP.FieldByName('FECH').AsString:='S';
                                           DMCONTA.TParcCP.Post;
                                           DMCONTA.TParcCP.ApplyUpdates;
                                           MDO.Transac.CommitRetaining;
                                           DMCONTA.IBT.CommitRetaining;
                                           DMFINANC.Transaction.CommitRetaining;
                                       End
                                       Else Begin
                                           Mensagem('INFORMAÇÃO AO USUÁRIO', 'O sistema não pode movimentar uma parcela, esta deve ser movimentada manualmente. Verifique!', '', 1, 1, False, 'i');
                                           DMCONTA.IBT.RollbackRetaining;
                                           MDO.Transac.RollbackRetaining;
                                           DMFINANC.Transaction.RollbackRetaining;
                                       End;
                                   end;
                               end;
                           End
                           Else Begin
                               Mensagem('INFORMAÇÃO AO USUÁRIO', 'Existe uma parcela desta conta que deve ser movimentada manualmente como forma de pagamento em cheque. Verifique!', '', 1, 1, False, 'i');
                           End;
                       End;
                       DMFINANC.TAlx.Next;
                   End;
				End;
           End
           Else Begin
	   			DMFinanc.TAlx.Close;
	   			DMFinanc.TAlx.SQL.Clear;
	   			DMFinanc.TAlx.SQL.Add('SELECT * FROM parcelacr LEFT join ctareceber ');
      			DMFinanc.TAlx.SQL.Add('ON parcelacr.cod_ctareceber=ctareceber.cod_ctareceber ');
		   		DMFinanc.TAlx.SQL.Add('Where ctareceber.cod_ctareceber=:CODCTARECEBER ');
		   		DMFinanc.TAlx.SQL.Add(' And (parcelacr.dtvenc <= :DTVENC) AND (PARCELACR.FECH = :FECH)');
		   		DMFinanc.TAlx.ParamByName('CODCTARECEBER').AsInteger:=xCODCTA;
		   		DMFinanc.TALX.ParamByName('DTVENC').AsDate:=Date();
               DMFinanc.TALX.ParamByName('FECH').AsString:='N';
               DMFINANC.TAlx.Open;
               If Not DMFINANC.TAlx.IsEmpty
               Then Begin
                   DMFINANC.TAlx.First;
                   While not DMFINANC.TAlx.Eof do
                   Begin
                       If Mensagem('Confirmação', 'A parcela de R$ '+FormatFloat('0.00', DMFINANC.TAlx.FieldByName('VALOR').AsCurrency)+ ' com vencimento em '+DMFINANC.TAlx.FieldByName('DTVENC').AsString+' esta vencida. Deseja baixar?', '', 2, 3, False, 'c')=2
                       Then Begin
                           If DMFINANC.TAlx.FieldByNAme('COBRANCA').AsString='Carteira'
                           Then Begin
                               //Paulo 11/05/2011: Para inserir o a placa do veiculo no histórico
                               if(DMMACS.TLoja.FieldByName('PLANOCTAPROD').AsString = '1')then
                               begin
                                   //Paulo 11/05/2011:Filtra produto
                                   FiltraTabela(DMSAIDA.TItemPV,'ITENSPEDVEN','COD_PEDVEN',IntToStr(DMCONTA.TCtaR.FieldByName('COD_GERADOR').AsInteger),'');
                                   FiltraTabela(DMESTOQUE.WSimilar,'VWSIMILAR','COD_ESTOQUE',IntToStr(DMSAIDA.TItemPV.FieldByName('COD_ESTOQUE').AsInteger),'');
                                   XHist:='C.R.-'+DMFINANC.TAlx.FIELDBYNAME('NUMPARC').AsString+' - Placa '+DMESTOQUE.WSimilar.FieldByName('CONTRINT').AsString+'  Cli. '+FrmCliFor.EdDescricao.Text;
                               end else
                               begin
                                  XHist:='Bx. Cta Rec.(Prod.)-'+DMFINANC.TAlx.FIELDBYNAME('NUMPARC').AsString;
                               end;
                               FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', DMFinanc.TALX.FieldByName('COD_CTARECEBER').AsString, '');
                               If DMFINANC.TAlx.FieldByName('VALORSERV').AsCurrency<>0
                               Then Begin
                                   //NESTE CASO EXISTE VALOR PARA SERVICO E ELE DEVE SER LANÇADO EM CONTA SEPARADA DE PRODUTO
                                   FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMFINANC.TAlx.FieldByName('COD_CLIENTE').AsString, '');
                                   //LANÇA PARA SERVIÇOS
                                   If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.FieldByName('PLNCTASERV').AsInteger, 'Bx. Cta Rec.(Serv.)-'+DMFINANC.TAlx.FIELDBYNAME('NUMPARC').AsString + '-'+DateToStr(Date())+ '-'+DMPESSOA.WCliente.FIELDBYNAME('NOME').AsString, DMFinanc.TALX.FieldByName('VALORSERV').AsCurrency, 'CTAR', DMFinanc.TALX.FieldByName('COD_PARCELACR').AsInteger, 'CARTEIRA', 'E', DMFINANC.TAlx.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TCtaR.FieldByName('DTLANC').AsDateTime, '1')=False
                                   Then Begin
                                       Mensagem('INFORMAÇÃO AO USUÁRIO', 'Existe uma parcela desta conta qua deve ser movimentada manualmente. Verifique!', '', 1, 1, False, 'i');
                                       Exit;
                                   End;


                                   // LANCA PARA PRODUTOS
                                   If LanCaixa(-1, DateToStr(Date()), DMFinanc.TALX.FieldByName('COD_PLNCTA').AsInteger, 'Bx. Cta Rec.(Prod.)-'+DMFINANC.TAlx.FIELDBYNAME('NUMPARC').AsString + '-'+DateToStr(Date())+' - '+DMPESSOA.WCliente.FIELDBYNAME('NOME').AsString, DMFINANC.TAlx.FieldByName('VALOR').AsCurrency-DMFinanc.TALX.FieldByName('VALORSERV').AsCurrency, 'CTAR', DMFinanc.TALX.FieldByName('COD_PARCELACR').AsInteger, 'CARTEIRA', 'E', DMFINANC.TAlx.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TCtaR.FieldByName('DTLANC').AsDateTime, '1')=False
                                   Then Begin
                                       Mensagem('INFORMAÇÃO AO USUÁRIO', 'Existe uma parcela desta conta qua deve ser movimentada manualmente. Verifique!', '', 1, 1, False, 'i')
                                   End
                                   Else Begin
                                       If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMFINANC.TAlx.FieldbyName('COD_PARCELACR').AsString, '')=True
                                       Then Begin
                                           DMCONTA.TParcCR.edit;
                                           //                Dmfinanc.TParcelaCP.FieldByName('COD_COTA').Value:=Dmfinanc.TAlxMoeda.FieldByName('COD_COTA').Value;
                                           DMCONTA.TParcCR.FieldByName('DTDEBITO').ASSTRING:=DateToStr(Date());
                                           DMCONTA.TParcCR.FieldByName('COBRANCA').AsString:='Carteira';
                                           DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency:=DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency;
                                           DMCONTA.TParcCR.FieldByName('FECH').AsString:='S';
                                           DMCONTA.TParcCR.Post;
                                           DMCONTA.TParcCR.ApplyUpdates;
                                           DMCONTA.IBT.CommitRetaining;
                                           MDO.Transac.CommitRetaining;
                                           DMFINANC.Transaction.CommitRetaining;
                                       End
                                       Else Begin
                                           Mensagem('INFORMAÇÃO AO USUÁRIO', 'O sistema não pode movimentar uma parcela, esta deve ser movimentada manualmente. Verifique!', '', 1, 1, False, 'i');
                                           DMCONTA.IBT.RollbackRetaining;
                                           MDO.Transac.RollbackRetaining;
                                           DMFINANC.Transaction.RollbackRetaining;
                                       End;
                                   end;
                               End
                               Else Begin
                                   // LANCA PARA PRODUTOS
                                   FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMFINANC.TAlx.FieldByName('COD_CLIENTE').AsString, '');
                                   If LanCaixa(-1, DateToStr(Date()), DMFinanc.TALX.FieldByName('COD_PLNCTA').AsInteger, XHist + ' Em '+DateToStr(Date())+' - '+DMPESSOA.WCliente.FIELDBYNAME('NOME').AsString, DMFinanc.TALX.FieldByName('VALOR').AsCurrency, 'CTAR', DMFinanc.TALX.FieldByName('COD_PARCELACR').AsInteger, 'CARTEIRA', 'E', DMFINANC.TAlx.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TCtaR.FieldByName('DTLANC').AsDateTime, '1')=False
                                   Then Begin
                                       Mensagem('INFORMAÇÃO AO USUÁRIO', 'Existe uma parcela desta conta qua deve ser movimentada manualmente. Verifique!', '', 1, 1, False, 'i')
                                   End
                                   Else Begin
                                       If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMFINANC.TAlx.FieldbyName('COD_PARCELACR').AsString, '')=True
                                       Then Begin
                                           DMCONTA.TParcCR.edit;
                                           //                Dmfinanc.TParcelaCP.FieldByName('COD_COTA').Value:=Dmfinanc.TAlxMoeda.FieldByName('COD_COTA').Value;
                                           DMCONTA.TParcCR.FieldByName('DTDEBITO').ASSTRING:=DateToStr(Date());
                                           DMCONTA.TParcCR.FieldByName('COBRANCA').AsString:='Carteira';
                                           DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency:=DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency;
                                           DMCONTA.TParcCR.FieldByName('FECH').AsString:='S';
                                           DMCONTA.TParcCR.Post;
                                           DMCONTA.TParcCR.ApplyUpdates;
                                           MDO.Transac.CommitRetaining;
                                           DMCONTA.IBT.CommitRetaining;
                                           DMFINANC.Transaction.CommitRetaining;
                                       End
                                       Else Begin
                                           Mensagem('INFORMAÇÃO AO USUÁRIO', 'O sistema não pode movimentar uma parcela, esta deve ser movimentada manualmente. Verifique!', '', 1, 1, False, 'i');
                                           DMCONTA.IBT.RollbackRetaining;
                                           MDO.Transac.RollbackRetaining;
                                           DMFINANC.Transaction.RollbackRetaining;
                                       End;
                                   end;
                               End;
                               //abre gaveta
                               ecfOpenGaveta;
                           End
                           Else Begin
                               Mensagem('INFORMAÇÃO AO USUÁRIO', 'Existe uma parcela desta conta que deve ser movimentada manualmente como forma de pagamento em cheque. Verifique!', '', 1, 1, False, 'i');
                           End;
                       End;
                       DMFINANC.TAlx.Next;
                   End;
				End;
           End;
        End;
    End
    Else Begin
        XTabRef.Edit;
        XTabRef.FieldByName('VALOR').Value:=XTabRef.FieldByName('VALOR').Value-(SomaValor-XTabela.FieldByName('VALOR').Value);
        XTabRef.Post;

        Mensagem('INFORMAÇÃO AO USUÁRIO', 'O valor das parcelas foram alterados para se adequarem ao valor total digitado. Ao confirmar os valores pressione novamente o botão gravar para confirmar.', '', 1, 1, False, 'i');
        BtnGravar.SetFocus;
	     ximp:=0;
        exit;
    End;
    ximp:=0;
    If XTipoPR='R'
    Then Begin//Imprime duplicatas caso seja contas a receber
    	//FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
		FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   	If DMMacs.TLoja.FieldByName('IMPDUPAUT').AsString='1'
   	Then Begin//verifica se a duplicata deve ser impressa automaticamente
           XIMP:=1;
   	End;
    End;

    // seleciona o numero de parcelas que tem o pgto em cheque
    DMCONTA.TAlx.Close;
    DMCONTA.TAlx.SQL.Clear;
    DMCONTA.TAlx.SQL.Add(' select count (parcelacp.cod_ctapagar) as CONTADOR from parcelacp ');
    DMCONTA.TAlx.SQL.Add(' where parcelacp.cod_ctapagar = :codigo ');
    DMCONTA.TAlx.SQL.Add(' and parcelacp.cobranca = ' + #39 + 'Cheque' + #39);
    DMCONTA.TAlx.ParamByName('codigo').AsInteger := xCODCTA;
    DMCONTA.TAlx.open;

    // se o numero de parcelas com pagamento em cheuqe for maior que 1, então entra na condição
    If DMCONTA.TAlx.FieldByName('CONTADOR').AsInteger > 0
    Then Begin
       If Mensagem('   Confirmação do usuário   ', 'Deseja imprimir os respectivos cheques ?', '', 2, 3, False, 'c')=2
       Then Begin
           // SELECIONA TODOS AS PARCELAS GERADAS COM O MESMO CODIGO DE COD_CTAPAGAR
           DMESTOQUE.TRel.Close;
           DMESTOQUE.TRel.SQL.Clear;
           DMESTOQUE.TRel.SQL.Add(' select vwparcp.valor, vwparcp.nome as destinatario from vwparcp where vwparcp.cod_ctapagar = :codigo ');
           DMESTOQUE.TRel.SQL.Add(' and vwparcp.cobranca = ' + #39 + 'Cheque' + #39);
           DMESTOQUE.TRel.ParamByName('codigo').AsInteger := xCODCTA;
           DMESTOQUE.TRel.Open;

           Imprimir_Cheque(DMCONTA.TAlx.FieldByName('CONTADOR').AsInteger);
       End;

    End;

    DMMACS.TLoja.Edit;
  	 DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsString:=INCSTRNUM(1, DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsString);
  	 DMMACS.TLoja.Post;
  	 DMMACS.Transaction.CommitRetaining;

    //Caso Cartão, atualiza os numeros
    If ((DBCobranca.Text='C - Cartão') or (DBCobranca.Text='D - Cartão'))
    Then Begin
        Try
           //Atualiza todas as parcelas com o codigo do cartão em codigo cota
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           If XTipoPR='R' Then
               MDO.Query.SQL.Add(' update parcelacr set parcelacr.cod_cota=:Codigo where parcelacr.cod_ctareceber=:CtaReceber ')
           Else
               MDO.Query.SQL.Add(' update parcelacr set parcelacp.cod_cota=:Codigo where parcelacp.cod_ctapagar=:CtaReceber ');
           MDO.Query.ParamByName('Codigo').AsInteger:=XCod_Cartao;
           MDO.Query.ParamByName('CtaReceber').AsInteger:=XCODCTA;
           MDO.Query.ExecSQL;

           MDO.Transac.CommitRetaining;
    	Except
       	MessageDlg('Não é possível gravar como Cartão. Por favor, tente mais tarde!', mtWarning, [mbOK], 0);
         	XCod_Cartao:=-1;
    	End;
    End;
    XCod_Cartao:=-1;
end;

procedure TFPadraoContas.BtnCancelarClick(Sender: TObject);
begin
   FMenu.LancAutConta:=False;
   inherited;
   XTabela.CancelUpdates;
   XTabRef.CancelUpdates;
   DMFinanc.Transaction.CommitRetaining;
   PCADASTRO.Visible:=FALSE;
   PCONSULTA.Visible:=True;
   PCONSULTA.BringToFront;
   TCConsultContas.ActiveTab:=0;

   If XLancAut = true
   Then Begin
       // - 06/05/2009: mesmo cancelando os updates e efetuando roolback as contas não estão sendo removidas
       // - 06/05/2009: realizar procedimento para passar removendo as contas e as parcelas para garantir que não estejam no banco após click em cancelar
       Try
         If XTipoPR='P'
          Then Begin
               // - 06/05/2009: remove parcelas da conta a pagar
             DMCONTA.TAlx.Close;
             DMCONTA.TAlx.SQL.Clear;
             DMCONTA.TAlx.SQL.Add('delete from parcelacp where parcelacp.cod_ctapagar=:CODCTA');
             DMCONTA.TAlx.ParamByName('CODCTA').AsInteger:=XCODCTA;
             DMCONTA.TAlx.ExecSQL;
             // - 06/05/2009: remove conta a pagar
             DMCONTA.TAlx.Close;
             DMCONTA.TAlx.SQL.Clear;
             DMCONTA.TAlx.SQL.Add('delete from ctapagar where ctapagar.cod_ctapagar=:CODCTA');
             DMCONTA.TAlx.ParamByName('CODCTA').AsInteger:=XCODCTA;
             DMCONTA.TAlx.ExecSQL;

             DMCONTA.IBT.CommitRetaining;
          End
          Else Begin
            // - 06/05/2009: remove parcelas da conta
             DMCONTA.TAlx.Close;
             DMCONTA.TAlx.SQL.Clear;
             DMCONTA.TAlx.SQL.Add('delete from parcelacr where parcelacr.cod_ctareceber=:CODCTA');
             DMCONTA.TAlx.ParamByName('CODCTA').AsInteger := XCODCTA;
             DMCONTA.TAlx.ExecSQL;
             // - 06/05/2009: remove conta a pagar
             DMCONTA.TAlx.Close;
             DMCONTA.TAlx.SQL.Clear;
             DMCONTA.TAlx.SQL.Add('delete from ctareceber where ctareceber.cod_ctareceber=:CODCTA');
             DMCONTA.TAlx.ParamByName('CODCTA').AsInteger := XCODCTA;
             DMCONTA.TAlx.ExecSQL;

             DMCONTA.IBT.CommitRetaining;
          End;
       Except
             DMCONTA.IBT.RollbackRetaining;
             DMFinanc.Transaction.RollbackRetaining;
       End;

       //XLancAut := false;
       close;
   End;

end;

procedure TFPadraoContas.RGVisualizarClick(Sender: TObject);
begin
  inherited;
    TCConsultContas.ActiveTab:=TCConsultContas.ActiveTab;
end;

procedure TFPadraoContas.EDLANCPRINKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key=VK_Down Then
        XView.Next;
    If Key=VK_Up Then
        XView.Prior;
end;

procedure TFPadraoContas.DBFORMPAGKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    //ignora digitação
    Key:=#0;
end;

procedure TFPadraoContas.DBGMestreKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If (Key=VK_UP) or (Key=VK_DOWN)
   Then Begin
		If XTipoPR='P'
       Then Begin
       	If DMCONTA.WCtaP.FieldByName('COD_CTAPAGAR').AsString<>''
           Then Begin
		   		FiltraTabela(DMCONTA.WParP, 'VWPARCP', 'COD_CTAPAGAR', '', ' (COD_CTAPAGAR = '+#39+DMCONTA.WCtaP.FieldByName('COD_CTAPAGAR').AsString+#39+')   AND ((FECH<>'+#39+'S'+#39+')  OR (FECH IS NULL)) ORDER BY VWPARCP.DTVENC');
	  	   		//TOTALIZA CONTAS
	      		DMFINANC.TAlx.Close;
	      		DMFINANC.TAlx.SQL.Clear;
	      		DMFINANC.TAlx.SQL.Add('SELECT SUM(VWPARCP.VALOR) AS TOTAL FROM VWPARCP WHERE (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') AND  (COD_CTAPAGAR = '+#39+DMCONTA.WCtaP.FieldByName('COD_CTAPAGAR').AsString+#39+')  AND ((FECH<>'+#39+'S'+#39+')  OR (FECH IS NULL)) ORDER BY VWPARCP.NUMPARC');
		   		DMFINANC.TAlx.Open;
	      		If DMFINANC.TAlx.FieldByName('TOTAL').AsString='' Then
	      			EDTotAgrup.ValueNumeric:=0
	      		Else
	          		EDTotAgrup.ValueNumeric:=DMFINANC.TAlx.FieldByName('TOTAL').Value;
           End;
       End
   	Else Begin
       	If DMCONTA.WCtaR.FieldByName('COD_CTARECEBER').AsString<>''
           Then Begin
		   		FiltraTabela(DMCONTA.WParR, 'VWPARCR', 'COD_CTARECEBER', '', ' (COD_CTARECEBER = '+#39+DMCONTA.WCtaR.FieldByName('COD_CTARECEBER').AsString+#39+')   AND ((FECH<>'+#39+'S'+#39+')  OR (FECH IS NULL)) ORDER BY VWPARCR.DTVENC');
	  	   		//TOTALIZA CONTAS
	      		DMFINANC.TAlx.Close;
	      		DMFINANC.TAlx.SQL.Clear;
	      		DMFINANC.TAlx.SQL.Add('SELECT SUM(VWPARCR.VALOR) AS TOTAL, SUM(VWPARCR.VALORPG) AS TOTALPG FROM VWPARCR WHERE (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') AND  (COD_CTARECEBER = '+#39+DMCONTA.WCtaR.FieldByName('COD_CTARECEBER').AsString+#39+')  AND ((FECH<>'+#39+'S'+#39+')  OR (FECH IS NULL)) ORDER BY VWPARCR.NUMPARC');
		   		DMFINANC.TAlx.Open;
          		EDTotAgrup.ValueNumeric:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency-DMFINANC.TAlx.FieldByName('TOTALPG').AsCurrency;
       	End;
       End;
   End;
end;

procedure TFPadraoContas.BtnBaixarClick(Sender: TObject);
begin
  inherited;
  	 //Cartões de Crédito e Débito devem se feitas pela opção de fatura de cartões
    If (XViewRef.FieldByName('COBRANCA').AsString= 'C - Cartão') or (XViewRef.FieldByName('COBRANCA').AsString= 'D - Cartão')
    Then Begin
       Mensagem('   A T E N Ç Ã O   ','Lançamentos em Cartão devem ser baixados através da opção de faturas de cartões.','',1,1,false,'A');
       Exit;
    End;
    //VERIFICA SE O CAIXA ESTA ABERTO
    If DMCAIXA.VerifAbCaixa=False
    Then Begin
        Mensagem('A T E N Ç Ã O ', 'O Caixa escolhido não se encontra aberto. Para realizar a maioria das operações financeiras é obrigado que o caixa esteja aberto!', '', 1,1, false, 'a');
        Exit;
    End;

    If XViewRef.FieldByName('COBRANCA').AsString='Cheque'
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'Esta é uma conta que gerou uma movimentação de cheque. Você deve baixá-la em controle de cheques!', '', 1, 1, False, 'i');
        Exit;
    End;

    // se for contas a pagar e a baixa esta sendo feito em cartão, ehe exibida a seguinte msg
    //Paulo 09/09/2011: Se estiver configurado para o cartão ir direto no caixa
    {
   if DMMACS.TLoja.FieldByName('MOVCAIXACARTAO').AsString <> '1' Then
   begin
      If XViewRef.FieldByName('COBRANCA').AsString= 'Cartão'
      Then Begin
         Mensagem('   A T E N Ç Ã O   ','Esta é uma conta que gerou uma movimentação em cartão. Você deve baixa-la em movimentação bancária.','',1,1,false,'A');
         Exit;
      End;
   end;
   }
   //abre sql com totalizadores
   //XSQLFILTROSOMA:=DMFINANC.TAlx.SQL.Text;
   
    If XViewRef.FieldByName('FECH').AsString='S'
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'Esta conta já foi baixada!', '', 1, 1, False, 'i');
    End
    Else Begin
         If Not XViewRef.IsEmpty
         Then Begin
              If XTipoPR='P'
              Then Begin
                   XCOD_CONTABAIXA:=DMCONTA.WParP.FIELDBYNAME('COD_PARCELACP').AsInteger;
                   AbrirForm(TFBaixaContaPagar, FBaixaContaPagar, 0);
              End
              Else Begin
                   XCOD_CONTABAIXA:=DMCONTA.WParR.FIELDBYNAME('COD_PARCELACR').AsInteger;
                   AbrirForm(TFBaixaContaReceber, FBaixaContaReceber, 0);
                   If FMenu.TIPOAUX='IMPRECIBO'
                   Then Begin
                       ImpRecibo(XCOD_CONTABAIXA);
                   End;
              End;
         End;
    End;
    //atualiza views
    try
       if XViewRef <> nil then
       begin
           XViewRef.Close;
           XViewRef.Open;
       end;

       if XView <> nil then
       begin
           XView.Close;
           XView.Open;
       end;
    except
    end;
    
    //Atualiza views com somatório
    Try
    	If (XSQLTABELA <> '') AND (XSQLFILTROSOMA <> '')
       Then Begin
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add(XSQLFILTROSOMA);
           DMFINANC.TAlx.Open;
           EdTotIndividual.ValueNumeric:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;
       End;
    Except
    End;
    Refresh;

    //DBGridCadastroPadrao.Refresh;
    //XViewRef.Close;
    //XViewRef.Open;

   // if (EdVencimento.Text <> '  /  /    ') and (edvencimento2.Text <> '  /  /    ')then
   //     FiltraParcelaEdit('DTVENC')
   // else
   // 	FiltraParcelaEdit('');
    	     
end;

procedure TFPadraoContas.DBFORMPAGKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key=vk_Insert Then // Chama o formulario forma de pagamento
        AbrirForm(TFFORMPAG, FFORMPAG, 0);
end;

procedure TFPadraoContas.DBCOBRANCAKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    Key:=#0;
end;

procedure TFPadraoContas.DBValorExit(Sender: TObject);
begin
  inherited;
    If DBValor.ValueNumeric<=0
    Then begin
        Mensagem('OPÇÃO BLOQUEADA', 'O valor lançado não pode ser inferior a 0!', '', 1, 1, False, 'a');
        DBValor.SetFocus;
        Exit;
    End;
  end;

procedure TFPadraoContas.dbplnctaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key=VK_Insert Then
//        AbrirForm(TFPLANOCONTAS, FPLANOCONTAS, 0);
end;
procedure TFPadraoContas.DBFORMPAGExit(Sender: TObject);
begin
  inherited;
    If frmFormPag.EdDescricao.Text= 'À VISTA'
    Then Begin
        Mensagem('ATENÇÃO', 'A Forma de pagamento selecionada "Á Vista" não pode ser utilizada para gerar parcelas!', '', 1, 1, False, 'a');
        frmFormPag.BTNOPEN.SetFocus;
    End;
end;

procedure TFPadraoContas.FormCreate(Sender: TObject);
begin
  //inherited;
  //SysLocale.MiddleEast := true;
    //XLancAut:=False;
end;

procedure TFPadraoContas.EdNumParcKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13 Then
	   FiltraParcelaEdit('NUMPARC');
    If Key=#27 Then
	   FiltraParcelaEdit('ONUMPARC');
end;

procedure TFPadraoContas.EdNumpracBKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
      EdNumParc.Text:=EdNumpracB.Text;
	   FiltraParcelaEdit('NUMPARC');
    End;
    If Key=#27 Then
	   FiltraParcelaEdit('ONUMPARC');

end;

procedure TFPadraoContas.EdLancBaixaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
      EDLANCAMENTO.Text:=EdLancBaixa.Text;
	   FiltraParcelaEdit('DTLANC');
    End;
    If Key=#27 Then
	   FiltraParcelaEdit('ODTLANC');
end;

procedure TFPadraoContas.EdVencBaixaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
      EdVencimento.Text:=EdVencBaixa.Text;
	   FiltraParcelaEdit('DTVENC');
    End;
    If Key=#27 Then
	   FiltraParcelaEdit('ODTVENC');
end;

procedure TFPadraoContas.EdFornecBaixaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
      EDFornecedor.Text:=EdFornecBaixa.Text;
	   FiltraParcelaEdit('PESSOA');
    End;
    If Key=#27 Then
	   FiltraParcelaEdit('OPESSOA');
end;

procedure TFPadraoContas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  //inicia controle para teclas de atalho
  If PConsulta.Visible=true
  Then Begin
  	If PIndividual.Visible=True
   Then Begin
  	 //controle para pular de registro next e prior
    If XTab=True
    Then Begin
        case key of
            Vk_down: XTabela.Next;
            Vk_UP: XTabela.Prior;
        End;
    End
    Else Begin
        case key of
            Vk_down: XView.Next;
            Vk_UP: XView.Prior;
        End;
    End;
   End;
    //controle de botões
    //botão novo
    If Key=vk_f4 Then
    	 BtnNovo.Click;
    //botão apagar
    If Key=vk_f8 Then
    	 BtnApagar.Click;
    //botão consultar
    If Key=vk_f6 Then
    	 BtnConsultar.Click;
    //botão selecionar
    If Key=vk_f9 Then
	    If BtnBaixar.Visible=True Then//verifica se o botão esta visivel
   	 	 BtnBaixar.Click;
    //FOCUS EM LOCALIZAR
    If Key=vk_f2 Then
    	 EdNumpracB.SetFocus;

  End
  Else Begin
    //controle de botões
    //botão gravar
    If Key=vk_f5 Then
    	 BtnGravar.Click;
    //botão cancelar
    If Key=vk_f7 Then
    	 BtnCancelar.Click;
  End;
end;

procedure TFPadraoContas.DBGMestreCellClick(Column: TColumn);
begin
  inherited;
	If XTipoPR='P'
   Then Begin
   	If DMCONTA.WCtaP.FieldByName('COD_CTAPAGAR').AsString<>''
       Then Begin
	   		FiltraTabela(DMCONTA.WParP, 'VWPARCP', 'COD_CTAPAGAR', '', ' (COD_CTAPAGAR = '+#39+DMCONTA.WCtaP.FieldByName('COD_CTAPAGAR').AsString+#39+')   AND ((FECH<>'+#39+'S'+#39+')  OR (FECH IS NULL)) ORDER BY VWPARCP.DTVENC');
  	   		//TOTALIZA CONTAS
      		DMFINANC.TAlx.Close;
      		DMFINANC.TAlx.SQL.Clear;
      		DMFINANC.TAlx.SQL.Add('SELECT SUM(VWPARCP.VALOR) AS TOTAL FROM VWPARCP WHERE (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') AND  (COD_CTAPAGAR = '+#39+DMCONTA.WCtaP.FieldByName('COD_CTAPAGAR').AsString+#39+')  AND ((FECH<>'+#39+'S'+#39+')  OR (FECH IS NULL)) ');
	   		DMFINANC.TAlx.Open;
      		If DMFINANC.TAlx.FieldByName('TOTAL').AsString='' Then
      			EDTotAgrup.ValueNumeric:=0
      		Else
          		EDTotAgrup.ValueNumeric:=DMFINANC.TAlx.FieldByName('TOTAL').Value;
       End;

   End
   Else Begin
   	If DMCONTA.WCtaR.FieldByName('COD_CTARECEBER').AsString<>''
       Then Begin
	   		FiltraTabela(DMCONTA.WParR, 'VWPARCR', 'COD_CTARECEBER', '', ' (COD_CTARECEBER = '+#39+DMCONTA.WCtaR.FieldByName('COD_CTARECEBER').AsString+#39+')   AND ((FECH<>'+#39+'S'+#39+')  OR (FECH IS NULL)) ORDER BY VWPARCR.DTVENC');
  	   		//TOTALIZA CONTAS
      		DMFINANC.TAlx.Close;
      		DMFINANC.TAlx.SQL.Clear;
      		DMFINANC.TAlx.SQL.Add('SELECT SUM(VWPARCR.VALOR) AS TOTAL FROM VWPARCR WHERE (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') AND  (COD_CTARECEBER = '+#39+DMCONTA.WCtaR.FieldByName('COD_CTARECEBER').AsString+#39+')  AND ((FECH<>'+#39+'S'+#39+')  OR (FECH IS NULL)) ');
	   		DMFINANC.TAlx.Open;
      		If DMFINANC.TAlx.FieldByName('TOTAL').AsString='' Then
      			EDTotAgrup.ValueNumeric:=0
      		Else
          		EDTotAgrup.ValueNumeric:=DMFINANC.TAlx.FieldByName('TOTAL').Value;
       End;
   End;
end;

procedure TFPadraoContas.FrmCliForBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCod_Pessoa:=0;
   FrmCliFor.EDCodigo.Text:='';
   FrmCliFor.EdDescricao.Text:='';
end;

procedure TFPadraoContas.FrmCliForBTNOPENClick(Sender: TObject);
begin
  inherited;
  	iF XTipoPR<>'P'
   Then Begin
		//LIBERA TODAS OS ESTADOS PARA CONSUTA
		filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '');

   	If AbrirForm(TFCliente, FCliente, 1)='Selected'
   	Then Begin
       	XCod_Pessoa:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
        	FrmCliFor.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
        	FrmCliFor.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
   	End;
   End
   Else Begin
		//LIBERA TODAS OS ESTADOS PARA CONSUTA
		filtraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', '');

   	If AbrirForm(TFFornecedor, FFornecedor, 1)='Selected'
   	Then Begin
       	XCod_Pessoa:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
        	FrmCliFor.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
        	FrmCliFor.EDCodigo.text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
   	End;
   End;
   FrmCliFor.LTextoBusca.Visible:=True;
   FrmConta.LTextoBusca.Visible:=True;
   frmFormPag.LTextoBusca.Visible:=True; 
	FrmCliFor.Refresh;
   FrmConta.Refresh;
   frmFormPag.Refresh;  
end;

procedure TFPadraoContas.FrmCliForEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If XTipoPR='P'
       Then Begin
	   		If FrmCliFor.EDCodigo.Text<>''
	        Then Begin
		       If FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_INTERNO', FrmCliFor.EDCodigo.Text, '') = True
		       Then Begin //Slecionou o registro procurado
		       		XCod_Pessoa:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
		           	FrmCliFor.EDCodigo.text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
		           	FrmCliFor.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
	           End
	           Else Begin
                   XCod_Pessoa:=0;
		           	FrmCliFor.EDCodigo.Text:='';
		           	FrmCliFor.EdDescricao.Text:='';
	           End;
	        End
	        Else Begin
               XCod_Pessoa:=0;
	          	FrmCliFor.EDCodigo.Text:='';
	          	FrmCliFor.EdDescricao.Text:='';
	        End;
	    End
       Else Begin
	   		If FrmCliFor.EDCodigo.Text<>''
	        Then Begin
		       If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', FrmCliFor.EDCodigo.Text, '') = True
		       Then Begin //Slecionou o registro procurado
		       		XCod_Pessoa:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
		           	FrmCliFor.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
		           	FrmCliFor.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
	           End
	           Else Begin
                   XCod_Pessoa:=0;
		           	FrmCliFor.EDCodigo.Text:='';
		           	FrmCliFor.EdDescricao.Text:='';
	           End;
	        End
	        Else Begin
               XCod_Pessoa:=0;
	          	FrmCliFor.EDCodigo.Text:='';
	          	FrmCliFor.EdDescricao.Text:='';
	        End;
       End;
   End;
end;

procedure TFPadraoContas.FrmBusca1BTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCod_Conta:=0;
   FrmConta.EDCodigo.Text:='';
   FrmConta.EdDescricao.Text:='';
end;

procedure TFPadraoContas.FrmContaBTNOPENClick(Sender: TObject);
Var
	Oper: Char;
begin
  inherited;
   Oper:=' ';
   //verifica o tipo do operador para selecionar contas
   If XTipoPR='R'
   Then Begin
       Oper:='C';
       // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
       XTIPO_CONTA := 'C';
   End;
   If XTipoPR='P'
   Then Begin
       Oper:='D';
       // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
       XTIPO_CONTA := 'D';
   End;
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XCod_Conta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
   FrmCliFor.LTextoBusca.Visible:=True;
   FrmConta.LTextoBusca.Visible:=True;
   frmFormPag.LTextoBusca.Visible:=True; 
	FrmCliFor.Refresh;
   FrmConta.Refresh;
   frmFormPag.Refresh;
end;

procedure TFPadraoContas.FrmContaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
Var
	Oper:Char;
begin
  inherited;
	If Key = #13
   Then Begin
   	Oper:=' ';
   	//verifica o tipo do operador para selecionar contas
   	If XTipoPR='R' Then
       	Oper:='C';
   	If XTipoPR='P' Then
       	Oper:='D';
 		If FrmConta.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+FrmConta.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XCod_Conta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XCod_Conta:=0;
		      	FrmConta.EdDescricao.Text:='';
		      	FrmConta.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XCod_Conta:=0;
	      	FrmConta.EdDescricao.Text:='';
	      	FrmConta.EDCodigo.text:='';
       End;
   End;
end;
procedure TFPadraoContas.frmFormPagBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCod_FormPag:=0;
   frmFormPag.EDCodigo.Text:='';
   frmFormPag.EdDescricao.Text:='';
end;

procedure TFPadraoContas.frmFormPagBTNOPENClick(Sender: TObject);
begin
  inherited;
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FILIAL', '', ' (COD_LOJA = '+FMenu.LCODEMPRESA.Caption+') AND (DESCRICAO<>'+#39+'À VISTA'+#39+') ORDER BY DESCRICAO');
   If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
      	XCod_FormPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
      	frmFormPag.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
      	frmFormPag.EDCodigo.text:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
   End;
   FrmCliFor.LTextoBusca.Visible:=True;
   FrmConta.LTextoBusca.Visible:=True;
   frmFormPag.LTextoBusca.Visible:=True;
	FrmCliFor.Refresh;
   FrmConta.Refresh;
   frmFormPag.Refresh;
   RGJuros.SetFocus;

end;

procedure TFPadraoContas.frmFormPagEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
		If frmFormPag.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_LOJA', '', ' (COD_LOJA = '+FMenu.LCODLOJA.Caption+') AND (COD_FORMPAG='+#39+frmFormPag.EDCodigo.Text+#39+ ') ')=True
			Then Begin
		      	XCod_FormPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
		      	frmFormPag.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
		      	frmFormPag.EDCodigo.text:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
	        End
	        Else Begin
		      	XCod_FormPag:=0;
		      	frmFormPag.EdDescricao.Text:='';
		      	frmFormPag.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XCod_FormPag:=0;
	      	frmFormPag.EdDescricao.Text:='';
	      	frmFormPag.EDCodigo.text:='';
       End;
   End;
end;

// apaga cheque apos o usuario apagar a parcela o cheque tambem eh deletado
Function TFPadraoContas.ApagaCheque(XTipo, Cod_Parcela: string):boolean;
begin
   If XTipo = 'P'
   Then Begin
       // buscando registro na tabela movbanco
       If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + Cod_Parcela + #39 + ') and (tipogerador = ' + #39 + 'CTAPCH' + #39 + ')')=true
       Then Begin
           DMBANCO.TMovBanco.Delete;
           DMBANCO.TMovBanco.ApplyUpdates;
           DMBANCO.IBT.CommitRetaining;
       End;
   End
   Else Begin
       // busca o registro movbanco
       If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBACO','','(COD_GERADOR = ' + #39 + Cod_Parcela + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39 + ')')=TRUE
       Then Begin
           If FiltraTabela(DMBANCO.TChequeRec,'CHEQUEREC','COD_MOVBANCO',DMBANCO.TMovBanco.FieldByname('COD_MOVBANCO').AsString,'')=TRUE
           Then Begin

               // buscando o lancaixa
               If FiltraTabela(DMCAIXA.TLanCaixa,'LANCAIXA','COD_LANCAIXA','','(COD_GERADOR = ' + #39 + DMBANCO.TChequeRec.FieldByname('COD_CHEQUEREC').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'LCHR' + #39 + ')')=TRUE
               Then Begin
                   // pagando o registro de lancaixa
                   DMCAIXA.TLanCaixa.Delete;
                   DMCAIXA.TLanCaixa.ApplyUpdates;
                   DMCAIXA.IBT.CommitRetaining;
               End;

               // apagando registro de chequerec
               DMBANCO.TChequeRec.Delete;
               DMBANCO.TChequeRec.ApplyUpdates;
           End;

           // apagando registro de movbanco
           DMBANCO.TMovBanco.Delete;
           DMBANCO.TMovBanco.ApplyUpdates;
           DMBANCO.IBT.CommitRetaining;
       End;
   End;
end;

// apaga movimento em cartao apos usuario deletar parcela a pagar
Function TFPadraoContas.ApagaCartao(XTipo, Cod_Parcela: string):boolean;
begin
   If XTipo = 'P'
   Then Begin
       // buscando registro na tabela movbanco
       If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + Cod_Parcela + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTPCARTAO' + #39 + ')')=TRUE
       Then Begin
           DMBANCO.TMovBanco.Delete;
           DMBANCO.TMovBanco.ApplyUpdates;
           DMBANCO.IBT.CommitRetaining;
       End;
   End
   Else Begin
       // tenta localizar o registro movbanco
       If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COBRANCA = ' + #39 + 'PEDVENDA' + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTRCARTAO' + #39 + ') AND (COD_GERADOR = ' + #39 + Cod_Parcela + #39 + ')')= TRUE
       Then Begin
           DMBANCO.TMovBanco.Delete;
           DMBANCO.TMovBanco.ApplyUpdates;
           DMBANCO.IBT.CommitRetaining;
       End;
   End;
end;

procedure TFPadraoContas.BtnApagarClick(Sender: TObject);
Var
	XSqlAuxTabela: String;
begin
  inherited;
  { If ControlAccess('ALTEXC_CR', 'M')=False
   Then Begin
   	MessageDlg('O Usuário não tem permissão para excluir contas.', mtWarning, [mbOK], 0);
  		Exit;
   End;  }

  	If XTipoPR='P' Then
       XSqlAuxTabela:='CTAPAGAR'
   Else
       XSqlAuxTabela:='CTARECEBER';

	If TCConsultContas.ActiveTab=2 Then
   	Exit;//não pode apagar contas em quanto estiver visualizando as contas baixadas  
   If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente apagar a parcela Nº'+XViewRef.FieldByName('NUMPARC').AsString+'?', '', 2, 3, False, 'c')=2
   Then Begin
   	//Filtra a tabela de contas a pagar/receber a fim de encontrar o registro mestre da parcela selecionada a apagar
       If FiltraTabela(XTabela, XSqlAuxTabela, XPK, '', XPK+' = '+#39+XViewRef.FieldByName(XPK).AsString+#39)
       Then Begin
       	If XTipoPR='P'
           Then Begin
       		If FiltraTabela(DMCONTA.TParcCP, 'PARCELACP', 'COD_PARCELACP', '', ' ('+XPK+'='+#39+XViewRef.FieldByName(XPK).AsString+#39+') AND (NUMPARC='+#39+XViewRef.FieldByName('NUMPARC').AsString+#39+')')
               Then Begin
		            XTabela.Edit;
             	    XTabela.FieldByName('VALOR').Value:=XTabela.FieldByName('VALOR').Value-XTabRef.FieldByName('VALOR').Value;
		            XTabela.Post;

                   // se o pagamento for em cheque
                   If DMCONTA.TParcCP.FieldByName('COBRANCA').AsString = 'Cheque'
                   Then Begin
                       // apaga cheque apos o usuario apagar a parcela o cheque tambem eh deletado
                       ApagaCheque('P', DMCONTA.TParcCP.FieldByName('COD_PARCELACP').AsString);
                   End;

                   // se o pagamento for em cartão
                   If DMCONTA.TParcCP.FieldByName('COBRANCA').AsString = 'Cartão'
                   Then Begin
                       // apaga movimento em cartao apos usuario deletar parcela a pagar
                       ApagaCartao('P', DMCONTA.TParcCP.FieldByName('COD_PARCELACP').AsString);
                   End;

					DMCONTA.TParcCP.Delete;
               End;
           End                              
           Else Begin
       		If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', '', ' ('+XPK+'='+#39+XViewRef.FieldByName(XPK).AsString+#39+') AND (NUMPARC='+#39+XViewRef.FieldByName('NUMPARC').AsString+#39+')')
               Then Begin
                   // EH REGISTRADO A AÇÃO DO USUARIO - APAGAR CONTA A RACEBER
                   Registra('PARC. RECEBER','APAGAR/CANCELAR',DateToStr(Date()),'Nº ' + DMCONTA.WParR.FieldByName('NUMPARC').AsString + ' - Cli. ' + DMCONTA.WParR.FieldByName('NOME').AsString ,'Valor: ' + DMCONTA.WParR.FieldByName('VALOR').AsString);

		            XTabela.Edit;
             	    XTabela.FieldByName('VALOR').Value:=XTabela.FieldByName('VALOR').Value-XTabRef.FieldByName('VALOR').Value;
		            XTabela.Post;

                   // se o pagamento for em cheque
                   If DMCONTA.TParcCR.FieldByName('COBRANCA').AsString = 'Cheque'
                   Then Begin
                       // apaga cheque apos o usuario apagar a parcela o cheque tambem eh deletado
                       ApagaCheque('R',DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString);
                   End;

                   // se o pagamento for a cartao
                   If DMCONTA.TParcCR.FieldByName('COBRANCA').AsString = 'Cartão'
                   Then Begin
                       // apaga movimento em cartao apos usuario deletar parcela a pagar
                       ApagaCartao('R',DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString);
                   End;

					DMCONTA.TParcCR.Delete;
               End;
           End;
           XTabela.ApplyUpdates;
           XTabRef.ApplyUpdates;
           Try
               DMCONTA.IBT.CommitRetaining;
           Except
               DMCONTA.IBT.RollbackRetaining;
           End;
           TCConsultContas.OnTabChanged(SENDER);
       End;
   End;
end;

procedure TFPadraoContas.BitBtn2Click(Sender: TObject);
begin
  inherited;
   XTabela.Cancel;
   XTabela.CancelUpdates;
   PConsultParc.Visible:=False;
   PCONSULTA.Visible:=True;
   PCONSULTA.BringToFront;
end;

procedure TFPadraoContas.BitBtn1Click(Sender: TObject);
begin
  inherited;
  	Try
       DBColorComboBox1.Text;
  		XTabRef.Edit;
		If XTipoPR='R'
       Then Begin
  		    FMenu.Extenso.Numero:=FormatFloat('0.00', XTabRef.FieldByName('VALOR').AsCurrency);
		    XTabRef.FieldByName('VALEXT').AsString:=FMenu.Extenso.Extenso;
    		XTabRef.FieldByName('APLICJUR').AsInteger:=RGJuros2.ItemIndex;
           DMMACS.TLoja.Edit;
			DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsString:=INCSTRNUM(1, DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsString);
           DMMACS.TLoja.Post;
           DMMACS.Transaction.CommitRetaining;
       End;
 	    XTabRef.Post;
       DMMACS.Transaction.CommitRetaining;
  	    XTransaction.CommitRetaining;
   Except
   	XTransaction.RollbackRetaining;
   End;
   PConsultParc.Visible:=False;
   PCONSULTA.Visible:=True;
   PCONSULTA.BringToFront;
   TCConsultContas.OnTabChanged(Sender);

   try
   	//Edmar - 02/10/2014 - Filtra a grid com os mesmos parametros de pesquisa
       //usado anteriormente em alguma pesquisa   
       XViewRef.Close;
       XViewRef.SQL.Clear;
       XViewRef.SQL.Add(XSqlFiltro);
       XViewRef.Open;

       //Filtra também o somatório
       DMFINANC.TAlx.Close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add(XSQLFILTROSOMA);
       DMFINANC.TAlx.Open;
		EdTotIndividual.ValueNumeric:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;
   except

   end;
end;

procedure TFPadraoContas.BtnConsultarClick(Sender: TObject);
Var
	Flag: Char;//contrala se a tabela filtrou o registro
begin
  inherited;
   Flag:='0';
   PCartoes.Visible:=False;   
	If XViewRef.FieldByName('FECH').AsString<>'S'
   Then begin//SE A PARCELA NÃO SE ENCONTRA FECHADA
   	If XTipoPR='P'
       Then Begin
           If FiltraTabela(DMCONTA.TParcCP, 'PARCELACP', 'COD_PARCELACP', XViewRef.FieldByName('COD_PARCELACP').AsString, '')
           Then Begin
           	If FiltraTabela(DMCONTA.WCtaP, 'VWCTAPAGAR', 'COD_CTAPAGAR', XViewRef.FieldByName('COD_CTAPAGAR').AsString, '') Then
					Flag:='1';
           End;
       End
       Else Begin
      		If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', XViewRef.FieldByName('COD_PARCELACR').AsString, '')
           Then Begin
           	If FiltraTabela(DMCONTA.WCtaR, 'VWCTARECEBER', 'COD_CTARECEBER', XViewRef.FieldByName('COD_CTARECEBER').AsString, '') Then
					Flag:='1';
           End;
           // AS VARIAVEIS ARMAZENAM OS RESPECTIVOS VALORES PARA SEREM COMPARADAS QUANDO FOR CLICADO EM GRAVAR
           // SE O VALOR FOR DIFERENTE, SERA REGISTRADO A AÇÃO DO USUARIO
           XValor_Fechamento := DMCONTA.TParcCR.FieldByName('VALOR').AsString;
           XDATA := DMCONTA.TParcCR.FieldByName('DTVENC').AsString;
      	End;
       If Flag='1'
       Then Begin//se todos os registros procurados foram encontrados entao prossegue
           LVALOR.Caption:=FormatFloat('######,##0.00', XViewRef.FieldByName('Valor').AsCurrency);
			XTabRef.EDIT;
	   		PConsultParc.Visible:=True;
	   		PConsultParc.BringToFront;
	   		DBColorEdit1.SetFocus;
       End;
   End;
end;

procedure TFPadraoContas.BitBtn3Click(Sender: TObject);
var
	xPrimeiro, xSegundo: String;
begin
  inherited;

   If XViewRef.FieldByName('FORMPAG').AsString='CADERNETA'
   Then Begin
		Mensagem('A T E N Ç Ã O !', 'Baixas de contas em caderneta não podem ser canceladas!', '', 1, 1, False, 'A');
		Exit;
   End;

   If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente cancelar a baixa da parcela Nº'+XViewRef.FieldByName('NUMPARC').AsString+'?', '', 2, 3, False, 'c')=2
   Then Begin
       If XTipoPR = 'P'
       Then Begin
           // localixa dados da conta a pagar e verifica principalmente se o pagamento que gerou a conta foi "cartão"
           If DadosParcelaCP = true Then
               // LOCALIZA E CANCELA A MOVIMENTAÇÃO
               CancelarMovimentacao;

               // - 01/06/2009: se existir uma conta a receber em movimentaçãoes de banco e ja estiver movimentado, não deixar continuar
       End Else If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','', '((COD_GERADOR = ' + #39 + XViewRef.FieldByname('cod_parcelacr').AsString + #39 + ') AND (FECH = ''S'') AND ((TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ') OR (TIPOGERADOR = ' +#39 + 'CTAR' + #39 + ') OR (TIPOGERADOR = ' +#39 + 'CTARJ' + #39 + ')))') = true
       Then Begin
          Mensagem('A T E N Ç Ã O !', 'Existe uma movimentação em banco já movimentada, a parcela não pode ser cancelada.', '', 1, 1, False, 'A');
		      Exit;
       End;

       If XViewRef.FieldByName('COBRANCA').AsString='Crédito'
       Then Begin // Caso a conta tenha sido feita em cheque, deve se retirar do caixa e do controle de cheque
           If XTipoPR='P'
           Then Begin
				//Filtra lançamento de caixa
           	If FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANCAIXA', '', ' ((TIPOGERADOR='+#39+'CTAP'+#39+') OR (TIPOGERADOR='+#39+'CTAPJ'+#39+')) AND (COD_GERADOR='+XViewRef.FieldByName('COD_PARCELACP').AsString+')')=True
               Then Begin//encontrado referencia em lançamento de caixa
					//Filtra abertura de caixa para verificar se caixa ainda está aberto
           		If FiltraTabela(DMCAIXA.TAbCaixa, 'ABCAIXA', 'COD_ABCAIXA', DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString, '')=True
               	Then Begin//encontrado referencia em Abcaixa
                   	If DMCAIXA.TAbCaixa.FieldByName('FECHADO').AsString='S'
                       Then Begin//se caixa já estiver fechado deve ser realizado um lançamento de correção e não simplesmente apagar
                           Mensagem('A T E N Ç Ã O !', 'O caixa ao qual o cheque foi lançado se encontra fechado e seu cancelamento provocaria erros. Então é aconselhado que se realize lançamentos manuais para tal correção.', '', 1, 1, False, 'A');
                           EXIT;
                       End
                       Else Begin
				    		//APAGAR LANÇAMENTOS EM CAIXA
                   		DMCAIXA.TLanCaixa.First;
                   		While Not DMCAIXA.TLanCaixa.Eof do
                   		Begin
								DMCAIXA.TLanCaixa.Delete;
                   			DMCAIXA.TLanCaixa.ApplyUpdates;
                   		End;
                       End;
                   End;
               End;
           End
           Else Begin
				//Filtra lançamento de caixa
           	If FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANCAIXA', '', ' ((TIPOGERADOR='+#39+'CTAR'+#39+') OR (TIPOGERADOR='+#39+'CTARJ'+#39+')) AND  (COD_GERADOR='+XViewRef.FieldByName('COD_PARCELACR').AsString+')')=True
               Then Begin//encontrado referencia em lançamento de caixa
					//Filtra abertura de caixa para verificar se caixa ainda está aberto
           		If FiltraTabela(DMCAIXA.TAbCaixa, 'ABCAIXA', 'COD_ABCAIXA', DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString, '')=True
               	Then Begin//encontrado referencia em Abcaixa
                   	If DMCAIXA.TAbCaixa.FieldByName('FECHADO').AsString='S'
                       Then Begin//se caixa já estiver fechado deve ser realizado um lançamento de correção e não simplesmente apagar
                           Mensagem('A T E N Ç Ã O !', 'O caixa ao qual o cheque foi lançado se encontra fechado e seu cancelamento provocaria erros. Então é aconselhado que se realize lançamentos manuais para tal correção.', '', 1, 1, False, 'A');
                           EXIT;
                       End
                       Else Begin
							//APAGAR LANÇAMENTO EM CAIXA
                   		DMCAIXA.TLanCaixa.First;
                   		While Not DMCAIXA.TLanCaixa.Eof do
                   		Begin
                   			DMCAIXA.TLanCaixa.Delete;
                   			DMCAIXA.TLanCaixa.ApplyUpdates;
                   		End;
                       End;
                   End;
               End;
               //filtra movbanco
           	If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (COD_GERADOR='+XViewRef.FieldByName('COD_PARCELACR').AsString+')')=True
               Then Begin//encontrado referencia em lançamento de caixa
                   //APAGAR MOVBANCO
                   DMBANCO.TMovBanco.First;
                   While Not DMBANCO.TMovBanco.Eof do
                   Begin
                   	DMBANCO.TMovBanco.Delete;
                   	DMBANCO.TMovBanco.ApplyUpdates;
                   End;
               End;
           End;
       End;

       //**PARA MOVIMENTAÇÕES EM CHQUE**
       If XViewRef.FieldByName('COBRANCA').AsString='Cheque'
       Then Begin // Caso a conta tenha sido feita em cheque, deve se retirar do caixa e do controle de cheque
           If XTipoPR='P'
           Then Begin
				//Filtra lançamento de caixa
           	If FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANCAIXA', '', ' ((TIPOGERADOR='+#39+'CTAP'+#39+') OR (TIPOGERADOR='+#39+'CTAPJ'+#39+')) AND (COD_GERADOR='+XViewRef.FieldByName('COD_PARCELACP').AsString+')')=True
               Then Begin//encontrado referencia em lançamento de caixa
					//Filtra abertura de caixa para verificar se caixa ainda está aberto
           		If FiltraTabela(DMCAIXA.TAbCaixa, 'ABCAIXA', 'COD_ABCAIXA', DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString, '')=True
               	Then Begin//encontrado referencia em Abcaixa
                   	If DMCAIXA.TAbCaixa.FieldByName('FECHADO').AsString='S'
                       Then Begin//se caixa já estiver fechado deve ser realizado um lançamento de correção e não simplesmente apagar
                           Mensagem('A T E N Ç Ã O !', 'O caixa ao qual o cheque foi lançado se encontra fechado e seu cancelamento provocaria erros. Então é aconselhado que se realize lançamentos manuais para tal correção.', '', 1, 1, False, 'A');
                           EXIT;
                       End
                       Else Begin
				    		//APAGAR LANÇAMENTOS EM CAIXA
                   		DMCAIXA.TLanCaixa.First;
                   		While Not DMCAIXA.TLanCaixa.Eof do
                   		Begin
								DMCAIXA.TLanCaixa.Delete;
                   			DMCAIXA.TLanCaixa.ApplyUpdates;
                   		End;
                       End;
                   End;
               End;     

               // LOCALIZA E CANCELA A MOVIMENTAÇÃO
               CancelarMovimentacao;
           End
           Else Begin
               // procura na tabela movbanco o codigo gerador igual a parcela a receber
               If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(MOVBANCO.COD_GERADOR='+XViewRef.FieldByName('COD_PARCELACR').AsString+') and ((movbanco.TIPOGERADOR=' + #39 + 'CTARCH' + #39 +') OR (movbanco.TIPOGERADOR=' + #39 + 'CTAR' + #39 + ') OR (TIPOGERADOR='+#39+'CTARTRC'+#39+'))')=True
               Then Begin
                   DMBANCO.TMovBanco.Last;
                   // procura na tabela chequerec o campo movbanco igual ao codigo movbanco recem selecionado
                   If FiltraTabela(DMBANCO.TChequeRec,'CHEQUEREC','COD_MOVBANCO',DMBANCO.TMovBanco.FieldByname('COD_MOVBANCO').AsString,'')= True
                   Then Begin
                       DMBANCO.TMovBanco.First;
                       while not DMBANCO.TMovBanco.Eof do
                       begin
                           DMBANCO.TMovBanco.Edit;
                           DMBANCO.TMovBanco.FieldByName('FECH').AsString := 'N';
                           DMBANCO.TMovBanco.FieldByName('ESTRU').AsInteger := 0;
                           DMBANCO.TMovBanco.Post;
                           DMBANCO.IBT.CommitRetaining;

                           DMBANCO.TMovBanco.Next;
                   	end;

                       // BUSCANDO DADOS DA TABELA CONTAS A RECEBER
                       FiltraTabela(DMCONTA.TCtaR,'CTARECEBER','COD_CTARECEBER',XViewRef.FieldByName('COD_CTARECEBER').AsString,'');

                       // ou seja, se a conta jah foi originada com cheque, o mesmo cheque nao sera apagado e ficara apenas como nao movimentado
                       If DMCONTA.TCtaR.FieldByName('COBRANCA').AsString = 'Cheque'
                       Then Begin

                           // BUSCANDO CHEQUE PARA COLOCAR COMO NAO MOVIMENTADO
                           If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_GERADOR',XViewRef.FieldByname('cod_parcelacr').AsString,'') = true
                           Then Begin
                               // CODIGO DA MOVIMENTAÇÃO BANCARIA
                               XCODMOVBANCO := DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsInteger;

                               // verificando se foi movimentado em conta corrente
                               If FiltraTabela(DMCONTA.TAlx,'CHEQUEREC','COD_MOVBANCO',IntToStr(XCODMOVBANCO),'') = true
                               Then Begin
                                   If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_GERADOR','','(COD_GERADOR = ' + #39 + DMCONTA.TAlx.FieldByName('COD_CHEQUEREC').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')') = TRUE
                                   Then Begin
                                       DMBANCO.TMovBanco.First;

                                       // apagando a movimentação bancaria originada da movimentaçã em conta corrente
                                       while not DMBANCO.TMovBanco.Eof do
                                       begin
                                           DMBANCO.TMovBanco.Delete;
                                           DMBANCO.TMovBanco.ApplyUpdates;
                                       end;
                                   End;
                               End;

                               // buscando o cheque referente ao movbanco
                               If FiltraTabela(DMBANCO.TChequeRec,'CHEQUEREC','COD_MOVBANCO',IntToStr(XCODMOVBANCO),'') = true
                               Then Begin
                                   // CODIGO CHEQUE
                                   XCOD_BANCOCHEQUE := DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsInteger;
                               End;
                           End;

                           // VERIFICANDO SE NO CAIXA FOI MOVIMENTADO CHEQUE E SE FOI, EH EFETUADO UM LANCAIXA
                           If FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANCAIXA', '', '(COD_GERADOR='+ #39 + IntToStr(XCOD_BANCOCHEQUE) + #39 + ') and ((TIPOGERADOR = '+ #39 + 'MCHR' + #39 +') OR (TIPOGERADOR = ' + #39 + 'CTAR' + #39 + ') OR (TIPOGERADOR = ' + #39 + 'DCHR' + #39 + ') OR (TIPOGERADOR = ' + #39 + 'CTARCH' + #39 + ') OR (TIPOGERADOR='+#39+'CTARTRC'+#39+'))')=True
                           Then Begin//encontrado referencia em lançamento de caixa
                               //Filtra abertura de caixa para verificar se caixa ainda está aberto
                               If FiltraTabela(DMCAIXA.TAbCaixa, 'ABCAIXA', 'COD_ABCAIXA', DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString, '')=True
                               Then Begin//encontrado referencia em Abcaixa
                                   If DMCAIXA.TAbCaixa.FieldByName('FECHADO').AsString='S'
                                   Then Begin//se caixa já estiver fechado deve ser realizado um lançamento de correção e não simplesmente apagar
                                       LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.FieldByNAme('PLNCTA_SAICXCORR').AsInteger, 'Cancel. conta receber '+XViewRef.FieldByName('NUMPARC').AsString+' Cli. '+XViewRef.FieldByName('NOME').AsString, XViewRef.FieldByName('VALORPG').AsCurrency, 'CCTAR', XViewRef.FieldByName('COD_PARCELACR').AsInteger, 'Carteira', 'S', XViewRef.FieldByName('NUMPARC').AsString, XViewRef.FieldByName('DTLANC').AsDateTime, '1');
                                       LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.FieldByNAme('PLNCTA_SAICXCORR').AsInteger, 'Cancel. conta receber '+XViewRef.FieldByName('NUMPARC').AsString+' Cli. '+XViewRef.FieldByName('NOME').AsString, XViewRef.FieldByName('VALORPG').AsCurrency, 'CCTAR', XViewRef.FieldByName('COD_PARCELACR').AsInteger, 'Carteira', 'E', XViewRef.FieldByName('NUMPARC').AsString, XViewRef.FieldByName('DTLANC').AsDateTime, '1');
                                       MDO.Transac.CommitRetaining;
                                       //DMCAIXA.IBT.CommitRetaining;
                                   End
                                   Else Begin
                                       //APAGAR LANÇAMENTO EM CAIXA
                                       DMCAIXA.TLanCaixa.First;
                                       While Not DMCAIXA.TLanCaixa.Eof do
                                       Begin
                                           DMCAIXA.TLanCaixa.Delete;
                                           DMCAIXA.TLanCaixa.ApplyUpdates;
                                       End;
                                   End;
                               End;
                           End;
                       End
                       // ou seja, se a conta nao foi originada com cheque, o registro serah apagado pq o cheuqe nao estah no caixa
                       Else Begin
                           // BUSCANDO DADOS DO CHEQUE
                           If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','', '((COD_GERADOR = ' + #39 + XViewRef.FieldByname('cod_parcelacr').AsString + #39 + ') AND ((TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ') OR (TIPOGERADOR = ' +#39 + 'CTAR' + #39 + ')))') = true
                           Then Begin

                               // CODIGO DA MOVIMENTAÇÃO BANCARIA
                               XCODMOVBANCO := DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsInteger;

                               DMBANCO.TMovBanco.First;

                               while not DMBANCO.TMovBanco.Eof do
                               begin
                                   DMBANCO.TMovBanco.Delete;
                                   DMBANCO.TMovBanco.ApplyUpdates;
                               end;
                           End;

                           // buscando o cheque referente ao movbanco
                           If FiltraTabela(DMBANCO.TChequeRec,'CHEQUEREC','COD_MOVBANCO',IntToStr(XCODMOVBANCO),'') = true
                           Then Begin
                               // CODIGO CHEQUE
                               XCOD_BANCOCHEQUE := DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsInteger;

                               DMBANCO.TChequeRec.First;

                               While not DMBANCO.TChequeRec.Eof do
                               begin
                                   DMBANCO.TChequeRec.Delete;
                                   DMBANCO.TChequeRec.ApplyUpdates;
                               end;
                           End;

                           // VERIFICANDO SE NO CAIXA FOI MOVIMENTADO CHEQUE E SE FOI, EH EFETUADO UM LANCAIXA
                           If FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANCAIXA', '', '(COD_GERADOR='+ #39 + IntToStr(XCOD_BANCOCHEQUE) + #39 + ') and ((TIPOGERADOR = '+ #39 + 'MCHR' + #39 +') OR (TIPOGERADOR = ' + #39 + 'CTAR' + #39 + ') OR (TIPOGERADOR = ' + #39 + 'DCHR' + #39 + ') OR (TIPOGERADOR = ' + #39 + 'CTARCH' + #39 + ') OR (TIPOGERADOR = ' + #39 + 'LCHR' + #39 + ')  OR (TIPOGERADOR='+#39+'CTARTRC'+#39+'))')=True
                           Then Begin//encontrado referencia em lançamento de caixa
                               //Filtra abertura de caixa para verificar se caixa ainda está aberto
                               If FiltraTabela(DMCAIXA.TAbCaixa, 'ABCAIXA', 'COD_ABCAIXA', DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString, '')=True
                               Then Begin//encontrado referencia em Abcaixa
                                   If DMCAIXA.TAbCaixa.FieldByName('FECHADO').AsString='S'
                                   Then Begin//se caixa já estiver fechado deve ser realizado um lançamento de correção e não simplesmente apagar
                                       If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.FieldByNAme('PLNCTA_SAICXCORR').AsInteger, 'Cancel. conta receber '+XViewRef.FieldByName('NUMPARC').AsString+' Cli. '+XViewRef.FieldByName('NOME').AsString, XViewRef.FieldByName('VALORPG').AsCurrency, 'CCTAR', XViewRef.FieldByName('COD_PARCELACR').AsInteger, 'Carteira', 'S', XViewRef.FieldByName('NUMPARC').AsString, XViewRef.FieldByName('DTLANC').AsDateTime, '1')=True Then
                                           MDO.Transac.CommitRetaining;  
                                           //DMCAIXA.IBT.CommitRetaining;
                                   End
                                   Else Begin
                                       //APAGAR LANÇAMENTO EM CAIXA
                                       DMCAIXA.TLanCaixa.First;
                                       While Not DMCAIXA.TLanCaixa.Eof do
                                       Begin
                                           DMCAIXA.TLanCaixa.Delete;
                                           DMCAIXA.TLanCaixa.ApplyUpdates;
                                       End;
                                   End;
                               End;
                           End;
                        End;
                    End;
               End;
           End;
       End;
       //**PARA MOVIMENTAÇÕES EM BANCO**
       If XViewRef.FieldByName('COBRANCA').AsString='Banco'
       Then Begin // Caso a conta tenha sido feita em Banco, deve se retirar do banco
           If XTipoPR='P'
           Then Begin
				//Filtra lançamento em banco
           	If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (COD_GERADOR='+XViewRef.FieldByName('COD_PARCELACP').AsString+')')=True
               Then Begin//encontrado referencia em lançamento de caixa
               	//APAGA MOVIMENTO BANCÁRIO
                   DMBANCO.TMovBanco.First;
                   While Not DMBANCO.TMovBanco.Eof do
                   Begin
                   	DMBANCO.TMovBanco.Delete;
                   	DMBANCO.TMovBanco.ApplyUpdates;
                   End;
               End;
           End
           Else Begin
				//Filtra lançamento em banco
           	If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (COD_GERADOR='+XViewRef.FieldByName('COD_PARCELACR').AsString+')')=True
               Then Begin//encontrado referencia em lançamento de caixa
               	//APAGA MOVIMENTO BANCÁRIO
                   DMBANCO.TMovBanco.RecordCount;
                   DMBANCO.TMovBanco.First;
                   While Not DMBANCO.TMovBanco.Eof do
                   Begin
                   	DMBANCO.TMovBanco.Delete;
                   	DMBANCO.TMovBanco.ApplyUpdates;
                   End;
               End;
           End;
       End;

       // PARA MOVIMENTAÇÕES EM CARTÃO
       If XViewRef.FieldByName('COBRANCA').AsString = 'Cartão'
       Then Begin
           iF XTipoPR = 'P'
           Then Begin
               // colocando o movbanco para não movimentado
               FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + XViewRef.FieldByName('COD_PARCELACP').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTPCARTAO' + #39 + ')');
           End
           Else Begin
               // colocando o movbanco para não movimentado
               FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + XViewRef.FieldByName('COD_PARCELACR').AsString + #39 + ') AND ((TIPOGERADOR = ' + #39 + 'CTRCARTAO' + #39 + ') or (TIPOGERADOR='+#39+'CTAR'+#39+') OR (TIPOGERADOR='+#39+'CTARJ'+#39+'))');
           End;

           if not(DMBANCO.TMovBanco.IsEmpty)then
           begin
               DMBANCO.TMovBanco.Edit;
               DMBANCO.TMovBanco.FieldByName('FECH').AsString := 'N';
               DMBANCO.TMovBanco.Post;
               DMBANCO.IBT.CommitRetaining;
           end;
           //Paulo 12/09/2011: verifica se não tem nada no caixa
           If FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANCAIXA', '', '  ((TIPOGERADOR='+#39+'CTAR'+#39+') OR (TIPOGERADOR='+#39+'CTARJ'+#39+')) AND (TIPO = '+#39+'Cartão'+#39+') AND (COD_GERADOR='+XViewRef.FieldByName('COD_PARCELACR').AsString+')')=True
           Then Begin//encontrado referencia em lançamento de caixa
               //Filtra abertura de caixa para verificar se caixa ainda está aberto
               If FiltraTabela(DMCAIXA.TAbCaixa, 'ABCAIXA', 'COD_ABCAIXA', DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString, '')=True
               Then Begin//encontrado referencia em Abcaixa
                   If DMCAIXA.TAbCaixa.FieldByName('FECHADO').AsString='S'
                   Then Begin//se caixa já estiver fechado deve ser realizado um lançamento de correção e não simplesmente apagar
                       If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.FieldByNAme('PLNCTA_SAICXCORR').AsInteger, 'Cancel. conta receber '+XViewRef.FieldByName('NUMPARC').AsString+' Cli. '+XViewRef.FieldByName('NOME').AsString, XViewRef.FieldByName('VALORPG').AsCurrency, 'CCTAR', XViewRef.FieldByName('COD_PARCELACR').AsInteger, 'Cartão', 'S', XViewRef.FieldByName('NUMPARC').AsString, XViewRef.FieldByName('DTLANC').AsDateTime, '1')=True Then
                            MDO.Transac.CommitRetaining;
                           //DMCAIXA.IBT.CommitRetaining;
                   End
                   Else Begin
                       //APAGA LANÇAMENTO EM CAIXA
                       DMCAIXA.TLanCaixa.First;
                       While Not DMCAIXA.TLanCaixa.Eof do
                       Begin
                           DMCAIXA.TLanCaixa.Delete;
                           DMCAIXA.TLanCaixa.ApplyUpdates;
                       End;
                   End;
               End;
           End;
       End;

       //**PARA MOVIMENTAÇÕES EM CARTEIRA**
       If XViewRef.FieldByName('COBRANCA').AsString='Carteira'
       Then Begin // Caso a conta tenha sido feita em carteira, deve se retirar do caixa
           If XTipoPR='P'
           Then Begin
				//Filtra lançamento em CAIXA
           	If FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANCAIXA', '', ' ((TIPOGERADOR='+#39+'CTAP'+#39+') OR (TIPOGERADOR='+#39+'CTAPJ'+#39+') OR (TIPOGERADOR='+#39+'CTAPTRC'+#39+')) AND  (COD_GERADOR='+XViewRef.FieldByName('COD_PARCELACP').AsString+')')=True
               Then Begin//encontrado referencia em lançamento de caixa
					//Filtra abertura de caixa para verificar se caixa ainda está aberto
           		If FiltraTabela(DMCAIXA.TAbCaixa, 'ABCAIXA', 'COD_ABCAIXA', DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString, '')=True
               	Then Begin//encontrado referencia em Abcaixa
                   	If DMCAIXA.TAbCaixa.FieldByName('FECHADO').AsString='S'
                       Then Begin//se caixa já estiver fechado deve ser realizado um lançamento de correção e não simplesmente apagar
                           If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.FieldByNAme('PLNCTA_ENTCXCORR').AsInteger, 'Cancel. conta pagar '+XViewRef.FieldByName('NUMPARC').AsString+' For. '+XViewRef.FieldByName('NOME').AsString, XViewRef.FieldByName('VALORPG').AsCurrency, 'CCTAP', XViewRef.FieldByName('COD_PARCELACP').AsInteger, 'Carteira', 'E', XViewRef.FieldByName('NUMPARC').AsString, XViewRef.FieldByName('DTLANC').AsDateTime, '1')=True Then
                               MDO.Transac.CommitRetaining;
								//DMCAIXA.IBT.CommitRetaining;
                       End
                       Else Begin
               			//APAGA LANÇAMENTO EM CAIXA
                   		DMCAIXA.TLanCaixa.First;
                   		While Not DMCAIXA.TLanCaixa.Eof do
                   		Begin
                   			DMCAIXA.TLanCaixa.Delete;
                   			DMCAIXA.TLanCaixa.ApplyUpdates;
                   		End;
                       End;
                   End;
               End;
               
               //Edmar - 28/10/2014 - Rotina para remover credito da pessoa
               try
               	//verifica se tem algum credito referente a essa conta
					if FiltraTabela(DMFINANC.TCredito, 'CREDITO', 'COD_GERADOR', XViewRef.FieldByName('COD_PARCELACP').AsString, 'AND (CREDITO.TIPOGERADOR = ''LANCTPC'')') then
                   begin
                   	//se achou, subtrai o credito em pessoa
						DMPESSOA.TALX.Close;
                       DMPESSOA.TALX.SQL.Clear;
                       DMPESSOA.TALX.SQL.Add(' UPDATE PESSOA SET PESSOA.VLRCREDITO = PESSOA.VLRCREDITO - :CRED_ANT WHERE PESSOA.COD_PESSOA = :PESSOA ');
                       DMPESSOA.TALX.ParamByName('CRED_ANT').AsCurrency := DMFINANC.TCredito.FieldByName('VALOR').AsCurrency;
                       DMPESSOA.TALX.ParamByName('PESSOA').AsInteger := XViewRef.FieldByName('COD_PESSOA').AsInteger;  
						DMPESSOA.TALX.ExecSQL;
                       
                       //remove o credito salvo em banco
						DMFINANC.TAlx.Close;
                       DMFINANC.TAlx.SQL.Clear;
                       DMFINANC.TAlx.SQL.Add(' DELETE FROM CREDITO WHERE COD_CREDITO = :CREDITO');
                       DMFINANC.TAlx.ParamByName('CREDITO').AsInteger := DMFINANC.TCredito.FieldByName('COD_CREDITO').AsInteger;
                       DMFINANC.TAlx.ExecSQL;

                       DMPESSOA.TransacPessoa.CommitRetaining;
                       DMFINANC.Transaction.CommitRetaining;
                   end;
               except
               	on E : Exception do
                   begin
                   	ShowMessage('Não foi possivel estornar o crédito do cliente. '+#13+E.Message);
               		DMPESSOA.TransacPessoa.RollbackRetaining;
                   	DMFINANC.Transaction.RollbackRetaining;
                   end;
               end;
           End
           Else Begin
				//Filtra lançamento em CAIXA
           	If FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANCAIXA', '', '  ((TIPOGERADOR='+#39+'CTAR'+#39+') OR (TIPOGERADOR='+#39+'CTARJ'+#39+') OR (TIPOGERADOR='+#39+'CTARTRC'+#39+')) AND (COD_GERADOR='+XViewRef.FieldByName('COD_PARCELACR').AsString+')')=True
               Then Begin//encontrado referencia em lançamento de caixa
					//Filtra abertura de caixa para verificar se caixa ainda está aberto
           		If FiltraTabela(DMCAIXA.TAbCaixa, 'ABCAIXA', 'COD_ABCAIXA', DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString, '')=True
               	Then Begin//encontrado referencia em Abcaixa
                   	If DMCAIXA.TAbCaixa.FieldByName('FECHADO').AsString='S'
                       Then Begin//se caixa já estiver fechado deve ser realizado um lançamento de correção e não simplesmente apagar
                           If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.FieldByNAme('PLNCTA_SAICXCORR').AsInteger, 'Cancel. conta receber '+XViewRef.FieldByName('NUMPARC').AsString+' Cli. '+XViewRef.FieldByName('NOME').AsString, XViewRef.FieldByName('VALORPG').AsCurrency, 'CCTAR', XViewRef.FieldByName('COD_PARCELACR').AsInteger, 'Carteira', 'S', XViewRef.FieldByName('NUMPARC').AsString, XViewRef.FieldByName('DTLANC').AsDateTime, '1')=True Then
								DMCAIXA.IBT.CommitRetaining;
                       End
                       Else Begin
               			//APAGA LANÇAMENTO EM CAIXA
                   		DMCAIXA.TLanCaixa.First;
                   		While Not DMCAIXA.TLanCaixa.Eof do
                   		Begin
                   			DMCAIXA.TLanCaixa.Delete;
                   			DMCAIXA.TLanCaixa.ApplyUpdates;
                   		End;
                       End;
                   End;
               End;
               //Edmar - 28/10/2014 - Rotina para remover credito da pessoa
               try
               	//verifica se tem algum credito referente a essa conta
					if FiltraTabela(DMFINANC.TCredito, 'CREDITO', 'COD_GERADOR', XViewRef.FieldByName('COD_PARCELACR').AsString, 'AND (CREDITO.TIPOGERADOR = ''LANCTRC'')') then
                   begin
                   	//se achou, subtrai o credito em pessoa
						DMPESSOA.TALX.Close;
                       DMPESSOA.TALX.SQL.Clear;
                       DMPESSOA.TALX.SQL.Add(' UPDATE PESSOA SET PESSOA.VLRCREDITO = PESSOA.VLRCREDITO - :CRED_ANT WHERE PESSOA.COD_PESSOA = :PESSOA ');
                       DMPESSOA.TALX.ParamByName('CRED_ANT').AsCurrency := DMFINANC.TCredito.FieldByName('VALOR').AsCurrency;
                       DMPESSOA.TALX.ParamByName('PESSOA').AsInteger := XViewRef.FieldByName('COD_PESSOA').AsInteger;  
						DMPESSOA.TALX.ExecSQL;
                       
                       //remove o credito salvo em banco
						DMFINANC.TAlx.Close;
                       DMFINANC.TAlx.SQL.Clear;
                       DMFINANC.TAlx.SQL.Add(' DELETE FROM CREDITO WHERE COD_CREDITO = :CREDITO');
                       DMFINANC.TAlx.ParamByName('CREDITO').AsInteger := DMFINANC.TCredito.FieldByName('COD_CREDITO').AsInteger;
                       DMFINANC.TAlx.ExecSQL;

                       DMPESSOA.TransacPessoa.CommitRetaining;
                       DMFINANC.Transaction.CommitRetaining;
                   end;
               except
               	on E : Exception do
                   begin
                   	ShowMessage('Não foi possivel estornar o crédito do cliente. '+#13+E.Message);
               		DMPESSOA.TransacPessoa.RollbackRetaining;
                   	DMFINANC.Transaction.RollbackRetaining;
                   end;
               end;
           End;
       End;
       //TENDO EFETUADO A ELIMINAÇÃO DE LANÇAMENTOS RETORNA A PARCELA COMO NÃO BAIXADA
       Try
           //filtra a tabela da parcela para edita-la
			If XTipoPR='P'
           Then Begin
               //VERIFICA SE FOI GERADA OUTRA PARCELA COM PARENTESCO E APAGA
           	If FiltraTabela(DMCONTA.TParcCP, 'PARCELACP', 'COD_PARANT', XViewRef.FieldByName('COD_PARCELACP').AsString, '')=True
               Then Begin//encontrado A PARCELA
               	//APAGA PARCELAS
                   DMCONTA.TParcCP.First;
                   While Not DMCONTA.TParcCP.Eof do
                   Begin
                   	DMCONTA.TParcCP.Delete;
                   	DMCONTA.TParcCP.ApplyUpdates;
                   End;
               End;

               //Edmar - 28/10/2014 - Filtra cheques recebido com o código gerador da parcela correspondente e com o tipo gerador CTAPCHTRCS
               if FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(TIPOGERADOR = '+#39+'CTAPCHTRCS'+#39+') AND (COD_GERADOR = '+XViewRef.FieldByName('COD_PARCELACP').AsString+')') then
               begin
               	DMBANCO.TMovBanco.First;
                                  
               	if FiltraTabela(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_MOVBANCO', DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString, '') then
                   begin//SE ACHAR CHEQUES RECEBIDOS REMOVE
                   	//busca um lançamento de caixa para remoção
                       if FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_GERADOR', DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsString, ' AND(TIPOGERADOR = ''LCHR'') ') then
                       begin
                       	If FiltraTabela(DMCAIXA.TAbCaixa, 'ABCAIXA', 'COD_ABCAIXA', DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString, '')=True
                       	Then Begin//encontrado referencia em Abcaixa
                           	If DMCAIXA.TAbCaixa.FieldByName('FECHADO').AsString='S'
                           	Then Begin//se caixa já estiver fechado deve ser realizado um lançamento de correção e não simplesmente apagar
                               	If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.FieldByNAme('PLNCTA_SAICXCORR').AsInteger, 'Estorno Lanc. Cheque '+XViewRef.FieldByName('NUMPARC').AsString+' Cli. '+XViewRef.FieldByName('NOME').AsString, XViewRef.FieldByName('VALORPG').AsCurrency, 'ESLANCCH', XViewRef.FieldByName('COD_PARCELACR').AsInteger, 'Carteira', 'S', XViewRef.FieldByName('NUMPARC').AsString, XViewRef.FieldByName('DTLANC').AsDateTime, '1')=True Then
                                   	DMCAIXA.IBT.CommitRetaining;
                           	End
                           	Else Begin
                               	//APAGA LANÇAMENTO EM CAIXA
                               	DMCAIXA.TLanCaixa.First;
                               	While Not DMCAIXA.TLanCaixa.Eof do
                               	Begin
                                   	DMCAIXA.TLanCaixa.Delete;
                                   	DMCAIXA.TLanCaixa.ApplyUpdates;
                               	End;
                           	End;
                       	End;
                       end;

                   	DMBANCO.TChequeRec.First;
                       DMBANCO.TChequeRec.Delete;
                       DMBANCO.TChequeRec.ApplyUpdates;
                   end;
                   
               	//Edmar - 28/10/2014 - Remove se achar
                   DMBANCO.TMovBanco.Delete;
                   DMBANCO.TMovBanco.ApplyUpdates;
               end;               

               // FILTRANDO PARCELACP PARA BUSCAR O COD_CTAPAGAR
               FiltraTabela(DMCONTA.TParcCP,'PARCELACP','COD_PARCELACP',XViewRef.FieldByName('COD_PARCELACP').AsString,'');

               FiltraTabela(DMCONTA.TCtaP,'CTAPAGAR','COD_CTAPAGAR',DMCONTA.TParcCP.FieldByname('COD_CTAPAGAR').AsString,'');

           	If FiltraTabela(DMCONTA.TParcCP, 'PARCELACP', 'COD_PARCELACP', XViewRef.FieldByName('COD_PARCELACP').AsString, '')=True
               Then Begin//encontrado A PARCELA
                   DMCONTA.TParcCP.EDIT;
                   DMCONTA.TParcCP.FieldByName('FECH').AsString:='N';
                   DMCONTA.TParcCP.FieldByName('ESTRU').AsString:='1';                   
                   DMCONTA.TParcCP.FieldByName('VALORPG').AsCurrency:=0;
                   // Exemplo:
                   // a conta a pagar foi gerada com carteira mas foi baixada com cheque.
                   // Os ultimos filtros logo acima tem a função de buscar na tabela ctapagar o tipo de cobrança,
                   // pois assim, a parcela irá voltar no tipo carteira
                   //DMCONTA.TParcCP.FieldByName('COBRANCA').AsString := DMCONTA.TCtaP.FieldByname('COBRANCA').AsString;
                   DMCONTA.TParcCP.Post;
                   DMCONTA.TParcCP.ApplyUpdates;
                   DMCONTA.IBT.CommitRetaining;
			       	DMBANCO.IBT.CommitRetaining;
            		DMCAIXA.IBT.CommitRetaining;
               End
               Else Begin
               	//caso não encontrou retorna informaçãoes
			       	DMBANCO.IBT.RollbackRetaining;
           		DMCAIXA.IBT.RollbackRetaining;
               End;
           End
       	Else Begin
           	//Edmar - 26/05/2014 - Busca referencia da parcela em lancaixa
           	If FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANCAIXA', '', '  ((TIPOGERADOR='+#39+'CTARTRC'+#39+') OR (TIPOGERADOR='+#39+'MCHR'+#39+') OR (TIPOGERADOR='+#39+'DCHR'+#39+')) AND (COD_GERADOR='+XViewRef.FieldByName('COD_PARCELACR').AsString+')')=True
               Then Begin//encontrado referencia em lançamento de caixa
					//Filtra abertura de caixa para verificar se caixa ainda está aberto
           		If FiltraTabela(DMCAIXA.TAbCaixa, 'ABCAIXA', 'COD_ABCAIXA', DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString, '')=True
               	Then Begin//encontrado referencia em Abcaixa
                   	If DMCAIXA.TAbCaixa.FieldByName('FECHADO').AsString='S'
                       Then Begin
                       	//se caixa já estiver fechado deve ser realizado um lançamento de correção e não simplesmente apagar
                           If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.FieldByNAme('PLNCTA_SAICXCORR').AsInteger, 'Cancel. conta receber '+XViewRef.FieldByName('NUMPARC').AsString+' Cli. '+XViewRef.FieldByName('NOME').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'CCTAR', XViewRef.FieldByName('COD_PARCELACR').AsInteger, 'Carteira', 'E', XViewRef.FieldByName('NUMPARC').AsString, XViewRef.FieldByName('DTLANC').AsDateTime, '1')=True Then
								DMCAIXA.IBT.CommitRetaining;
                       End
                       Else Begin
               			//APAGA LANÇAMENTO EM CAIXA
                   		DMCAIXA.TLanCaixa.First;
                   		While Not DMCAIXA.TLanCaixa.Eof do
                   		Begin
                   			DMCAIXA.TLanCaixa.Delete;
                   			DMCAIXA.TLanCaixa.ApplyUpdates;
                   		End;
                       End;
                   End;
               End;

               //Edmar - 26/05/2014 - Filtra cheques emitidos com o código gerador da parcela correspondente e com o tipo gerador CTARCHTRCS
               if FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(TIPOGERADOR = '+#39+'CTARCHTRCS'+#39+') AND (COD_GERADOR = '+XViewRef.FieldByName('COD_PARCELACR').AsString+')') then
               begin
               	//Edmar - 26/05/2014 - Remove se achar
               	DMBANCO.TMovBanco.First;
                   DMBANCO.TMovBanco.Delete;
                   DMBANCO.TMovBanco.ApplyUpdates;
               end;

               //Edmar - 03/06/2014 - procura na tabela movbanco o codigo gerador igual a parcela a receber
               If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(MOVBANCO.COD_GERADOR='+XViewRef.FieldByName('COD_PARCELACR').AsString+') and ((movbanco.TIPOGERADOR=' + #39 + 'CTARCH' + #39 +') OR (movbanco.TIPOGERADOR=' + #39 + 'CTAR' + #39 + ') OR (TIPOGERADOR='+#39+'CTARTRC'+#39+'))')=True
               Then Begin
                   DMBANCO.TMovBanco.Last;
                   //Edmar - 03/06/2014 - procura na tabela chequerec o campo movbanco igual ao codigo movbanco recem selecionado
                   If FiltraTabela(DMBANCO.TChequeRec,'CHEQUEREC','COD_MOVBANCO',DMBANCO.TMovBanco.FieldByname('COD_MOVBANCO').AsString,'')= True
                   Then Begin
                       DMBANCO.TMovBanco.First;
                       while not DMBANCO.TMovBanco.Eof do
                       begin//Edmar - 03/06/2014 - Desmovimenta o(s) cheque(s)
                           DMBANCO.TMovBanco.Edit;
                           DMBANCO.TMovBanco.FieldByName('FECH').AsString := 'N';
                           DMBANCO.TMovBanco.FieldByName('ESTRU').AsInteger := 0;
                           DMBANCO.TMovBanco.Post;
                           DMBANCO.IBT.CommitRetaining;

                           DMBANCO.TMovBanco.Next;
                   	end;
                   end;
               end;

               // BUSCA NA TABELA PARCELACR O CODIGO DA CONTA
               FiltraTabela(DMCONTA.TParcCR,'PARCELACR','cod_parcelacr',XViewRef.FieldByName('COD_PARCELACR').AsString,'');

               // REPASSA PARA A PARCELACR O TIPO DE PAGAMENTO, SEJA CARTEIRA, CHEEQUE, CARTÃO
               FiltraTabela(DMCONTA.TCtaR,'CTARECEBER','COD_CTARECEBER',DMCONTA.TParcCR.FieldByname('COD_CTARECEBER').AsString,'');

               //VERIFICA SE FOI GERADA OUTRA PARCELA COM PARENTESCO E APAGA
           	If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARANT', XViewRef.FieldByName('COD_PARCELACR').AsString, '')=True
               Then Begin//encontrado A PARCELA
               	//APAGA PARCELAS
                   DMCONTA.TParcCR.First;
                   While Not DMCONTA.TParcCR.Eof do
                   Begin
                   	DMCONTA.TParcCR.Delete;
                   	DMCONTA.TParcCR.ApplyUpdates;
                   End;
               End;
           	If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', XViewRef.FieldByName('COD_PARCELACR').AsString, '')=True
               Then Begin//encontrado A PARCELA
                   DMCONTA.TParcCR.EDIT;
                   DMCONTA.TParcCR.FieldByName('FECH').AsString:='N';
                   DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency:=0;
                   DMCONTA.TParcCR.FieldByName('DTDEBITO').AsString := '';
                   DMCONTA.TParcCR.FieldByName('COBRANCA').AsString := DMCONTA.TCtaR.FieldByname('COBRANCA').AsString;
                   DMCONTA.TParcCR.Post;

   				//APAGA LANÇAMENTPO DE CREDITO CASO TENHA OCORRIDO UM
       			DMCAIXA.TAlx.Close;
       			DMCAIXA.TAlx.SQL.Clear;
       			DMCAIXA.TAlx.SQL.Add(' delete from credito Where (credito.tipogerador=' +#39 + 'CTAR' + #39 + ') And (credito.cod_gerador=:CODGERADOR) ');
                   DMCAIXA.TAlx.ParamByName('CODGERADOR').AsString:=DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString;
   				DMCAIXA.TAlx.ExecSQL;

                   //Apaga itens de fatura
                   Try
                   	mdo.Query.close;
                   	MDO.query.SQL.Clear;
                   	MDO.Query.SQL.Add(' delete from itensfaturaconta where itensfaturaconta.cod_parcela=:codigoparcela ');
                   	MDO.Query.ParamByName('codigoparcela').AsInteger:=DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsInteger;
                       MDO.Query.ExecSQL;
                       MDO.Transac.CommitRetaining;
                   Except
                   end;
                   DMCONTA.TParcCR.ApplyUpdates;
                   DMCONTA.IBT.CommitRetaining;
			       	DMBANCO.IBT.CommitRetaining;
           		DMCAIXA.IBT.CommitRetaining;
               End
               Else Begin
               	//caso não encontrou retorna informaçãoes
			       	DMBANCO.IBT.RollbackRetaining;
           		DMCAIXA.IBT.RollbackRetaining;
               End;
			End;
       Except
			DMCONTA.IBT.RollbackRetaining;
	      	DMBANCO.IBT.RollbackRetaining;
      		DMCAIXA.IBT.RollbackRetaining;
       End;

	    TCConsultContas.OnTabChanged(Sender);
   End;
end;

procedure TFPadraoContas.IBEVENTEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
  inherited;
	//CONTROLA AS MENSQAGENS DE EVENTOS RECEBIDOS

   //Mensagens de Ctas Receber
   IF EventName='ALTCTARECEBER'
   Then Begin
		If PCONSULTA.Visible=True
       Then Begin
          	TCConsultContas.OnTabChanged(sender);
       End;
   End;
end;

procedure TFPadraoContas.DBGCTAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
   	If Not DMBANCO.WCtaCor.IsEmpty Then//'se banco não estiver vazio
       	XCOD_CONTABANCO:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger
       Else
           XCOD_CONTABANCO:=-1;

       PBanco.Visible:=False;
       DBValor.SetFocus;
   End;
end;

procedure TFPadraoContas.EdHistFornecKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
      EDFornecedor.Text:=EdHistFornec.Text;
	   FiltraParcelaEdit('HIST');
    End;
    If Key=#27 Then
	   FiltraParcelaEdit('OHIST');

     
end;

procedure TFPadraoContas.EdHistoricoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
      EdHistFornec.Text:=EdHistorico.Text;
	   FiltraParcelaEdit('HIST');
    End;
    If Key=#27 Then
	   FiltraParcelaEdit('OHIST');
end;

procedure TFPadraoContas.QRDUPLICATAAfterPrint(Sender: TObject);
begin
  inherited;
	  MessageDlg('AFTER PRINT', mtWarning, [mbOK], 0);
end;

procedure TFPadraoContas.QRDUPLICATAEndPage(Sender: TCustomQuickRep);
begin
  inherited;
	  MessageDlg('END PAGE', mtWarning, [mbOK], 0);
end;

procedure TFPadraoContas.QRDUPLICATANeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  inherited;
	  MessageDlg('INEED DATA', mtWarning, [mbOK], 0);
end;

procedure TFPadraoContas.DBHISTORICOEnter(Sender: TObject);
begin
//  inherited;
//	If DBHISTORICO.Text='' Then
//       DBHISTORICO.Text:=FrmConta.EdDescricao.Text;
end;

procedure TFPadraoContas.ass(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR
  Data: Integer;
  Mes:String;
  Year, Month, Day:word;
begin
   inherited;
   	Try
   	//Data := DayOfWeek(Date());{Volta um número inteiro que representa o dia da semana}
		//DMFinanc.TAlx.FieldByName('dtdebito').AsDateTime
   	Data := DayOfWeek(DMFinanc.TAlx.FieldByName('dtdebito').AsDateTime);
    	DecodeDate(Date(), Year, Month, Day);
    	Case Month of
      		1:Mes:='Janeiro';
      		2:Mes:='Fevereiro';
      		3:Mes:='Março';
      		4:Mes:='Abril';
      		5:Mes:='Maio';
      		6:Mes:='Junho';
      		7:Mes:='Julho';
      		8:Mes:='Agosto';
      		9:Mes:='Setembro';
      		10:Mes:='Outubro';
      		11:Mes:='Novembro';
      		12:Mes:='Dezembro';
    	End;
   Except
   end;
   If FiltraTabela(DMMACS.TALX, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '') Then
   	QRLabel101.Caption:=DMMACS.TALX.FieldByName('NOME').AsString+', '+ IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year)
   Else
   	QRLabel101.Caption:=IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year);

   FMenu.Extenso.Numero:=FormatFloat('0.00', DMFINANC.TAlx.FieldByName('VALORPG').AsCurrency);;
	QrlImportancia.Caption:=UpperCase(FMenu.Extenso.Extenso);
   QRDataRec2.Caption:=TimeToStr(Time());
end;

procedure TFPadraoContas.FrmContaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCod_Conta:=0;
   FrmConta.EDCodigo.Text:='';
   FrmConta.EdDescricao.Text:='';


end;

procedure TFPadraoContas.EdNumBoletoBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key=VK_Down Then
        XViewRef.Next;
    If Key=VK_Up Then
        XViewRef.Prior;
end;

procedure TFPadraoContas.EdNumFiscalBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key=VK_Down Then
        XViewRef.Next;
    If Key=VK_Up Then
        XViewRef.Prior;
end;

procedure TFPadraoContas.EdNumBoletoBKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
      EdNumBoleto.Text:=EdNumBoletoB.Text;
	   FiltraParcelaEdit('NUMBOLETO');
    End;
    If Key=#27 Then
	   FiltraParcelaEdit('ONUMBOLETO');
end;

procedure TFPadraoContas.EdNumFiscalBKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
      EdNumFiscal.Text:=EdNumFiscalB.Text;
	   FiltraParcelaEdit('NUMFISCAL');
    End;
    If Key=#27 Then
	   FiltraParcelaEdit('ONUMFISCAL');
end;

procedure TFPadraoContas.EdNumBoletoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
	   FiltraParcelaEdit('NUMBOLETO');
    End;
    If Key=#27 Then
	   FiltraParcelaEdit('ONUMBOLETO');

end;

procedure TFPadraoContas.EdNumFiscalKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
	   FiltraParcelaEdit('NUMFISCAL');
    End;
    If Key=#27 Then
	   FiltraParcelaEdit('ONUMFISCAL');
end;

procedure TFPadraoContas.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=Vk_Multiply
   Then Begin
   	RecalcParc;
   End;
end;

procedure TFPadraoContas.EdVencBaixa2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
	   FiltraParcelaEdit('DTVENC');
    End;
    If Key=#27 Then
	   FiltraParcelaEdit('ODTVENC');
end;

procedure TFPadraoContas.edvencimento2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13 Then
	   FiltraParcelaEdit('DTVENC');
    If Key=#27 Then
	   FiltraParcelaEdit('ODTVENC');
end;

procedure TFPadraoContas.QRBandReciboValorBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR
  Data: Integer;
  Mes:String;
  Year, Month, Day:word;
begin
   inherited;
	Try
   	Data := DayOfWeek(Date());//Volta um número inteiro que representa o dia da semana
    	DecodeDate(Date(), Year, Month, Day);
    	Case Month of
      		1:Mes:='Janeiro';
      		2:Mes:='Fevereiro';
      		3:Mes:='Março';
      		4:Mes:='Abril';
      		5:Mes:='Maio';
      		6:Mes:='Junho';
      		7:Mes:='Julho';
      		8:Mes:='Agosto';
      		9:Mes:='Setembro';
      		10:Mes:='Outubro';
      		11:Mes:='Novembro';
      		12:Mes:='Dezembro';
    	End;
   Except
   end;
   If FiltraTabela(DMMACS.TALX, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '') Then
   	QRLabel61.Caption:=DMMACS.TALX.FieldByName('NOME').AsString+', '+ IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year)
   Else
   	QRLabel61.Caption:=IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year);

   FMenu.Extenso.Numero:=FormatFloat('0.00', DMFINANC.TAlx.FieldByName('VALOR').AsCurrency);;
	QRLabel127.Caption:=UpperCase(FMenu.Extenso.Extenso);
   QRLabel128.Caption:=TimeToStr(Time());
   
end;

procedure TFPadraoContas.QRDUPLICATABeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);

begin
  inherited;
      // o campo "VISUALRS" se refere á razão social da empresa, e caso tiver selecionado o que sera exibido no relatorio sera a RAZAO SOCIAL senao o NOME FANTASIA
{      If DMMACS.TLoja.FieldByName('VISUALRS').AsString = '1'
      Then Begin
           QRDBText7.Caption := DMFINANC.TAlx.FieldByName('razao_social').AsString;
      End
      Else Begin
           QRDBText7.Caption := DMFINANC.TAlx.FieldByName('NOME').AsString;
      End;}

end;

procedure TFPadraoContas.QRBRecFinBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR
  Data: Integer;
  Mes:String;
  Year, Month, Day:word;
begin
  // inherited;
	Try
   	Data := DayOfWeek(Date());{Volta um número inteiro que representa o dia da semana}
    	DecodeDate(Date(), Year, Month, Day);
    	Case Month of
      		1:Mes:='Janeiro';
      		2:Mes:='Fevereiro';
      		3:Mes:='Março';
      		4:Mes:='Abril';
      		5:Mes:='Maio';
      		6:Mes:='Junho';
      		7:Mes:='Julho';
      		8:Mes:='Agosto';
      		9:Mes:='Setembro';
      		10:Mes:='Outubro';
      		11:Mes:='Novembro';
      		12:Mes:='Dezembro';
    	End;
   Except
   end;
   If FiltraTabela(DMMACS.TALX, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '')
   Then begin
   	QRLabel76.Caption:=DMMACS.TALX.FieldByName('NOME').AsString+', '+ IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year);
       QRLabel92.Caption:=DMMACS.TALX.FieldByName('NOME').AsString+', '+ IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year);
   end
   Else begin
   	QRLabel76.Caption:=IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year);
       QRLabel92.Caption:=IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year);
   end;          

   FMenu.Extenso.Numero:= FormatFloat('0.00', (XACUMULAVALOR));
   QrlVlrImportancia.Caption:=UpperCase(FMenu.Extenso.Extenso);
   QRDataRec1.Caption:=TimeToStr(Time());
   QRDataRec4.Caption:=TimeToStr(Time());  
end;

// LOCALIZA E CANCELA A MOVIMENTAÇÃO
procedure TFPadraoContas.CancelarMovimentacao;
begin
    // buscando o cheque ou cartão para cancelar a movimentação
    DMBANCO.TMovBanco.Close;
    DMBANCO.TMovBanco.SQL.Clear;
    DMBANCO.TMovBanco.SQL.Add('select * from movbanco where (movbanco.cod_gerador = :cod_movbanco)');
    DMBANCO.TMovBanco.SQL.Add('AND ((movbanco.tipogerador = ' + #39 + 'CTAPJ' + #39 + ') OR (movbanco.tipogerador = ' + #39 + 'CTAPCH' + #39 + ') OR (movbanco.tipogerador = ' + #39 + 'CTAPCH' + #39 +') OR (movbanco.tipogerador = ' + #39 + 'CTARCH' + #39 +') OR (movbanco.tipogerador = ' + #39 + 'CTPCARTAO' + #39 + '))');
    DMBANCO.TMovBanco.ParamByName('cod_movbanco').AsInteger := XViewRef.FieldByName('COD_PARCELACP').AsInteger;
    DMBANCO.TMovBanco.Open;

    If Not DMBANCO.TMovBanco.IsEmpty
    Then Begin
        DMBANCO.TMovBanco.Edit;
        DMBANCO.TMovBanco.FieldByName('FECH').AsString := 'N';
        DMBANCO.TMovBanco.FieldByName('ESTRU').AsString := '1';
        DMBANCO.TMovBanco.Post;
        DMBANCO.IBT.CommitRetaining;
    End;
end;

// localixa dados da conta a pagar e verifica principalmente se o pagamento que gerou a conta foi "cartão"
function TFPadraoContas.DadosParcelaCP: boolean;
begin
   FiltraTabela(DMCONTA.TCtaP,'CTAPAGAR','COD_CTAPAGAR', XViewRef.FieldByName('COD_CTAPAGAR').AsString,'');

   If DMCONTA.TCtaP.FieldByName('COBRANCA').AsString = 'Cartão' Then
       Result := true
   Else
       Result := false;
end;

procedure TFPadraoContas.DBCOBRANCAExit(Sender: TObject);
begin
  inherited;
   If DBCOBRANCA.Text = 'Cartão'
   Then Begin
       FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
       PBanco.Visible := true;
       PBanco.BringToFront;
       DBGCTA.SetFocus;
   End;
end;

procedure TFPadraoContas.DBColorComboBox1Exit(Sender: TObject);
begin
  inherited;
   If DBColorComboBox1.Text = 'Cartão'
   Then Begin
       FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
       PBanco.Top := 140;
       PBanco.Visible := true;
       PBanco.BringToFront;
       DBGCTA.SetFocus;
   End;

end;

procedure TFPadraoContas.RGJurosExit(Sender: TObject);
begin
  inherited;
      btngerar.SetFocus;
end;


 // pres key data inicio
procedure TFPadraoContas.EDDataInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (Key in['0'..'9',Chr(8),#13,#27]) then Key:= #0;

   if not (Key in[Chr(8)]) then
   begin
       if Length(EDDataInicio.Text)=2 then
       begin
           EDDataInicio.Text:=EDDataInicio.Text+'/';
           EDDataInicio.SelStart:=3;
       end else if Length(EDDataInicio.Text)=5 then begin
           EDDataInicio.Text:=EDDataInicio.Text+'/';
           EDDataInicio.SelStart:=6;
       end;
   end;

   if(key = #13)
   then begin
       if Length(Trim(EDDataInicio.Text))=0 then
       begin
           EDDataInicio.Text:=DatetoStr(Date());
       end else if Length(Trim(EDDataInicio.Text))=1 then
       begin
           EDDataInicio.Text:='0'+EDDataInicio.Text+Copy(DatetoStr(Date()), 3, 10);
       end else if Length(EDDataInicio.Text)<=3 then begin
           EDDataInicio.Text:=EDDataInicio.Text+Copy(DatetoStr(Date()), 4, 10);
       end else if Length(EDDataInicio.Text)=4 then begin
           EDDataInicio.Text:=Copy(EDDataInicio.Text,1,3)+'0'+Copy(EDDataInicio.Text,4,4)+Copy(DatetoStr(Date()), 6, 10);
       end else if Length(EDDataInicio.Text)<=6 then begin
           EDDataInicio.Text:=EDDataInicio.Text+Copy(DatetoStr(Date()), 7, 10);
       end else if (Length(EDDataInicio.Text)>6) and (Length(EDDataInicio.Text)<10) then begin
           EDDataInicio.Text:=Copy(EDDataInicio.Text, 1,6)+Copy(DatetoStr(Date()), 7, 10);
       end;
       EDDataFim.SetFocus;
   end;

    If Key=#27 Then
	    BtnFecharPainelFiltroClick(Self);
end;

//click botao filtrar
procedure TFPadraoContas.BtnFiltrarClick(Sender: TObject);
begin
  inherited;
  //traz o painel de filtro pra frente
  RBDataFiltro.ItemIndex := 0;
  EDDataInicio.Text := '';
  EDDataFim.Text := '';
  EDPessoaFiltro.Text:='';
  EDHistoricoFiltro.Text:='';
  LBCodPessoa.Caption := '';
  PFiltrarParcelas.Left:=StrToInt(FormatFloat('#####', ((PCONSULTA.Width/2)-(PFiltrarParcelas.Width/2))));
  PFiltrarParcelas.Top:=StrToInt(FormatFloat('#####', ((PCONSULTA.Height/2)-(PFiltrarParcelas.Height/2))));
  PFiltrarParcelas.Visible:=True;
  PFiltrarParcelas.BringToFront;
  TcxRadioButton(RBDataFiltro.Controls[RBDataFiltro.ItemIndex]).SetFocus;

end;

// key press data de fim
procedure TFPadraoContas.EDDataFimKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if not (Key in['0'..'9',Chr(8),#13,#27]) then Key:= #0;

   if not (Key in[Chr(8)]) then
   begin
       if Length(EDDataFim.Text)=2 then
       begin
           EDDataFim.Text:=EDDataFim.Text+'/';
           EDDataFim.SelStart:=3;
       end
       else if Length(EDDataFim.Text)=5 then begin
           EDDataFim.Text:=EDDataFim.Text+'/';
           EDDataFim.SelStart:=6;
       end;
   end;

   if(key = #13)
   then begin
       if Length(Trim(EDDataFim.Text))=0 then
       begin
           EDDataFim.Text:=DatetoStr(Date());
       end
       else if Length(Trim(EDDataFim.Text))=1 then
       begin
           EDDataFim.Text:='0'+EDDataFim.Text+Copy(DatetoStr(Date()), 3, 10);
       end
       else if Length(EDDataFim.Text)<=3 then begin
           EDDataFim.Text:=EDDataFim.Text+Copy(DatetoStr(Date()), 4, 10);
       end
       else if Length(EDDataFim.Text)=4 then begin
           EDDataFim.Text:=Copy(EDDataFim.Text,1,3)+'0'+Copy(EDDataFim.Text,4,4)+Copy(DatetoStr(Date()), 6, 10);
       end
       else if Length(EDDataFim.Text)<=6 then begin
           EDDataFim.Text:=EDDataFim.Text+Copy(DatetoStr(Date()), 7, 10);
       end
       else if (Length(EDDataFim.Text)>6) and (Length(EDDataFim.Text)<10)  then begin
           EDDataFim.Text:=Copy(EDDataFim.Text, 1,6)+Copy(DatetoStr(Date()), 7, 10);
       end;
       EDPessoaFiltro.SetFocus;
   end;

    If Key=#27 Then
	    BtnFecharPainelFiltroClick(Self);
end;

//onExit no campo pessoa do filtro
procedure TFPadraoContas.EDPessoaFiltroExit(Sender: TObject);
var
   XCodPessoa :Integer; //guarda codigo da pessoa
   XTmp :Boolean; // controla se foi informado no edit o codigo ou nao
begin
  inherited;

  //se nao for informado nd no campo passar
   if Trim(EDPessoaFiltro.Text) = ''
   then begin
       LBCodPessoa.Caption := '';
       Exit;
   end;

   //verifica se foi informado o codigo da pessoa
   try
       XCodPessoa := StrToInt(EDPessoaFiltro.Text);
       XTmp :=True;
   Except
       XTmp:=False;
   end;

   //se for do contas a pagar filtrar pelo fornecedor
   If XTipoPR='P'
   then begin
       if XTmp
       then begin
           //filtra pelo codigo do fornecedor
           If FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', IntToStr(XCodPessoa), '')=True
           then begin
               LBCodPessoa.Caption := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsString;
	            EDPessoaFiltro.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
               EDHistoricoFiltro.SetFocus;
           end
           else begin
               LBCodPessoa.Caption := '';
	            EDPessoaFiltro.Text:='';
               EDPessoaFiltro.SetFocus;
           end;
       end
       else begin
           //filtra pelo nome do fornecedor
           If FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'NOME', '', ' (upper(NOME) like upper('+#39+EDPessoaFiltro.Text+'%'+#39+'))')=True
           then begin
               LBCodPessoa.Caption := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsString;
	            EDPessoaFiltro.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
               EDHistoricoFiltro.SetFocus;
           end
           else begin
               LBCodPessoa.Caption := '';
	            EDPessoaFiltro.Text:='';
               EDPessoaFiltro.SetFocus;
           end;
       end;
   end
   else begin
       //conta a receber
       if XTmp
       then begin
           //filtra pelo codigo do cliente
           If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCodPessoa), '')=True
           then begin
               LBCodPessoa.Caption := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString;
	            EDPessoaFiltro.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
               EDHistoricoFiltro.SetFocus;
           end
           else begin
               LBCodPessoa.Caption := '';
	            EDPessoaFiltro.Text:='';
               EDPessoaFiltro.SetFocus;
           end;
       end
       else begin
           //filtra pelo nome do cliente
           If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'NOME', '', ' (upper(NOME) like upper('+#39+EDPessoaFiltro.Text+'%'+#39+'))')=True
           then begin
               LBCodPessoa.Caption := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString;
	            EDPessoaFiltro.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
               EDHistoricoFiltro.SetFocus;
           end else begin
               LBCodPessoa.Caption := '';
	            EDPessoaFiltro.Text:='';
               EDPessoaFiltro.SetFocus;
           end;
       end;

   end;
end;

//click fechar painel de filtro
procedure TFPadraoContas.BtnFecharPainelFiltroClick(Sender: TObject);
begin
  inherited;
  PFiltrarParcelas.SendToBack;
  PFiltrarParcelas.Visible := False;
end;

//click botao filtrar do painel filtro
procedure TFPadraoContas.BtnFiltrarFiltroClick(Sender: TObject);
var
   //data tmp
   XData :TDateTime;    
begin
  inherited;
   //validar data inicio
   if Trim(EDDataInicio.Text) <> ''
   then begin
       try
           XData := StrToDate(EDDataInicio.Text);
       Except
           Mensagem('   A T E N Ç Ã O   ','Data de Inicio Inválida!','',1,1,false,'I');
           EDDataInicio.Text := '';
           EDDataInicio.SetFocus;
           Exit;
       end;
   end;
   //validar data fim
   if Trim(EDDataFim.Text) <> ''
   then begin
       try
           XData := StrToDate(EDDataFim.Text);
       Except
           Mensagem('   A T E N Ç Ã O   ','Data de Fim Inválida!','',1,1,false,'I');
           EDDataFim.Text := '';
           EDDataFim.SetFocus;
           Exit;
       end;
   end;

   if (Trim(EDDataInicio.Text) <> '') and (Trim(EDDataFim.Text) <> '')and(StrToDate(EDDataFim.Text) <  StrToDate(EDDataInicio.Text)) then begin
       Mensagem('   A T E N Ç Ã O   ','Data de Fim é menor que Data de Inicio!','',1,1,false,'I');
       EDDataFim.Text := '';
       EDDataFim.SetFocus;
       Exit;
   end;



   XViewRef.Close;
   XViewRef.SQL.Clear;

   DMFINANC.TAlx.Close;
   DMFINANC.TAlx.SQL.Clear;

   // fazer select das view correspondentes
   If XTipoPR='P'
   Then begin
       XViewRef.SQL.Add('Select * From VWparCP ');
       XViewRef.SQL.Add('where (VWparCP.cod_loja = '+FMenu.LCODLOJA.Caption+')');

       DMFINANC.TAlx.SQL.Add(' SELECT SUM(VWPARCP.VALOR) AS TOTAL, SUM(vwparcP.valorpg) AS TOTALPG  FROM VWPARCP ');
       DMFINANC.TAlx.SQL.Add('where (VWparCP.cod_loja = '+FMenu.LCODLOJA.Caption+') ');
   end
   Else begin
       XViewRef.SQL.Add('Select * From VWparCR  ');
       XViewRef.SQL.Add('where (VWparCR.cod_loja = '+FMenu.LCODLOJA.Caption+')');

       DMFINANC.TAlx.SQL.Add(' SELECT SUM(VWPARCR.VALOR) AS TOTAL, SUM(vwparcr.valorpg) AS TOTALPG  FROM VWPARCR ');
       DMFINANC.TAlx.SQL.Add('where (VWparCR.cod_loja = '+FMenu.LCODLOJA.Caption+')');
   end;

   If (Trim(EDDataInicio.Text) <> '') and (Trim(EDDataFim.Text) <> '')
   Then Begin//filtrar pelo DTVENC Data de Vencimento da parcela e ordenar
      if RBDataFiltro.ItemIndex = 0
      then begin
       	XViewRef.SQL.Add(' And (DTLANC Between :Data1 and :Data2)');
			XViewRef.ParamByName('Data1').AsDate:=StrToDate(EDDataInicio.Text);
			XViewRef.ParamByName('Data2').AsDate:=StrToDate(EDDataFim.Text);

       	DMFINANC.TAlx.SQL.Add(' And (DTLANC Between :Data1 and :Data2)');
			DMFINANC.TAlx.ParamByName('Data1').AsDate:=StrToDate(EDDataInicio.Text);
			DMFINANC.TAlx.ParamByName('Data2').AsDate:=StrToDate(EDDataFim.Text);
      end else begin
           XViewRef.SQL.Add(' And (DTVENC Between :Data1 and :Data2)');
			XViewRef.ParamByName('Data1').AsDate:=StrToDate(EDDataInicio.Text);
			XViewRef.ParamByName('Data2').AsDate:=StrToDate(EDDataFim.Text);

       	DMFINANC.TAlx.SQL.Add(' And (DTVENC Between :Data1 and :Data2)');
			DMFINANC.TAlx.ParamByName('Data1').AsDate:=StrToDate(EDDataInicio.Text);
			DMFINANC.TAlx.ParamByName('Data2').AsDate:=StrToDate(EDDataFim.Text);
      end;
   End
   //data inicio
   else if Trim(EDDataInicio.Text) <> ''
   then begin
      // data lançamento
      if RBDataFiltro.ItemIndex = 0 then begin

                 XViewRef.SQL.Add(' And DTLANC >= :DATALACAMENTO ');
                 XViewRef.ParamByName('DATALACAMENTO').AsDate:=StrToDate(EDDataInicio.Text);

                 DMFINANC.TAlx.SQL.Add(' And VWparCP.DTLANC >= :DATALACAMENTO');
                 DMFINANC.TAlx.ParamByName('DATALACAMENTO').AsDate:=StrToDate(EDDataInicio.Text);
      end
      //data vencimento
      else if RBDataFiltro.ItemIndex = 1
      then begin
          //if XTipo='P'
           // then begin
                 XViewRef.SQL.Add(' And DTVENC >= :DATAVENCIMENTO ');
                 XViewRef.ParamByName('DATAVENCIMENTO').AsDate:=StrToDate(EDDataInicio.Text);

                 DMFINANC.TAlx.SQL.Add(' And DTVENC >= :DATAVENCIMENTO');
                 DMFINANC.TAlx.ParamByName('DATAVENCIMENTO').AsDate:=StrToDate(EDDataInicio.Text);
          // end
           // else begin
           //      XViewRef.SQL.Add(' And VWparCR.DTVENC >= :DATAVENCIMENTO ');
            //     XViewRef.ParamByName('DATAVENCIMENTO').AsDate:=StrToDate(EDDataInicio.Text);

            //     DMFINANC.TAlx.SQL.Add(' And VWparCR.DTVENC >= :DATAVENCIMENTO');
            //     DMFINANC.TAlx.ParamByName('DATAVENCIMENTO').AsDate:=StrToDate(EDDataInicio.Text);
           // end;
      end;
   end
   //data FIM
   else if Trim(EDDataFim.Text) <> ''
   then begin
      // data lançamento
      if RBDataFiltro.ItemIndex = 0 then begin
          // if XTipo='P'
          //  then begin
                 XViewRef.SQL.Add(' And DTLANC <= :DATALACAMENTO ');
                 XViewRef.ParamByName('DATALACAMENTO').AsDate:=StrToDate(EDDataFim.Text);

                 DMFINANC.TAlx.SQL.Add(' And DTLANC <= :DATALACAMENTO ');
                 DMFINANC.TAlx.ParamByName('DATALACAMENTO').AsDate:=StrToDate(EDDataFim.Text);
          //  end
           // else begin
             //    XViewRef.SQL.Add(' And VWparCR.DTLANC <= :DATALACAMENTO ');
            //     XViewRef.ParamByName('DATALACAMENTO').AsDate:=StrToDate(EDDataFim.Text);

            //     DMFINANC.TAlx.SQL.Add(' And VWparCR.DTLANC <= :DATALACAMENTO ');
           //      DMFINANC.TAlx.ParamByName('DATALACAMENTO').AsDate:=StrToDate(EDDataFim.Text);
          //  end;
      end
      //data vencimento
      else if RBDataFiltro.ItemIndex = 1
      then begin
         // if XTipo='P'
           // then begin
                 XViewRef.SQL.Add(' And DTVENC <= :DATAVENCIMENTO ');
                 XViewRef.ParamByName('DATAVENCIMENTO').AsDate:=StrToDate(EDDataFim.Text);

                 DMFINANC.TAlx.SQL.Add(' And DTVENC <= :DATAVENCIMENTO ');
                 DMFINANC.TAlx.ParamByName('DATAVENCIMENTO').AsDate:=StrToDate(EDDataFim.Text);
           // end
           // else begin
           //      XViewRef.SQL.Add(' And VWparCR.DTVENC <= :DATAVENCIMENTO ');
            //     XViewRef.ParamByName('DATAVENCIMENTO').AsDate:=StrToDate(EDDataFim.Text);

            //     DMFINANC.TAlx.SQL.Add(' And VWparCR.DTVENC <= :DATAVENCIMENTO ');
             //    DMFINANC.TAlx.ParamByName('DATAVENCIMENTO').AsDate:=StrToDate(EDDataFim.Text);
           // end;
      end;
   end;

   // filtrar pelo codigo pessoa
   if LBCodPessoa.Caption <> ''
   then begin
      if XTipoPR='P'
      then begin
           XViewRef.SQL.Add(' and VWparCP.cod_fornec = '+LBCodPessoa.Caption);

           DMFINANC.TAlx.SQL.Add(' and VWparCP.cod_fornec = '+LBCodPessoa.Caption);
      end else begin
           XViewRef.SQL.Add(' and VWparCR.cod_cliente = '+LBCodPessoa.Caption);

           DMFINANC.TAlx.SQL.Add(' and VWparCR.cod_cliente = '+LBCodPessoa.Caption);
      end;
   end;

   // filtrar pelo HISTORICO
   if EDHistoricoFiltro.Text <> ''
   then begin
      if XTipoPR='P'
      then begin
           XViewRef.SQL.Add(' and (upper(VWparCP.HISTORICO) like upper('+#39+EDHistoricoFiltro.Text+'%'+#39+'))');
           DMFINANC.TAlx.SQL.Add(' and (upper(VWparCP.HISTORICO) like upper('+#39+EDHistoricoFiltro.Text+'%'+#39+'))');
      end else begin
           XViewRef.SQL.Add(' and (upper(VWparCR.HISTORICO) like upper('+#39+EDHistoricoFiltro.Text+'%'+#39+'))');
           DMFINANC.TAlx.SQL.Add(' and (upper(VWparCR.HISTORICO) like upper('+#39+EDHistoricoFiltro.Text+'%'+#39+'))');
      end;
   end;


   //filtra para contas baixadas ou não
   If PIndividual.Visible=True
   Then Begin  //filtra contas em aberto
		XViewRef.SQL.Add(' And ((Fech <> '+#39+'S'+#39+') or (Fech is null))');
       DMFINANC.TAlx.SQL.Add(' And ((Fech <> '+#39+'S'+#39+') or (Fech is null))');
   End
   Else Begin
	   If (XTipoPR='P') and (TCConsultContas.ActiveTab<>3)
      Then Begin
	   		XViewRef.SQL.Add(' And (Fech = '+#39+'S'+#39+') ');
           DMFINANC.TAlx.SQL.Add(' And (Fech = '+#39+'S'+#39+') ');
      End;
	   If (XTipoPR<>'P')
      Then Begin
	   		XViewRef.SQL.Add(' And (Fech = '+#39+'S'+#39+') ');
           DMFINANC.TAlx.SQL.Add(' And (Fech = '+#39+'S'+#39+') ');
      End;
   End;

   //ordenar
   if (Trim(EDDataInicio.Text) <> '') and (Trim(EDDataFim.Text) <> '') then
   	XViewRef.SQL.Add(' ORDER BY DTVENC, NOME ')
   else
   	if Trim(EDPessoaFiltro.Text) <> '' then
   		XViewRef.SQL.Add(' ORDER BY NOME ')
       else
       	if Trim(EDHistoricoFiltro.Text) <> '' then
   			XViewRef.SQL.Add(' ORDER BY HISTORICO ');

   //abre sql com filtro
   XViewRef.SQL.Text;
   XViewRef.Open;

   {//Passa Valores para as edits
   	If TCConsultContas.ActiveTab=0 Then
       	EdTotIndividual.ValueNumeric:=0;
   	If TCConsultContas.ActiveTab=1 Then
       	EDTotAgrup.ValueNumeric:=0;
   	If TCConsultContas.ActiveTab=2 Then
       	EdTotBaixadas.ValueNumeric:=0;

   If not XViewRef.IsEmpty
   Then Begin
       XViewRef.First;
       while not XViewRef.Eof do
       begin
          // DMFINANC.TAlx.SQL.Add(' SELECT SUM(VWPARCR.VALOR) AS TOTAL, SUM(vwparcr.valorpg) AS TOTALPG  FROM VWPARCR ')
           //Passa Valores para as edits
           If TCConsultContas.ActiveTab=0 Then
               EdTotIndividual.ValueNumeric:=EdTotIndividual.ValueNumeric+XViewRef.FieldByName('VALOR').AsCurrency;
           If TCConsultContas.ActiveTab=1 Then
               EDTotAgrup.ValueNumeric:=EDTotAgrup.ValueNumeric+XViewRef.FieldByName('VALOR').AsCurrency;
           If TCConsultContas.ActiveTab=2 Then
               EdTotBaixadas.ValueNumeric:=EdTotBaixadas.ValueNumeric+XViewRef.FieldByName('valorpg').AsCurrency;

           XViewRef.Next;
       end;
   end;

   XViewRef.First;     }
   //abre sql com totalizadores
   DMFINANC.TAlx.SQL.Text;
   DMFINANC.TAlx.Open;
   If not DMFINANC.TAlx.IsEmpty
   Then Begin
   	//Passa Valores para as edits
   	If TCConsultContas.ActiveTab=0 Then
       	EdTotIndividual.ValueNumeric:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;
   	If TCConsultContas.ActiveTab=1 Then
       	EDTotAgrup.ValueNumeric:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;
   	If TCConsultContas.ActiveTab=2 Then
       	EdTotBaixadas.ValueNumeric:=DMFINANC.TAlx.FieldByName('TOTALPG').AsCurrency;
   End
   Else Begin
   	//Passa Valores para as edits
   	If TCConsultContas.ActiveTab=0 Then
       	EdTotIndividual.ValueNumeric:=0;
   	If TCConsultContas.ActiveTab=1 Then
       	EDTotAgrup.ValueNumeric:=0;
   	If TCConsultContas.ActiveTab=2 Then
       	EdTotBaixadas.ValueNumeric:=0;
   End;


   BtnFecharPainelFiltroClick(Self);

end;

// on exit  data fim
procedure TFPadraoContas.EDDataFimExit(Sender: TObject);
var Key: Char;
begin
  inherited;
  if Trim(EDDataFim.Text) <> ''
   then begin
       Key := #13;
       EDDataFimKeyPress(Self,Key);
   end;
end;

// on exit  data inicio
procedure TFPadraoContas.EDDataInicioExit(Sender: TObject);
var Key: Char;
begin
  inherited;
   if Trim(EDDataInicio.Text) <> ''
   then begin
       Key := #13;
       EDDataInicioKeyPress(Self,Key);
   end;
end;

procedure TFPadraoContas.EDHistoricoFiltroExit(Sender: TObject);
begin

end;

// mover painel com o click do mouse no painel
procedure TFPadraoContas.PFiltrarParcelasMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
    ReleaseCapture();
    SendMessage(PFiltrarParcelas.Handle, $A1, 2, 0);
end;

// key press campo filtro pessoa
procedure TFPadraoContas.EDPessoaFiltroKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If key=#13
    Then Begin
        EdHistoricoFiltro.SetFocus;
    End;
    If Key=#27 Then
	    BtnFecharPainelFiltroClick(Self);
end;
// key press campo historio
procedure TFPadraoContas.EDHistoricoFiltroKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If key=#13
    Then Begin
       BtnFiltrarFiltroClick(Self);
    End;
    If Key=#27 Then
       BtnFecharPainelFiltroClick(Self);
end;

procedure TFPadraoContas.BtnFechaClick(Sender: TObject);
begin
  //inherited;

  // - 06/05/2009:  quando o usuario estava click no "X" estava fechando sem efetuar nenhum comando de cancelamento.. (fechamento de pedido)

   If XLancAut = true
   Then Begin
       BtnCancelar.Click;
   End
   Else Begin
      inherited;
   End;

end;

procedure TFPadraoContas.DBDataKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited; {
  if not (Key in[Chr(8)]) then
   begin

       if Length(DBColorEdit3.Text)=2 then
       begin
           DBColorEdit3.Text:=DBColorEdit3.Text+'/';
           DBColorEdit3.SelStart:=3;
       end else if Length(DBColorEdit3.Text)=5 then begin
           DBColorEdit3.Text:=DBColorEdit3.Text+'/';
           DBColorEdit3.SelStart:=6;
       end;
   end;

   if not (Key in['0'..'9',Chr(8),#13,#27]) then Key:= #0
    else if key in[Chr(8),#13,#27] then
    begin
       // eh nois !!
    end
    else if Length(DBColorEdit3.Text) = 0
    then begin
        if key in['4'..'9']
        then begin
            DBColorEdit3.Text := '0';
            DBColorEdit3.SelStart := 2;
        end;

    end
    else if Length(DBColorEdit3.Text) = 1
    then begin
        if DBColorEdit3.Text = '3'
        then begin
            if not (key in['0'..'1']) then key := #0;
        end;
        if DBColorEdit3.Text = '0'
        then begin
            if not (key in['1'..'9']) then key := #0;
        end;
    end
    else if (Length(DBColorEdit3.Text) = 2) or (Length(DBColorEdit3.Text) = 3)
    then begin
        if key in['2'..'9']
        then begin
            DBColorEdit3.Text := DBColorEdit3.Text+'0';
            DBColorEdit3.SelStart := 4;
        end;
    end
    else if (Length(DBColorEdit3.Text) = 4)
    then begin
        if Copy(DBColorEdit3.Text, 4,4) = '1'
        then begin
            if not (key in['0'..'2']) then key := #0;
        end;
        if Copy(DBColorEdit3.Text, 4,4) = '0'
        then begin
            if not (key in['1'..'9']) then key := #0;
        end;
    end
    else if (Length(DBColorEdit3.Text) = 5) or (Length(DBColorEdit3.Text) = 6)
    then begin
        if not (key in ['1'..'2']) then key := #0;
    end;}
end;

procedure TFPadraoContas.cbFiltroCobrBaixadasKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  If (key in [#13, #27])
  Then Begin
	   FiltraParcelaEdit('ORDERCARTAO');
  End;
end;

procedure TFPadraoContas.cbFiltroCobrKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  If (key in [#13, #27])
  Then Begin
	   FiltraParcelaEdit('ORDERCARTAO');
  End;
end;

procedure TFPadraoContas.cbFiltroCobrBaixadasClick(Sender: TObject);
begin
  inherited;
	FiltraParcelaEdit('ORDERCARTAO');
end;

procedure TFPadraoContas.cbFiltroCobrClick(Sender: TObject);
begin
  inherited;
  FiltraParcelaEdit('ORDERCARTAO');
end;
procedure TFPadraoContas.BitBtn15Click(Sender: TObject);
begin
  inherited;
   BtnFiltrarFiltro.Click;
   FsRel.LoadFromFile('C:\MZR\MACS\Rel\FrfContasFiltro.frf');
   FsRel.ShowReport;
end;

procedure TFPadraoContas.frmFormPagEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN
   Then Begin
       if FrmFormPag.EDCodigo.Text<>''
       Then Begin
       	//seleciona a forma de pagamento
           If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_INTERNO', FrmFormPag.EDCodigo.Text, '')
           Then Begin
              XCod_FormPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
              FrmFormPag.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
              FrmFormPag.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
           End
           Else Begin
              XCod_FormPag:=-1;
              FrmFormPag.EDCodigo.Text:='';
              FrmFormPag.EdDescricao.Text:='';
           End;
       End;
   End;

end;




procedure TFPadraoContas.QRBandCarneBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
   YearAtu, MonthAtu, DayAtu:word;
    XNumFisc: String;
	 XCOD_Selecao, I: Integer;
begin
  inherited;
//     gbTitulo1.XCarne:=true ;
     //FILTRA PEDIDO PARA VERIFICAR SE FOI ADICIONADO NUMERO DE NF
     If DMFINANC.TAlx.FieldByName('TIPOGERADOR').AsString='PEDVENDA'
     Then Begin
         DMSAIDA.TPedV.Close;
         DMSAIDA.TPedV.SQL.Clear;
         DMSAIDA.TPedV.SQL.Add('SELECT * FROM PEDVENDA WHERE PEDVENDA.COD_PEDVENDA=:CODPDV');
         DMSAIDA.TPedV.ParamByName('CODPDV').AsInteger:=DMFinanc.TAlx.FieldByName('COD_GERADOR').AsInteger;
         DMSAIDA.TPedV.Open;

         If Not DMSAIDA.TPedV.IsEmpty Then
             XNumFisc:=DMSAIDA.TPedV.FieldByName('NUMFISCAL').AsString
         Else
             XNumFisc:='';
     End;
     //FILTRA CONTA CORRENTE DE ACORDO COM A SELECIONADA
     DMBANCO.TCtaCor.Close;
     DMBANCO.TCtaCor.SQL.Clear;
     DMBANCO.TCtaCor.SQL.Add(' select * from ctacor where ');
     DMBANCO.TCtaCor.SQL.Add(' ctacor.cod_ctacor=:CODCTACOR');
     DMBANCO.TCtaCor.ParamByName('CODCTACOR').AsInteger:=XCOD_CTACORBLT;
     DMBANCO.TCtaCor.Open;

     //FILTRA AGENCIA DE ACORDO COM CONTA CORRENTE SELECIONADA
     DMCONTA.TAlx.Close;
     DMCONTA.TAlx.SQL.Clear;
     DMCONTA.TAlx.SQL.Add(' select * from agencia where agencia.cod_agencia=:CODAGENCIA ');
     DMCONTA.TAlx.ParamByName('CODAGENCIA').AsInteger:=DMBANCO.TCtaCor.FieldByName('COD_AGENCIA').AsInteger;
     DMCONTA.TAlx.Open;

     //FILTRA BANCO DE ACORDO COM CONTA CORRENTE SELECIONADA
     DMBANCO.TAlx.Close;
     DMBANCO.TAlx.SQL.Clear;
     DMBANCO.TAlx.SQL.Add(' select * from banco where banco.cod_banc=:CODBANCO ');
     DMBANCO.TAlx.ParamByName('CODBANCO').AsInteger:=DMCONTA.TAlx.FieldByName('COD_BANCO').AsInteger;
     DMBANCO.TAlx.Open;

     //------------------------------------------------------------------------------------------------------------
     //Teste - Felipe - 06/03/2015
     //ACBrBoleto (Cedente e Banco), Titulo (Sacado)
     //PASSA VALORES PARA O COMPONENTE DE BOLETO
     ACBrBoleto.ListadeBoletos.Clear;
     Titulo := ACBrBoleto.CriarTituloNaLista;
     ACBrBoleto.ACBrBoletoFC.LayOut := lCarne;
       
     {If ValidCPF(DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString)=True
     Then Begin
         ACBrBoleto.Cedente.TipoInscricao:=pFisica;
     End
     Else Begin }
     ACBrBoleto.Cedente.TipoInscricao:=pJuridica;
     //End;
       
     ACBrBoleto.Cedente.Nome:=DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString;
     ACBrBoleto.Cedente.CNPJCPF := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;
     ACBrBoleto.Cedente.Logradouro := DMMACS.TEmpresa.FieldByName('ENDERECO').AsString;
     ACBrBoleto.Cedente.Bairro := DMMACS.TEmpresa.FieldByName('BAIRRO').AsString;
     ACBrBoleto.Cedente.Agencia:=DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString;
     ACBrBoleto.Cedente.AgenciaDigito:= DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
     ACBrBoleto.Cedente.Conta:=DMBANCO.TCtaCor.FieldByName('NUMCTACOR').AsString;
     ACBrBoleto.Cedente.ContaDigito:= DMBANCO.TCtaCor.FieldByName('DIGCTACOR').AsString;
     ACBrBoleto.Cedente.CodigoCedente:=DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString;

     //NÚMERO DO BANCO DEFINI TIPO DE COBRANÇA (LAYOUT)
     case (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger) of
         001 : ACBrBoleto.Banco.TipoCobranca := cobBancoDoBrasil;
         104 : ACBrBoleto.Banco.TipoCobranca := cobCaixaEconomica;
         237 : ACBrBoleto.Banco.TipoCobranca := cobBradesco;
         341 : ACBrBoleto.Banco.TipoCobranca := cobItau;
         399 : ACBrBoleto.Banco.TipoCobranca := cobHSBC;
         748 : ACBrBoleto.Banco.TipoCobranca := cobSicred;
         756 : ACBrBoleto.Banco.TipoCobranca := cobBancoob;
         else  ShowMessage('Banco não encontrado!');
     end;
     ACBrBoleto.Banco.Numero := DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger;

     //TESTE - CAIXA ECONÔMICA... 10.03.2015
     //CARTEIRA É DIFERENTE PARA A CAIXA
     if (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 104)
         then begin
             if (DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString = '01') then
                 Titulo.Carteira := 'SR' //SEM Registro
             else
                 Titulo.Carteira := 'RG'; //COM Registro
         end
     //A CARTEIRA É IGUAL PARA O RESTANTE
     else
         Titulo.Carteira := DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString;

     Titulo.EspecieMod := 'R$';
     Titulo.LocalPagamento := 'Pagar preferêncialmente nas agências do Banco';
     Titulo.Vencimento:=DMFinanc.TAlx.FieldByName('DTVENC').AsDateTime;
     Titulo.DataDocumento:=DMFinanc.TAlx.FieldByName('DTLANC').AsDateTime;
     Titulo.EspecieDoc:= 'DM';
     Titulo.Aceite := atNao;
     Titulo.DataProcessamento:=Date();
     Titulo.NossoNumero:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString;
     Titulo.ValorDocumento:=DMFinanc.TAlx.FieldByName('VALOR').AsCurrency;
     //sacado
     Titulo.Sacado.NomeSacado:=TiraCaracter(TiraAcentos(DMFinanc.TAlx.FieldByName('SACADO').AsString), '-');

     if ValidCPF(DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString)=True then
         Titulo.Sacado.Pessoa := pFisica
     else
         Titulo.Sacado.Pessoa := pJuridica;
           
     Titulo.Sacado.CNPJCPF:=DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString;
     Titulo.Sacado.Logradouro:=DMFinanc.TAlx.FieldByName('ENDERECO').AsString;
     Titulo.Sacado.Bairro:=DMFinanc.TAlx.FieldByName('Bairro').AsString;
     Titulo.Sacado.Cidade:=DMFinanc.TAlx.FieldByName('CIDADE').AsString;
     Titulo.Sacado.UF:=DMFinanc.TAlx.FieldByName('UF_ESTADO').AsString;
     Titulo.Sacado.CEP:=TiraCaracter(DMFinanc.TAlx.FieldByName('CEP').AsString, '-');
     Titulo.Sacado.Numero:=DMFinanc.TAlx.FieldByName('endnumero').AsString;
     {If DMMACS.TLoja.FieldByName('JUROS').AsString<>'' Then
         Titulo.ValorMoraJuros:=(DMMACS.TLoja.FieldByName('JUROS').AsCurrency)/30;}
     Titulo.ValorAbatimento := 0;
     Titulo.DataMoraJuros := 0;
//     Titulo.PercentualMulta := 0;
     Titulo.DataAbatimento := 0;

     Titulo.Mensagem.Text := XInstrucPadraoBlt+#13#10+XTextoMultaBlt+#13#10+XTextoJurosBlt;
     
     If FMenu.XTIPOBOLTO='R' Then
       Titulo.Sacado.Complemento:='1'
     Else
       Titulo.Sacado.Complemento:='3';
       
     If XtipoGer1<>2
     Then Begin//Não for uma copia do carne
         Titulo.NumeroDocumento:=XNumFisc+'-'+DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString+':'+DMFinanc.TAlx.FieldByName('NUMPARC').AsString;
		  Titulo.NossoNumero:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString;
     End
     Else Begin
         Titulo.NumeroDocumento:=XNumFisc+'-'+DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString+':'+DMFinanc.TAlx.FieldByName('NUMPARC').AsString;
		  Titulo.NossoNumero:=DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString;
     End;
     
     Titulo.Instrucao1 :=(DMBANCO.TCtaCor.FieldByName('INSTRUBOLETO').AsString +#13+ DMCONTA.TParcCR.FieldByName('TEXTOBLT').AsString);
     //Montar Nosso Numero para BB e cedente de 7 digitos
     If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger=1) And (Length(DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString)=7)
     Then Begin
     	Titulo.NossoNumero:=ConcatZero(DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString, 10);
     	Titulo.NossoNumero:=DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString+Titulo.NossoNumero;
     End;
     Titulo.LocalPagamento:='PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO.';
     //Montar Nosso Numero para SICOOB
     If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='756')
     Then Begin
         Titulo.LocalPagamento:='ATÉ O VENCIMENTO, PREFERENCIALMENTE NAS AGÊNCIAS SICOOB.';
         //extratifica data Atual
         DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
         If XtipoGer1<>2
         Then Begin //Se naum for uma copia do Boleto
             //Titulo.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+ConcatZero(DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString, 6);
         End
         Else Begin
             Titulo.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+ConcatZero(DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString, 6);
         End;
     End;
     //Montar Nosso Numero para SICREDI
     If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='748')
     Then Begin
         Titulo.LocalPagamento:='ATÉ O VENCIMENTO, PREFERENCIALMENTE NAS AGÊNCIAS SICREDI.';
         //extratifica data Atual
         DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
         If XtipoGer1<>2
         Then Begin //Se naum for uma copia do Boleto
             Titulo.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+'2'+ConcatZero(DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString, 5);
         End
         Else Begin
             Titulo.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+'2'+ConcatZero(DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString, 5);
         End;
     End;

     ACBrBoleto.ACBrBoletoFC.LayOut := lCarne;
     ACBrBoletoFCFR.LayOut := lCarne;
     
     {
     //PASSA VALORES PARA O COMPONENTE DE BOLETO
     gbTitulo1.Instrucoes.Add(DMBANCO.TCtaCor.FieldByName('INSTRUBOLETO').AsString+#13+DMCONTA.TParcCR.FieldByName('TEXTOBLT').AsString);
     gbTitulo1.Carteira:=DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString;
     gbTitulo1.Cedente.Nome:=DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString;
     gbTitulo1.Cedente.CodigoCedente:=DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString;
     gbTitulo1.Cedente.DigitoCodigoCedente:=DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT').AsString;
     gbTitulo1.Cedente.ContaBancaria.CodigoAgencia:=DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString;
     gbTitulo1.Cedente.ContaBancaria.DigitoAgencia:=DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
     gbTitulo1.Cedente.ContaBancaria.NumeroConta:=DMBANCO.TCtaCor.FieldByName('NUMCTACOR').AsString;
     gbTitulo1.Cedente.ContaBancaria.DigitoConta:=DMBANCO.TCtaCor.FieldByName('DIGCTACOR').AsString;
     gbTitulo1.Cedente.ContaBancaria.Banco.Codigo:=DMBANCO.TAlx.FieldByName('NUMBANCO').AsString;
     gbTitulo1.DataDocumento:=DMFinanc.TAlx.FieldByName('DTLANC').AsDateTime;
     gbTitulo1.DataVencimento:=DMFinanc.TAlx.FieldByName('DTVENC').AsDateTime;

     If XtipoGer1<>2
     Then Begin//Não for uma copia do carne
         gbTitulo1.NumeroDocumento:=XNumFisc+'-'+DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString+':'+DMFinanc.TAlx.FieldByName('NUMPARC').AsString;
		  gbTitulo1.NossoNumero:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString;

     End
     Else Begin
         gbTitulo1.NumeroDocumento:=XNumFisc+'-'+DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString+':'+DMFinanc.TAlx.FieldByName('NUMPARC').AsString;
		  gbTitulo1.NossoNumero:=DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString;
     End;
     gbTitulo1.EspecieDocumento:=edDuplicataMercantil;
     gbTitulo1.Instrucoes.Clear;
     gbTitulo1.Instrucoes.Add(DMBANCO.TCtaCor.FieldByName('INSTRUBOLETO').AsString +#13+ DMCONTA.TParcCR.FieldByName('TEXTOBLT').AsString);

     //Montar Nosso Numero para BB e cedente de 7 digitos
     If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger=1) And (Length(DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString)=7)
     Then Begin
         If XtipoGer1<>2
         Then Begin //Se naum for uma copia do Boleto
             gbTitulo1.NossoNumero:=ConcatZero(DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString, 10);
			  gbTitulo1.NossoNumero:=DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString+gbTitulo1.NossoNumero;
         End
         Else Begin
             gbTitulo1.NossoNumero:=ConcatZero(DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString, 10);
			  gbTitulo1.NossoNumero:=DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString+gbTitulo1.NossoNumero;
         End;
     End;
     //Montar Nosso Numero para SICOOB
     If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='756')
     Then Begin
         //extratifica data Atual
         DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
         If XtipoGer1<>2
         Then Begin //Se naum for uma copia do Boleto
             gbTitulo1.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+ConcatZero(DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString, 6);
         End
         Else Begin
             gbTitulo1.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+ConcatZero(DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString, 6);
         End;
     End;
     //Montar Nosso Numero para SICREDI
     If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='748')
     Then Begin
         //extratifica data Atual
         DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
         If XtipoGer1<>2
         Then Begin //Se naum for uma copia do Boleto
             gbTitulo1.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+'2'+ConcatZero(DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString, 5);
         End
         Else Begin
             gbTitulo1.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+'2'+ConcatZero(DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString, 5);
         End;
     End;
     //Montar Nosso Numero para ITAU
     If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='341')
     Then Begin
         gbTitulo1.NossoNumero:=DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString;
     End;


     gbTitulo1.DataProcessamento:=Date();
     gbTitulo1.Sacado.Endereco.Numero:='';
     //sacado
     gbTitulo1.Sacado.Endereco.Bairro:=DMFinanc.TAlx.FieldByName('Bairro').AsString;
     gbTitulo1.Sacado.Endereco.CEP:=TiraCaracter(DMFinanc.TAlx.FieldByName('CEP').AsString, '-');
     gbTitulo1.Sacado.Endereco.Cidade:=DMFinanc.TAlx.FieldByName('CIDADE').AsString;
     gbTitulo1.Sacado.Endereco.Estado:=DMFinanc.TAlx.FieldByName('UF_ESTADO').AsString;
     gbTitulo1.Sacado.Endereco.Rua:=DMFinanc.TAlx.FieldByName('ENDERECO').AsString;
     gbTitulo1.Sacado.Nome:=DMFinanc.TAlx.FieldByName('SACADO').AsString;
     If ValidCPF(DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString)=True
     Then Begin
         XPessoa:= 'fisica';
         gbTitulo1.Sacado.TipoInscricao:=tiPessoaFisica;
     End
     Else Begin
         XPessoa:= 'juridica';
         gbTitulo1.Sacado.TipoInscricao:=tiPessoaJuridica;
     End;
     gbTitulo1.Sacado.NumeroCPFCGC:=DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString;
     gbTitulo1.ValorDocumento:=DMFinanc.TAlx.FieldByName('valor').AsCurrency;
     If DMMACS.TLoja.FieldByName('JUROS').AsString<>'' Then
         gbTitulo1.ValorMoraJuros:=(DMMACS.TLoja.FieldByName('JUROS').AsCurrency)/30;
     }
     //Se for impressão de um novo carnê e naum uma copia
     DMCONTA.TParcCR.Close;
     DMCONTA.TParcCR.SQL.Clear;
     DMCONTA.TParcCR.SQL.Add('SELECT * FROM PARCELACR WHERE PARCELACR.COD_PARCELACR=:CODPAR');
     DMCONTA.TParcCR.ParamByName('CODPAR').AsInteger:=DMFINANC.TAlx.FieldByName('COD_PARCELACR').AsInteger;
     DMCONTA.TParcCR.Open;
     If Not DMCONTA.TParcCR.IsEmpty
     Then Begin
         Try
             If (XtipoGer1<>2)
             Then Begin
                 DMCONTA.TParcCR.Edit;
                 DMCONTA.TParcCR.FieldByName('IMP').AsString:='B';
                 If DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency=0
                 Then Begin
                     DMBANCO.TCtaCor.Edit;
                     DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency:=1;
                     DMBANCO.TCtaCor.Post;
                 End;
                 DMCONTA.TParcCR.FieldByName('NUMFISC').AsString:=XNumFisc;
                 DMCONTA.TParcCR.FieldByName('COD_CTACOR').AsInteger:=XCOD_CTACORBLT;
                 DMCONTA.TParcCR.FieldByName('NUMBOLETO').AsString:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString;
//                 DMCONTA.TParcCR.FieldByName('NOSSONUMBLT').AsString:=gbTitulo1.NossoNumero+gbTitulo1.DigitoNossoNumero;
                 DMCONTA.TParcCR.FieldByName('TIPOBLT').AsString:=FMenu.XTIPOBOLTO;
                 DMCONTA.TParcCR.Post;
                 DMCONTA.IBT.CommitRetaining;
                 DMBANCO.TCtaCor.Edit;
                 DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency+1;
                 DMBANCO.TCtaCor.Post;
                 DMBANCO.IBT.CommitRetaining;
             End;
               //Paulo 20/01/2011:Formata os dados do carnê
//              gbTitulo1.Visualizar
			ACBrBoleto.Imprimir;
         Except
             Mensagem('A T E N Ç Ã O ', 'O carnê não foi impresso devido a uma falha ao gravar o tipo de impressão na parcela!', '', 1,1, false, 'a');
         End;

     End;
     {
     //Paulo 20/01/2011: Joga os dados do carnê nas label no QuickCarnê
     ///FICHA DE COMPENSAÇÃO///
     QRlbAg2.Caption := gbTitulo1.Cedente.ContaBancaria.Banco.Codigo + '-' + gbTitulo1.Cedente.ContaBancaria.Banco.Digito;
     lbCedente.Caption:= AnsiUpperCase(gbTitulo1.Cedente.Nome);
     lbDtVenc.Caption:= FormatDateTime('dd/mm/yyyy',gbTitulo1.DataVencimento);
     lbAgCodCed.Caption:= gbTitulo1.XAgCodCed;
     lbDtDoc.Caption:=FormatDateTime('dd/mm/yyyy',gbTitulo1.DataDocumento);
     lbNumDoc.Caption:= gbTitulo1.NumeroDocumento;
     lbEspDoc.Caption:=gbTitulo1.XEspecieDoc;
     lbAceite.Caption:= 'N';
     lbDtProcesso.Caption:=FormatDateTime('dd/mm/yyyy',Now);
     lbNossoNum.Caption:= gbTitulo1.XNossoNumero;
     lbCarteira.Caption:= gbTitulo1.XCarteira;
     lbEspecie.Caption:= 'R$';
     lbQuantidade.Caption:= '1';
     lbValor.Caption:=FormatCurr('#,##0.00',gbTitulo1.ValorDocumento);
     lbValorDoc.Caption:= FormatCurr('#,##0.00',gbTitulo1.ValorDocumento);
     //Bloco de instruções para passar informações de instruções bancarias
     gbTitulo1.Instrucoes.Text;
     MemoAuxiliarInstrucao.Lines.Clear;
	  MemoAuxiliarInstrucao.Lines.AddStrings(gbTitulo1.Instrucoes);
     MemoAuxiliarInstrucao.Text;
     MemoAuxiliarInstrucao.BringToFront;
     QrlCarneInst01.Caption:=MemoAuxiliarInstrucao.Lines[0];
     QrlCarneInst02.Caption:=MemoAuxiliarInstrucao.Lines[1];
     QrlCarneInst03.Caption:=MemoAuxiliarInstrucao.Lines[2];
     QrlCarneInst04.Caption:=MemoAuxiliarInstrucao.Lines[3];
     QrlCarneInst05.Caption:=MemoAuxiliarInstrucao.Lines[4];
     lbNomeSacado.Caption:=AnsiUpperCase(gbTitulo1.Sacado.Nome);
     if XPessoa = 'fisica' then
         lbCpf.Caption := 'CPF: ' + FormatarComMascara('!000\.000\.000\-00;0; ',gbTitulo1.Sacado.NumeroCPFCGC)
     else
         lbCpf.Caption := 'CNPJ: ' + FormatarComMascara('!00\.000\.000\/0000\-00;0; ',gbTitulo1.Sacado.NumeroCPFCGC);
     lbEnd.Caption:=AnsiUpperCase(gbTitulo1.Sacado.Endereco.Rua + ', ' + gbTitulo1.Sacado.Endereco.Numero);
     lbBairroCidCepPlan.Caption:=AnsiUpperCase( gbTitulo1.Sacado.Endereco.Bairro +' '+gbTitulo1.Sacado.Endereco.Cidade +
                                 ' - '+ gbTitulo1.Sacado.Endereco.Estado + '        CEP:'+FormatarComMascara('00000-000;0; ',
                                 gbTitulo1.Sacado.Endereco.CEP)+'       Parc/Plan:'+DMFinanc.TAlx.FieldByName('NUMPARC').AsString);
     lbLinhaDig.Caption := gbTitulo1.CodigoBarra.LinhaDigitavel;
     ImCodBarra.Picture.Assign(gbTitulo1.CodigoBarra.Imagem.Picture);

     ///RECIBO SACADO////
     lbParcela.Caption:=DMFinanc.TAlx.FieldByName('NUMPARC').AsString;
     lbDtVenc2.Caption:=lbDtVenc.Caption;
     lbAgCodCed2.Caption:=lbAgCodCed.Caption;
     lbCedente2.Caption:=Copy(gbTitulo1.Cedente.Nome,1,26);
     lbNossoNum2.Caption:= lbNossoNum.Caption;
     lbNumDoc2.Caption:= lbNumDoc.Caption;
     lbSacador2.Caption:=Copy(lbNomeSacado.Caption,1,26);
     lbCPF2.Caption:=lbCpf.Caption;
     lbValorDoc2.Caption:=lbValorDoc.Caption;
     QRlbAg.Caption:=QRlbAg2.Caption;

     QRBandCarne.Refresh;
     QRBandCarne.Repaint;
     gbTitulo1.XCarne:=false ;
     }
end;

function TFPadraoContas.VerificaParcelaFixa(XDia, XMes, XAno:String): String;
var
  XValidacao:Integer;
  XDataValidada:String;
begin
   ///
   XValidacao:=0;
   while XValidacao = 0 do
   begin
   	try
           If StrToInt(xmes)>12
           Then Begin
               xmes:='01';
               xano:= IntToStr(StrToInt(xano)+1);
           End;
       	StrToDate(XDia+'/'+XMes+'/'+XAno);
           XDataValidada:=XDia+'/'+XMes+'/'+XAno;
       	XValidacao:=1;
       except
           XDia:=IntToStr(StrToInt(XDia)-1);
       end;
   end;

   Result:=XDataValidada;

end;



procedure TFPadraoContas.DBCartoesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
       If Not DMFINANC.TCartao.IsEmpty Then//'se cartão não estiver vazio
           XCod_Cartao:=DMFINANC.TCartao.FieldByName('COD_CARTAO').AsInteger
       Else
           XCod_Cartao:=-1;

       PCartoes.Visible:=False;
       DBCobranca.SetFocus;
   End;
   If Key = VK_ESCAPE
   Then Begin
       PCartoes.Visible:=False;
       DBCobranca.SetFocus;
   End;
end;

procedure TFPadraoContas.QRBandCarneAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
   QRCarne.Refresh;
   QRCarne.Repaint;
end;

//Edmar - 24/10/2013 - Procedure para imprimir o boleto pelo sistema do Cobre Bem
procedure TFPadraoContas.ImpBoletoCobreBem(CODCTA, TIPOIMP: Integer;
  IMPRIMIR, remessa: Boolean);
var
   xNum, xNumFisc, xCodCedente: String;
   numeroBoleto: integer;
   xEntrou:boolean;
	xDados:Variant;
   YearAtu, MonthAtu, DayAtu: Word;
   xPrefixoNossoNum: Real;
   xAux: String;
	XVlExtMulta : string;
   XVlExtJuros: string;
   xVlJuros: double;
   xVlMulta: double;
begin
	FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   DMFINANC.TAlx.Close;
   DMFINANC.TAlx.SQL.Clear;
   DMFinanc.TAlx.SQL.Add(' SELECT DISTINCT(PARCELACR.COD_PARCELACR), PARCELACR.DTVENC, PARCELACR.NUMBOLETO, PARCELACR.NUMPARC, PARCELACR.VALEXT, PARCELACR.VALOR, PARCELACR.TEXTOBLT, ');
   DMFinanc.TAlx.SQL.Add(' PARCELACR.DIAS_PROTESTO, PARCELACR.NOSSONUMBLT, PARCELACR.VALOR_JUROSBOLETO, PARCELACR.VALOR_MULTABOLETO, PESSOA.NOME SACADO_PF, PESSOAJ.RAZAO_SOCIAL SACADO_PJ, ');
   DMFinanc.TAlx.SQL.Add(' PESSOA.BAIRRO, PESSOA.CEP, PESSOA.TELREL, PESSOA.CPFCNPJ, PESSOA.ENDNUMERO, PESSOA.ENDERECO, ');
   DMFinanc.TAlx.SQL.Add(' CTARECEBER.NUMDOC, CTARECEBER.TIPOGERADOR, CTARECEBER.COD_GERADOR, CTARECEBER.DTLANC, CIDADE.NOME AS CIDADE, ESTADO.UF_ESTADO FROM PARCELACR ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CTARECEBER ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CLIENTE ON CLIENTE.COD_CLIENTE = CTARECEBER.COD_CLIENTE ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN PESSOA ON PESSOA.COD_PESSOA = CLIENTE.COD_PESSOA ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN PESSOAJ ON PESSOAJ.COD_PESSOA = PESSOA.COD_PESSOA ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CIDADE ON CIDADE.COD_CIDADE = PESSOA.COD_CIDADE ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN ESTADO ON ESTADO.COD_ESTADO = CIDADE.COD_ESTADO ');
   if(TIPOIMP<>1)then
   begin
   	//Edmar - 24/10/2013 - Imprime boleto individual
   	DMFINANC.TAlx.SQL.add(' WHERE PARCELACR.COD_PARCELACR = :CODIGO ');
//       dmfinanc.TAlx.ParamByName('codctar').AsInteger := CODCTA;
   end;
   if tipoimp = 1 then
   begin
   	//Edmar - 24/10/2013 - Imprime várias parcelas
   	Dmfinanc.talx.sql.add(' WHERE CTARECEBER.COD_CTARECEBER = :CODIGO ');
//       DMFINANC.TAlx.ParamByName('codctareceber').AsInteger := CODCTA;
   end;
   DMFINANC.TAlx.ParamByName('CODIGO').AsInteger := CODCTA;
   DMFINANC.TAlx.SQL.Add(' AND (FECH <> ''S'') ');
   DMFINANC.TAlx.Open;

   //Edmar - 13/12/2013 - Valida se vai emitir arquivo de remessa
	if remessa then
   begin
	    //Edmar - 13/12/2013 - Testa se cliente possui CEP em seu cadastro
     	if (dmfinanc.TAlx.FieldByName('cep').AsString = '') or (dmfinanc.TAlx.FieldByName('cep').AsString = null) then
       begin
			Mensagem('   A T E N Ç Ã O   ', 'Para emitir um boleto com registro é necessario informar um CEP para o cliente. Atualize o cadastro.', '', 1, 1, false, 'I');
           Exit;
   	end;

       if Length(dmfinanc.TAlx.FieldByName('cpfcnpj').AsString) > 11 then
       begin
   	    //Edmar - 13/12/2013 - Valida o CNPJ do cliente, caso seja PJ
           if not ValidaCGC(dmfinanc.TAlx.FieldByName('cpfcnpj').AsString) then
           begin
             	Mensagem('   A T E N Ç Ã O   ', 'Para emitir um boleto com registro é necessario informar um CNPJ válido. Atualize o cadastro.', '', 1, 1, false, 'I');
           	Exit;
           end;
       end
       else
       begin
   	    //Edmar - 13/12/2013 - Valida o CPF do cliente, caso seja PF
       	if not ValidCPF(dmfinanc.TAlx.FieldByName('cpfcnpj').AsString) then
           begin
				Mensagem('   A T E N Ç Ã O   ', 'Para emitir um boleto com registro é necessario informar um CPF válido. Atualize o cadastro.', '', 1, 1, false, 'I');
           	Exit;
           end;
       end;
   end;

   if(TIPOIMP <> 2)then
   begin
       DMFINANC.TAlx.First;
       while not dmfinanc.TAlx.Eof do
       begin
           //Edmar - 29/10/2013 - Filtra o tipo gerador
           if DMFINANC.TAlx.fieldbyname('tipogerador').AsString = 'PEDVENDA' then
           begin
               DMSAIDA.TPedV.Close;
               DMSAIDA.TPedV.SQL.Clear;
               DMSAIDA.tpedv.sql.add('select * from pedvenda where pedvenda.cod_pedvenda = :codpvenda');
               DMSAIDA.TPedV.ParamByName('codpvenda').AsInteger := DMFINANC.TAlx.fieldbyname('cod_gerador').AsInteger;
               DMSAIDA.TPedV.Open;

               if not DMSAIDA.TPedV.IsEmpty then
                   xNumFisc := DMSAIDA.TPedV.fieldbyname('numfiscal').AsString
               else
                   xNumFisc := '';
           end;


           //Edmar - 24/10/2013 - Filtra conta corrente
           DMBANCO.TCtaCor.Close;
           DMBANCO.TCtaCor.SQL.Clear;
           DMBANCO.TCtaCor.SQL.Add('select * from ctacor where ctacor.cod_ctacor = :codctacor');
           DMBANCO.TCtaCor.ParamByName('codctacor').AsInteger := XCOD_CTACORBLT;
           DMBANCO.TCtaCor.Open;

           //Edmar - 24/10/2013 - Filtra agencia
           DMCONTA.TAlx.Close;
           DMCONTA.TAlx.SQL.Clear;
           DMCONTA.TAlx.SQL.Add('select * from agencia where agencia.cod_agencia = :codagencia');
           DMCONTA.talx.ParamByName('codagencia').AsInteger := dmbanco.TCtaCor.fieldbyname('cod_agencia').AsInteger;
           DMCONTA.talx.Open;

           //Edmar - 24/10/2013 - Filtra banco
           DMBANCO.TAlx.Close;
           DMBANCO.talx.SQL.Clear;
           DMBANCO.TAlx.SQL.Add('select * from banco where banco.cod_banc = :codbanc');
           DMBANCO.TAlx.ParamByName('codbanc').AsInteger := DMCONTA.TAlx.fieldbyname('cod_banco').AsInteger;
           DMBANCO.talx.Open;

           DMServ.TAlx2.Close;
           DMServ.TAlx2.SQL.Clear;
           DMServ.TAlx2.SQL.Add('select * from parcelacr where parcelacr.cod_parcelacr = :codparcela');
       	DMServ.TAlx2.ParamByName('codparcela').AsInteger := CODCTA;
           DMServ.TAlx2.Open;

           DMServ.TAlx3.Close;
       	DMServ.TAlx3.SQL.Clear;
       	DMServ.TAlx3.SQL.Add('select * from ctareceber where ctareceber.cod_ctareceber = :codreceber');
       	DMServ.TAlx3.ParamByName('codreceber').AsInteger := DMServ.TAlx2.fieldbyname('cod_ctareceber').AsInteger;
       	DMServ.TAlx3.Open;

           DMMACS.TEmpresa.Open;
           
           try
           	CobreBemXPadrao := CreateOleObject('CobreBemX.ContaCorrente');
           except
				Mensagem('A T E N Ç Ã O ', 'O componente para emissão de boletos não foi instalado corretamente. Favor repassar a sitação ao suporte.', '', 1,1, false, 'a');
           	Exit;
           end;
           
           if (DMBANCO.TCtaCor.FieldByName('LICENSACOBREBEM').AsString = '') OR not (FileExists(DMBANCO.TCtaCor.FieldByName('LICENSACOBREBEM').AsString)) then
           begin
               Mensagem('A T E N Ç Ã O ', 'Por favor selecione a licença para gerar ou visualizar o boleto!', '', 1,1, false, 'a');
               Exit;
           end;
           
           CobreBemXPadrao.ArquivoLicenca := DMBANCO.TCtaCor.FieldByName('LICENSACOBREBEM').AsString;
           
           if DMBANCO.TAlx.FieldByName('numbanco').AsString = '756' then //Sicoob
           begin
           	//Edmar - 24/10/2013 - Joga informações para o boleto
             	CobreBemXPadrao.CodigoCedente := ConcatZero(DMBANCO.TCtaCor.FieldByName('nossonumblt').AsString, 7);
             	if not remessa then
             	begin
             		CobreBemXPadrao.CodigoAgencia := dmconta.TAlx.FieldByName('numagencia').AsString+'/00';
       			CobreBemXPadrao.NumeroContaCorrente := DMBANCO.TCtaCor.FieldByName('numctacor').AsString;
             	end else
             	begin
             		CobreBemXPadrao.CodigoAgencia := DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString+'-'+DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
             		CobreBemXPadrao.NumeroContaCorrente := DMBANCO.TCtaCor.FieldByName('codcedenteblt').AsString+'-'+DMBANCO.TCtaCor.FieldByName('digcodcedenteblt').AsString;
             	end;

             	CobreBemXPadrao.OutroDadoConfiguracao2 := ConcatZero(DMBANCO.TCtaCor.FieldByName('codempresablt').AsString, 7);

               //Edmar - 15/12/2014 - Para boleto do sicoob com registro é usado uma parceria com o banco do brasil. nessa parceria, o inicio do nosso número
               //é fixado em 1345180. Após isso vem o prefixo. Pensavamos que era padrão 864, mas existem outros (EXIMIA USA 764) por isso a necessidade
               //desse campo PREFIXO_NOSSONUM. Aqui ele verifica se essa conta corrente possui um prefixo cadastrado, se houver, usa ele,
               //do contrario usa o prefixo usado nas outras empresas (864)
               if DMBANCO.TCtaCor.FieldByName('PREFIXO_NOSSONUM').AsString <> '' then
               	xPrefixoNossoNum := DMBANCO.TCtaCor.FieldByName('PREFIXO_NOSSONUM').AsInteger
               else
               	xPrefixoNossoNum := 864;

               CobreBemXPadrao.InicioNossoNumero := CurrToStr(xPrefixoNossoNum)+'0000001';
               CobreBemXPadrao.FimNossoNumero := CurrToStr(xPrefixoNossoNum)+'9999999';

               //preenche o restante das casas com zero (o sequencial do nosso número deve ter 10 digitos)
               xPrefixoNossoNum := StrToCurr(ConcatZeroDir(CurrToStr(xPrefixoNossoNum), 10));

             	CobreBemXPadrao.LocalPagamento := 'PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO';
           end
           else// Sicredi e Caixa
           begin
           	CobreBemXPadrao.CodigoCedente := DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString;
             	CobreBemXPadrao.CodigoAgencia := DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString+'.'+DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
             	CobreBemXPadrao.NumeroContaCorrente := DMBANCO.TCtaCor.FieldByName('numctacor').AsString+'-'+DMBANCO.TCtaCor.FieldByName('DIGCTACOR').AsString;
             	CobreBemXPadrao.InicioNossoNumero := '00000';
             	CobreBemXPadrao.FimNossoNumero := '99999';

             	if remessa then
               	CobreBemXPadrao.OutroDadoConfiguracao2 := '1'
             	else
               	CobreBemXPadrao.OutroDadoConfiguracao2 := '3';
           end;

           if dmbanco.TAlx.FieldByName('numbanco').AsString = '104' then //Caixa
           begin
           	if DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT').AsString <> '' then
           		CobreBemXPadrao.CodigoCedente := DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString+'-'+DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT').AsString;

               //Edmar - 18/12/2014 - o nosso número varia conforme a carteira
				if (DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString = 'CS') OR
               	(DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString = '1') OR
						(DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString = '01') then
               begin
           		CobreBemXPadrao.InicioNossoNumero := '000000000';
	        		CobreBemXPadrao.FimNossoNumero :=    '999999999';
                   
					if remessa then
						//Edmar - S quando não utilizar o padrão SINCO. O padrão SINCO é apenas com registro
               		CobreBemXPadrao.OutroDadoConfiguracao1 := 'S'
                   else
               		CobreBemXPadrao.OutroDadoConfiguracao1 := 'N';
               end
               else begin
           		CobreBemXPadrao.InicioNossoNumero := '000000000000000';
	        		CobreBemXPadrao.FimNossoNumero :=    '999999999999999';
               end;
               
               CobreBemXPadrao.LocalPagamento := 'PREFERENCIALMENTE NAS CASAS LOTÉRICAS ATÉ O VALOR LIMITE';
           end;

           if DMBANCO.TAlx.FieldByName('NUMBANCO').AsString = '237' then//BRADESCO
           begin
           	CobreBemXPadrao.CodigoCedente := ConcatZero(DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString, 15);
             	CobreBemXPadrao.CodigoAgencia := DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString+'-'+DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
             	CobreBemXPadrao.NumeroContaCorrente := ConcatZero(DMBANCO.TCtaCor.FieldByName('numctacor').AsString, 7)+'-'+DMBANCO.TCtaCor.FieldByName('DIGCTACOR').AsString;
             	CobreBemXPadrao.InicioNossoNumero := '00000000000';
             	CobreBemXPadrao.FimNossoNumero :=    '99999999999';             
           end;

           if DMBANCO.TAlx.FieldByName('NUMBANCO').AsString = '341' then//ITAU
           begin
             	CobreBemXPadrao.CodigoAgencia := DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString;
             	CobreBemXPadrao.NumeroContaCorrente := DMBANCO.TCtaCor.FieldByName('numctacor').AsString+'-'+DMBANCO.TCtaCor.FieldByName('DIGCTACOR').AsString;
           	CobreBemXPadrao.OutroDadoConfiguracao1 := DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString;               
             	CobreBemXPadrao.InicioNossoNumero := '00000000';
             	CobreBemXPadrao.FimNossoNumero :=    '99999999';
           end;
           
           if(DMBANCO.TCtaCor.FieldByName('proxboleto').AsString <> '0') and (DMBANCO.TCtaCor.FieldByName('proxboleto').AsString <> '')then
               xNum := DMBANCO.TCtaCor.fieldbyname('proxboleto').AsString
           else
               xNum := '1';

           BoletoPadrao := CobreBemXPadrao.DocumentosCobranca.Add;
           BoletoPadrao.NumeroDocumento := xNumFisc+'-'+xNum+':'+DMFINANC.TAlx.FieldByName('numparc').AsString;

           //Edmar - 30/07/2014 - Monta nosso número dos boletos
           if DMBANCO.TAlx.FieldByName('numbanco').AsString = '756' then //Sicoob
           	CobreBemXPadrao.ProximoNossoNumero := CurrToStr(xPrefixoNossoNum + StrToCurr(xNum))
           else
           	if DMBANCO.TAlx.FieldByName('NUMBANCO').AsString = '748' then//Sicredi
					BoletoPadrao.NossoNumero := Copy(xNum, Length(xNum)-4, Length(xNum))
               else
                   CobreBemXPadrao.ProximoNossoNumero := IntToStr(StrToInt(xNum) - 1);

           DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
           CobreBemXPadrao.PadroesBoleto.PadroesBoletoImpresso.ArquivoLogotipo := 'C:\MZR\Macs\CobreBemX\Imagens\emp.jpg';
           CobreBemXPadrao.PadroesBoleto.PadroesBoletoImpresso.CaminhoImagensCodigoBarras := 'C:\MZR\Macs\CobreBemX\Imagens\';

           if ValidCPF(DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString) = True then
				BoletoPadrao.NomeSacado := TiraCaracter(TiraAcentos(DMFINANC.TAlx.fieldbyname('SACADO_PF').AsString), '-')
           else
               BoletoPadrao.NomeSacado := TiraCaracter(TiraAcentos(DMFinanc.TAlx.FieldByName('SACADO_PJ').AsString), '-');

           BoletoPadrao.CPFSacado := DMFINANC.TAlx.FieldByName('cpfcnpj').AsString;
           BoletoPadrao.EnderecoSacado := DMFINANC.TAlx.FieldByName('endereco').AsString;
           BoletoPadrao.BairroSacado := DMFINANC.talx.FieldByName('bairro').AsString;
           BoletoPadrao.CidadeSacado := DMFINANC.TAlx.FieldByName('cidade').AsString;
           BoletoPadrao.EstadoSacado := DMFINANC.TAlx.FieldByName('uf_estado').AsString;
           BoletoPadrao.CepSacado := DMFINANC.TAlx.FieldByName('cep').AsString;
           BoletoPadrao.DataDocumento := dmserv.TAlx3.FieldByName('dtlanc').AsString;
           BoletoPadrao.DataVencimento := DMFinanc.TAlx.FieldByName('DTVENC').AsString;
           BoletoPadrao.ValorDocumento := DMFinanc.TAlx.FieldByName('valor').AsCurrency;
           if (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '-1') AND (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '') then
           	BoletoPadrao.DiasProtesto := DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString;
           //Edmar - 12/05/2015 - se for impressão de todos os boletos relacionados
           {if TIPOIMP = 1 then//passa o que foi montado acima
           	BoletoPadrao.PadroesBoleto.InstrucoesCaixa := XInstrucPadraoBlt+'<br/>'+XTextoMultaBlt+'<br/>'+XTextoJurosBlt
           else//senão, passa o que está na parcela mesmo
				BoletoPadrao.PadroesBoleto.InstrucoesCaixa := DMCONTA.TParcCR.FieldByName('TEXTOBLT').AsString;}
           BoletoPadrao.PadroesBoleto.InstrucoesCaixa := DMCONTA.TParcCR.FieldByName('TEXTOBLT').AsString;

           if DMMACS.TLoja.FieldByName('MULTA').AsString <> '' then
               xVlMulta := DMFinanc.TAlx.FieldByName('VALOR').AsCurrency * (DMMACS.TLoja.FieldByName('MULTA').AsCurrency / 100)
           else
				xVlMulta := 0;

           if DMMACS.TLoja.FieldByName('JUROS').AsString <> '' then
               xVlJuros := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency + xVlMulta) * (DMMACS.TLoja.FieldByName('JUROS').AsCurrency / 100)) / 30
           else
				xVlJuros := 0;

           BoletoPadrao.ValorMultaAtraso := xVlMulta;
           BoletoPadrao.ValorJurosDiaAtraso:= xVlJuros;
           
           xDados := BoletoPadrao.MeusDados.Add;
           xDados.Nome := 'NaoExibeVariacaoCarteira';
           xDados.Valor := 'S';

           DMCONTA.TParcCR.Close;
           DMCONTA.TParcCR.SQL.Clear;
           DMCONTA.TParcCR.SQL.Add('select * from parcelacr where parcelacr.cod_parcelacr = :codpar');
           DMCONTA.TParcCR.ParamByName('codpar').AsInteger := dmfinanc.TAlx.fieldbyname('cod_parcelacr').AsInteger;
           DMCONTA.TParcCR.Open;
           
           if not dmconta.TParcCR.IsEmpty then
           begin
               try
                   CobreBemXPadrao.ImprimeBoletos;
               except
                   Mensagem('A T E N Ç Ã O ', 'O boleto não foi gerado pois ocorreu uma falha na impressão. Reinicie o sistema e tente novamente.', '', 1,1, False, 'A');
                   Exit;
               end;
                   {
                   if Mensagem(' C O N F I R M A Ç Ã O ', 'Deseja enviar o boleto gerado por e-mail?', '', 2, 3, False, 'C') = 2 then
                   	EnviaBoletoPorEmail(DMFinanc.TAlx.FieldByName('EMAIL').AsString);
                   }
                   if TIPOIMP <> 2
                   then begin
                   {
                       DMCONTA.TParcCR.Edit;
                       DMCONTA.TParcCR.FieldByName('imp').AsString := 'B';
                       if dmbanco.TCtaCor.FieldByName('proxboleto').AsCurrency = 0 then
                       begin
                           dmbanco.TCtaCor.Edit;
                           dmbanco.TCtaCor.FieldByName('proxboleto').AsCurrency := 1;
                           dmbanco.TCtaCor.Post;
                       end;
                       dmconta.TParcCR.FieldByName('numboleto').AsString := dmbanco.TCtaCor.fieldbyname('proxboleto').AsString;
                       dmconta.TParcCR.FieldByName('numfisc').AsString := xNumFisc;
                       dmconta.TParcCR.FieldByName('cod_ctacor').AsInteger := XCOD_CTACORBLT;
                       dmconta.TParcCR.FieldByName('nossonumblt').AsString := BoletoPadrao.NossoNumero;
                       dmconta.TParcCR.FieldByName('tipoblt').AsString := FMenu.XTIPOBOLTO;
                       if FMenu.XTIPOBOLTO = 'R' then
                       	DMCONTA.TParcCR.FieldByName('REMESSA').AsString := '';
                           
		           		if TIPOIMP = 1 then
	           				dmconta.TParcCR.FieldByName('TEXTOBLT').AsString := XInstrucPadraoBlt+'<br/>'+XTextoMultaBlt+'<br/>'+XTextoJurosBlt;
                       dmconta.TParcCR.Post;
                       DMCONTA.IBT.CommitRetaining;
                   }
                   	try
                       	//Edmar - 19/05/2015 - Atualiza a Parcela com as informações do boleto
                       	MDO.Query.Close;
                           MDO.Query.SQL.Clear;
                           MDO.Query.SQL.Add(' UPDATE PARCELACR SET PARCELACR.IMP = :IMP, PARCELACR.NUMBOLETO = :NUMBOLETO, ');
                           MDO.Query.SQL.Add(' PARCELACR.NUMFISC = :FISC, PARCELACR.COD_CTACOR = :CTACOR, ');
                           MDO.Query.SQL.Add(' PARCELACR.NOSSONUMBLT = :NOSSONUM, PARCELACR.TIPOBLT = :TIPO, ');
                           MDO.Query.SQL.Add(' PARCELACR.VALOR_JUROSBOLETO = :JUROS, PARCELACR.VALOR_MULTABOLETO = :MULTA ');

                           //se for R significa que o boleto é remessa, então limpa o campo REMESSA pra ele entrar na listagem novamente
                           if FMenu.XTIPOBOLTO = 'R' then
                               MDO.Query.SQL.Add(', PARCELACR.REMESSA = '''' ');
                               
                           MDO.Query.SQL.Add(' WHERE PARCELACR.COD_PARCELACR = :PARCELA ');

                           MDO.Query.ParamByName('IMP').AsString := 'B';
                           MDO.Query.ParamByName('NUMBOLETO').AsString := DMBANCO.TCtaCor.fieldbyname('PROXBOLETO').AsString;
                           MDO.Query.ParamByName('FISC').AsString := xNumFisc;
                           MDO.Query.ParamByName('CTACOR').AsInteger := XCOD_CTACORBLT;
                           MDO.Query.ParamByName('NOSSONUM').AsString := BoletoPadrao.NossoNumero;
                           MDO.Query.ParamByName('TIPO').AsString := FMenu.XTIPOBOLTO;
                           MDO.Query.ParamByName('JUROS').AsCurrency := xVlJuros;
                           MDO.Query.ParamByName('MULTA').AsCurrency := xVlMulta;
                           MDO.Query.ParamByName('PARCELA').AsInteger := DMFINANC.TAlx.FieldByName('COD_PARCELACR').AsInteger;
                           MDO.Query.ExecSQL;

                           //Edmar - 19/05/2015 - Atualiza a conta corrente com o proximo numero de boleto
                           MDO.QAlx1.Close;
                           MDO.QAlx1.SQL.Clear;
                           MDO.QAlx1.SQL.Add(' UPDATE CTACOR SET CTACOR.PROXBOLETO = :PXBOLETO WHERE CTACOR.COD_CTACOR = :CTACOR ');
                           if (DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString = '') OR (DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString = '0') then
                               MDO.QAlx1.ParamByName('PXBOLETO').AsCurrency := 1
                           else
                           	MDO.QAlx1.ParamByName('PXBOLETO').AsCurrency := DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency + 1;
                           MDO.QAlx1.ParamByName('CTACOR').AsInteger := XCOD_CTACORBLT;
                           MDO.QAlx1.ExecSQL;

                           MDO.Transac.CommitRetaining;
                       except
                       	on E : Exception do
                   		begin
                 				Mensagem('A T E N Ç Ã O ', 'O boleto não foi impresso devido a uma falha ao gravar o tipo de impressão na parcela!', '', 1,1, false, 'a');
                               ShowMessage(E.Message);
                           	MDO.Transac.RollbackRetaining;
                           end;
                       end;
                       {
                       dmbanco.TCtaCor.Edit;
                       dmbanco.TCtaCor.FieldByName('proxboleto').AsCurrency := dmbanco.TCtaCor.fieldbyname('proxboleto').AsCurrency+1;
                       dmbanco.TCtaCor.Post;
                       dmbanco.IBT.CommitRetaining;
                       }                    
                   end;
               {except
               	on E : Exception do
                   begin
                 		Mensagem('A T E N Ç Ã O ', 'O boleto não foi impresso devido a uma falha ao gravar o tipo de impressão na parcela!', '', 1,1, false, 'a');
                   end;
               end;}
           end;
           DMFINANC.TAlx.Next;
	end;
   end
   else begin      
       DMSAIDA.TPedV.Close;
       DMSAIDA.TPedV.SQL.Clear;
       DMSAIDA.TPedV.sql.add('select * from pedvenda where pedvenda.cod_pedvenda = :codpvenda');
       DMSAIDA.TPedV.ParamByName('codpvenda').AsInteger := dmfinanc.TAlx.fieldbyname('cod_gerador').AsInteger;
       DMSAIDA.TPedV.Open;

       if not dmsaida.TPedV.IsEmpty then
   		xNumFisc := dmsaida.TPedV.fieldbyname('numfiscal').AsString
       else
       	xNumFisc := '';

		DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add(' select parcelacr.cod_ctareceber, parcelacr.numboleto, ctacor.licensacobrebem, banco.numbanco, parcelacr.nossonumblt, ');
       DMServ.TAlx1.SQL.Add(' ctacor.numagencblt, ctacor.digagencblt, ctacor.codcedenteblt, ctacor.digcodcedenteblt, agencia.numagencia, ctacor.numctacor, ');
       DMServ.TAlx1.SQL.Add(' ctacor.codempresablt, ctacor.digctacor, ctacor.instruboleto, parcelacr.numparc, ctacor.codcarteirablt, parcelacr.tipoblt ');
       DMServ.TAlx1.SQL.Add(' from parcelacr ');
       DMServ.TAlx1.SQL.Add(' left join ctacor on parcelacr.cod_ctacor = ctacor.cod_ctacor ');
       DMServ.TAlx1.SQL.Add(' left join agencia on ctacor.cod_agencia = agencia.cod_agencia ');
       DMServ.TAlx1.SQL.Add(' left join banco on agencia.cod_banco = banco.cod_banc ');
       DMServ.TAlx1.SQL.Add(' where parcelacr.cod_parcelacr = :codparc ');
       DMServ.TAlx1.ParamByName('CODPARC').AsInteger := CODCTA;
       DMServ.TAlx1.Open;

       DMServ.TAlx3.Close;
       DMServ.TAlx3.SQL.Clear;
       DMServ.TAlx3.SQL.Add('select * from ctareceber where ctareceber.cod_ctareceber = :codreceber');
       DMServ.TAlx3.ParamByName('codreceber').AsInteger := DMServ.TAlx1.fieldbyname('cod_ctareceber').AsInteger;
       DMServ.TAlx3.Open;

       xNum := DMServ.TAlx1.fieldbyname('numboleto').AsString;

       try
       	CobreBemXPadrao := CreateOleObject('CobreBemX.ContaCorrente');
       except
			Mensagem('A T E N Ç Ã O ', 'O componente para emissão de boletos não foi instalado corretamente. Favor repassar a sitação ao suporte.', '', 1,1, false, 'A');
       end;

       if (DMServ.TAlx1.FieldByName('LICENSACOBREBEM').AsString = '') OR not (FileExists(DMServ.TAlx1.FieldByName('LICENSACOBREBEM').AsString)) then
       begin
	    	Mensagem('A T E N Ç Ã O ', 'Por favor selecione a licença para gerar ou visualizar o boleto!', '', 1,1, false, 'a');
           Exit;
       end;

     	CobreBemXPadrao.ArquivoLicenca := DMServ.TAlx1.FieldByName('LICENSACOBREBEM').AsString;
       
       if DMServ.TAlx1.FieldByName('numbanco').AsString = '756' then //SICOOB
       begin
       	//Edmar - 24/10/2013 - Joga informações para o boleto
           CobreBemXPadrao.CodigoCedente := Copy(DMServ.TAlx1.FieldByName('nossonumblt').AsString,0, 7);
           if DMServ.TAlx1.FieldByName('TIPOBLT').AsString = 'N' then
           begin
           	CobreBemXPadrao.CodigoAgencia := DMServ.TAlx1.FieldByName('numagencia').AsString+'/00';//dmconta.TAlx.FieldByName('numagencia').AsString+'/00';
               CobreBemXPadrao.NumeroContaCorrente := DMServ.TAlx1.FieldByName('numctacor').AsString;//DMBANCO.TCtaCor.FieldByName('numctacor').AsString;
           end
           else
           begin
           	CobreBemXPadrao.CodigoAgencia := DMServ.TAlx1.FieldByName('NUMAGENCBLT').AsString+'-'+DMServ.TAlx1.FieldByName('DIGAGENCBLT').AsString;//DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString+'-'+DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
           	CobreBemXPadrao.NumeroContaCorrente := DMServ.TAlx1.FieldByName('codcedenteblt').AsString+'-'+DMServ.TAlx1.FieldByName('digcodcedenteblt').AsString;
           end;
           CobreBemXPadrao.OutroDadoConfiguracao2 := ConcatZero({DMBANCO.TCtaCor.}DMServ.TAlx1.FieldByName('codempresablt').AsString, 7);
           //CobreBemX.InicioNossoNumero := '8640000000';
           //CobreBemX.FimNossoNumero := '8649999999';

           //Edmar - 15/12/2014 - Para boleto do sicoob com registro é usado uma parceria com o banco do brasil. nessa parceria, o inicio do nosso número
           //é fixado em 1345180. Após isso vem o prefixo. Pensavamos que era padrão 864, mas existem outros (EXIMIA USA 764) por isso a necessidade
           //desse campo PREFIXO_NOSSONUM. Aqui ele verifica se essa conta corrente possui um prefixo cadastrado, se houver, usa ele,
           //do contrario usa o prefixo usado nas outras empresas (864)
           if DMBANCO.TCtaCor.FieldByName('PREFIXO_NOSSONUM').AsString <> '' then
               xPrefixoNossoNum := DMBANCO.TCtaCor.FieldByName('PREFIXO_NOSSONUM').AsInteger
           else
               xPrefixoNossoNum := 864;

           CobreBemXPadrao.InicioNossoNumero := CurrToStr(xPrefixoNossoNum)+'0000001';
           CobreBemXPadrao.FimNossoNumero := CurrToStr(xPrefixoNossoNum)+'9999999';

           //preenche o restante das casas com zero (o sequencial do nosso número deve ter 10 digitos)
           xPrefixoNossoNum := StrToCurr(ConcatZeroDir(CurrToStr(xPrefixoNossoNum), 10));

           CobreBemXPadrao.LocalPagamento := 'PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO';
       end;

       if DMServ.TAlx1.FieldByName('numbanco').AsString = '748' then// Sicredi
       begin
           CobreBemXPadrao.CodigoCedente := DMServ.TAlx1.FieldByName('CODCEDENTEBLT').AsString;
           CobreBemXPadrao.CodigoAgencia := DMServ.TAlx1.FieldByName('NUMAGENCBLT').AsString+'.'+DMServ.TAlx1.FieldByName('DIGAGENCBLT').AsString;
           CobreBemXPadrao.NumeroContaCorrente := DMServ.TAlx1.FieldByName('numctacor').AsString+'-'+DMServ.TAlx1.FieldByName('DIGCTACOR').AsString;
           CobreBemXPadrao.InicioNossoNumero := '00000';
           CobreBemXPadrao.FimNossoNumero := '999999';
       end;

       if DMServ.TAlx1.FieldByName('numbanco').AsString = '104' then //Caixa
       begin
       	CobreBemXPadrao.CodigoAgencia := DMServ.TAlx1.FieldByName('NUMAGENCBLT').AsString+'.'+DMServ.TAlx1.FieldByName('DIGAGENCBLT').AsString;
       	CobreBemXPadrao.NumeroContaCorrente := DMServ.TAlx1.FieldByName('numctacor').AsString+'-'+DMServ.TAlx1.FieldByName('DIGCTACOR').AsString;

           if DMServ.TAlx1.FieldByName('DIGCODCEDENTEBLT').AsString <> '' then
           	CobreBemXPadrao.CodigoCedente := DMServ.TAlx1.FieldByName('CODCEDENTEBLT').AsString+'-'+DMServ.TAlx1.FieldByName('DIGCODCEDENTEBLT').AsString
           else
           	CobreBemXPadrao.CodigoCedente := DMServ.TAlx1.FieldByName('CODCEDENTEBLT').AsString;

           //Edmar - 18/12/2014 - o nosso número varia conforme a carteira
           if (DMServ.TAlx1.FieldByName('CODCARTEIRABLT').AsString = 'CS') OR
           		(DMServ.TAlx1.FieldByName('CODCARTEIRABLT').AsString = '1') OR
                   	(DMServ.TAlx1.FieldByName('CODCARTEIRABLT').AsString = '01') then
           begin
           	CobreBemXPadrao.InicioNossoNumero := '000000000';
               CobreBemXPadrao.FimNossoNumero :=    '999999999';

               if remessa then
               	//Edmar - S quando não utilizar o padrão SINCO. O padrão SINCO é apenas com registro
                   CobreBemXPadrao.OutroDadoConfiguracao1 := 'S'
               else
               	CobreBemXPadrao.OutroDadoConfiguracao1 := 'N';
           end
           else begin
           	CobreBemXPadrao.InicioNossoNumero := '000000000000000';
               CobreBemXPadrao.FimNossoNumero :=    '999999999999999';
           end;

           CobreBemXPadrao.LocalPagamento := 'PREFERENCIALMENTE NAS CASAS LOTÉRICAS ATÉ O VALOR LIMITE';
       end;

       if DMServ.TAlx1.FieldByName('NUMBANCO').AsString = '237' then//BRADESCO
       begin
       	CobreBemXPadrao.CodigoCedente := ConcatZero(DMServ.TAlx1.FieldByName('CODCEDENTEBLT').AsString, 15);
           CobreBemXPadrao.CodigoAgencia := DMServ.TAlx1.FieldByName('NUMAGENCBLT').AsString+'-'+DMServ.TAlx1.FieldByName('DIGAGENCBLT').AsString;
           CobreBemXPadrao.NumeroContaCorrente := ConcatZero(DMServ.TAlx1.FieldByName('numctacor').AsString, 7)+'-'+DMServ.TAlx1.FieldByName('DIGCTACOR').AsString;
           CobreBemXPadrao.InicioNossoNumero := '00000000000';
           CobreBemXPadrao.FimNossoNumero :=    '99999999999';
       end;

       if DMServ.TAlx1.FieldByName('NUMBANCO').AsString = '341' then//ITAU
       begin
       	CobreBemXPadrao.CodigoAgencia := DMServ.TAlx1.FieldByName('NUMAGENCBLT').AsString;
          	CobreBemXPadrao.NumeroContaCorrente := DMServ.TAlx1.FieldByName('numctacor').AsString+'-'+DMServ.TAlx1.FieldByName('DIGCTACOR').AsString;
			CobreBemXPadrao.OutroDadoConfiguracao1 := DMServ.TAlx1.FieldByName('CODCEDENTEBLT').AsString;
           CobreBemXPadrao.InicioNossoNumero := '00000000';
           CobreBemXPadrao.FimNossoNumero :=    '99999999';
       end;
       
       BoletoPadrao := CobreBemXPadrao.DocumentosCobranca.Add;

       if DMServ.TAlx1.FieldByName('numbanco').AsString = '756' then //Sicoob
       	CobreBemXPadrao.ProximoNossoNumero :=  CurrToStr(xPrefixoNossoNum + StrToCurr(xNum))
       else
       begin
       	if (Length(DMServ.TAlx1.FieldByName('nossonumblt').AsString) > 15) OR (DMServ.TAlx1.FieldByName('NUMBANCO').AsString = '237') then
           	BoletoPadrao.NossoNumero := DMServ.TAlx1.FieldByName('nossonumblt').AsString
           else
           	if ((DMServ.TAlx1.FieldByName('NUMBANCO').AsString = '104') AND
               		((DMServ.TAlx1.FieldByName('CODCARTEIRABLT').AsString = 'CS') OR
                       	(DMServ.TAlx1.FieldByName('CODCARTEIRABLT').AsString = '1')  OR
                        		(DMServ.TAlx1.FieldByName('CODCARTEIRABLT').AsString = '01'))) then
					BoletoPadrao.NossoNumero := DMServ.TAlx1.FieldByName('nossonumblt').AsString
               else
       			// CobreBemXPadrao.ProximoNossoNumero := xNum;
                   BoletoPadrao.NossoNumero := xNum;
       end;

      	CobreBemXPadrao.PadroesBoleto.PadroesBoletoImpresso.ArquivoLogotipo := 'C:\MZR\Macs\CobreBemX\Imagens\emp.jpg';
       CobreBemXPadrao.PadroesBoleto.PadroesBoletoImpresso.CaminhoImagensCodigoBarras := 'C:\MZR\Macs\CobreBemX\Imagens\';

       BoletoPadrao.NumeroDocumento := xNumFisc+'-'+xNum+':'+DMServ.TAlx1.FieldByName('numparc').AsString;
       if ValidCPF(DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString) = True then
           BoletoPadrao.NomeSacado := TiraCaracter(TiraAcentos(DMFINANC.TAlx.fieldbyname('SACADO_PF').AsString), '-')
       else
           BoletoPadrao.NomeSacado := TiraCaracter(TiraAcentos(DMFinanc.TAlx.FieldByName('SACADO_PJ').AsString), '-');
       BoletoPadrao.CPFSacado := DMFINANC.TAlx.FieldByName('cpfcnpj').AsString;
       BoletoPadrao.EnderecoSacado := DMFINANC.TAlx.FieldByName('endereco').AsString;
       BoletoPadrao.BairroSacado := DMFINANC.talx.FieldByName('bairro').AsString;
       BoletoPadrao.CidadeSacado := dmfinanc.TAlx.FieldByName('cidade').AsString;
       BoletoPadrao.EstadoSacado := dmfinanc.TAlx.FieldByName('uf_estado').AsString;
       BoletoPadrao.CepSacado := dmfinanc.TAlx.FieldByName('cep').AsString;
       BoletoPadrao.DataDocumento :=  dmserv.TAlx3.FieldByName('dtlanc').AsString;
       BoletoPadrao.DataVencimento := DMFinanc.TAlx.FieldByName('DTVENC').AsString;
       BoletoPadrao.ValorDocumento := DMFinanc.TAlx.FieldByName('valor').AsCurrency;
       if (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '-1') AND (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '') then
           BoletoPadrao.DiasProtesto := DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString;
       BoletoPadrao.PadroesBoleto.InstrucoesCaixa := DMCONTA.TParcCR.FieldByName('TEXTOBLT').AsString;
       BoletoPadrao.ValorMultaAtraso := DMFINANC.TAlx.FieldByName('VALOR_MULTABOLETO').AsCurrency;
       BoletoPadrao.ValorJurosDiaAtraso:= DMFINANC.TAlx.FieldByName('VALOR_JUROSBOLETO').AsCurrency;
       
       xDados := BoletoPadrao.MeusDados.Add;
       xDados.Nome := 'NaoExibeVariacaoCarteira';
       xDados.Valor := 'S';

       CobreBemXPadrao.ImprimeBoletos;
       {
       if Mensagem(' C O N F I R M A Ç Ã O ', 'Deseja enviar o boleto gerado por e-mail?', '', 2, 3, False, 'C') = 2 then
           EnviaBoletoPorEmail(DMFinanc.TAlx.FieldByName('EMAIL').AsString);
       }
   end;
end;

procedure TFPadraoContas.ImpCarneCobreBem(CODCTA, QTDPARC, TipoGer, tipoimp: integer; imprimir, remessa:boolean);
var
   xNum, xNumFisc, xCodCedente: String;
   numeroBoleto, xI, xSoma: integer;
   xEntrou:boolean;
   xDados:Variant;
   YearAtu, MonthAtu, DayAtu: Word;
   xHtml: string;
   xPrefixoNossoNum: Real;
   xVlMulta, xVlJuros: Real;
begin
	FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   DMFINANC.TAlx.Close;
   DMFINANC.TAlx.SQL.Clear;
   DMFinanc.TAlx.SQL.Add(' SELECT DISTINCT(PARCELACR.COD_PARCELACR), PARCELACR.DTVENC, PARCELACR.NUMBOLETO, PARCELACR.NUMPARC, PARCELACR.VALEXT, PARCELACR.VALOR, PARCELACR.TEXTOBLT, ');
   DMFinanc.TAlx.SQL.Add(' PARCELACR.DIAS_PROTESTO, PARCELACR.NOSSONUMBLT, PARCELACR.VALOR_JUROSBOLETO, PARCELACR.VALOR_MULTABOLETO, PESSOA.NOME SACADO_PF, PESSOAJ.RAZAO_SOCIAL SACADO_PJ, ');
   DMFinanc.TAlx.SQL.Add(' PESSOA.BAIRRO, PESSOA.CEP, PESSOA.TELREL, PESSOA.CPFCNPJ, PESSOA.ENDNUMERO, PESSOA.ENDERECO, CTARECEBER.COD_CTARECEBER, ');
   DMFinanc.TAlx.SQL.Add(' CTARECEBER.NUMDOC, CTARECEBER.TIPOGERADOR, CTARECEBER.COD_GERADOR, CTARECEBER.DTLANC, CIDADE.NOME AS CIDADE, ESTADO.UF_ESTADO FROM PARCELACR ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CTARECEBER ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CLIENTE ON CLIENTE.COD_CLIENTE = CTARECEBER.COD_CLIENTE ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN PESSOA ON PESSOA.COD_PESSOA = CLIENTE.COD_PESSOA ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN PESSOAJ ON PESSOAJ.COD_PESSOA = PESSOA.COD_PESSOA ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CIDADE ON CIDADE.COD_CIDADE = PESSOA.COD_CIDADE ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN ESTADO ON ESTADO.COD_ESTADO = CIDADE.COD_ESTADO ');

   if(qtdparc = 0)then
   begin
   	//Edmar - 24/10/2013 - Imprime carnê individual
   	DMFINANC.TAlx.SQL.add(' WHERE PARCELACR.COD_PARCELACR = :CODIGO ');
//       dmfinanc.TAlx.ParamByName('codctar').AsInteger := XViewRef.fieldbyname('cod_parcelacr').AsInteger;
   end;
   if(qtdparc = 1)then
   begin
   	//Edmar - 24/10/2013 - Imprime várias parcelas
   	Dmfinanc.talx.sql.add(' WHERE CTARECEBER.COD_CTARECEBER=:CODIGO ');
//       DMFINANC.TAlx.ParamByName('codctareceber').AsInteger := CODCTA;
   end;
   DMFINANC.TAlx.ParamByName('CODIGO').AsInteger := CODCTA;
   DMFINANC.TAlx.SQL.Add(' AND (FECH <> ''S'') ORDER BY COD_PARCELACR');
   DMFINANC.TAlx.Open;

   //Edmar - 13/12/2013 - Valida se vai emitir arquivo de remessa
	if remessa then
   begin
	    //Edmar - 13/12/2013 - Testa se cliente possui CEP em seu cadastro
     	if (dmfinanc.TAlx.FieldByName('cep').AsString = '') or (dmfinanc.TAlx.FieldByName('cep').AsString = null) then
       begin
			Mensagem('   A T E N Ç Ã O   ', 'Para emitir um carnê com registro é necessario informar um CEP para o cliente. Atualize o cadastro.', '', 1, 1, false, 'I');
           Exit;
   	end;

       if Length(dmfinanc.TAlx.FieldByName('cpfcnpj').AsString) > 11 then
       begin
   	    //Edmar - 13/12/2013 - Valida o CNPJ do cliente, caso seja PJ
           if not ValidaCGC(dmfinanc.TAlx.FieldByName('cpfcnpj').AsString) then
           begin
             	Mensagem('   A T E N Ç Ã O   ', 'Para emitir um carnê com registro é necessario informar um CNPJ válido. Atualize o cadastro.', '', 1, 1, false, 'I');
           	Exit;
           end;
       end
       else begin
   	    //Edmar - 13/12/2013 - Valida o CPF do cliente, caso seja PF
       	if not ValidCPF(dmfinanc.TAlx.FieldByName('cpfcnpj').AsString) then
           begin
				Mensagem('   A T E N Ç Ã O   ', 'Para emitir um carnê com registro é necessario informar um CPF válido. Atualize o cadastro.', '', 1, 1, false, 'I');
           	Exit;
           end;
       end;
   end;
   
   if(TIPOIMP <> 2)then
   begin
   	dmfinanc.TAlx.First;
       
       //Edmar - 29/10/2013 - Filtra o tipo gerador
       if dmfinanc.TAlx.fieldbyname('tipogerador').AsString = 'PEDVENDA' then
       begin
           dmsaida.TPedV.Close;
           dmsaida.TPedV.SQL.Clear;
           dmsaida.tpedv.sql.add('select * from pedvenda where pedvenda.cod_pedvenda = :codpvenda');
           dmsaida.TPedV.ParamByName('codpvenda').AsInteger := dmfinanc.TAlx.fieldbyname('cod_gerador').AsInteger;
           dmsaida.TPedV.Open;

           if not dmsaida.TPedV.IsEmpty then
               xNumFisc := dmsaida.TPedV.fieldbyname('numfiscal').AsString
           else
               xNumFisc := '';
       end;
       
       //Edmar - 24/10/2013 - Filtra conta corrente
       dmbanco.TCtaCor.Close;
       dmbanco.TCtaCor.SQL.Clear;
       DMBANCO.TCtaCor.SQL.Add('select * from ctacor where ctacor.cod_ctacor = :codctacor');
       dmbanco.TCtaCor.ParamByName('codctacor').AsInteger := XCOD_CTACORBLT;
       dmbanco.TCtaCor.Open;

       //Edmar - 24/10/2013 - Filtra agencia
       dmconta.TAlx.Close;
       dmconta.TAlx.SQL.Clear;
       dmconta.TAlx.SQL.Add('select * from agencia where agencia.cod_agencia = :codagencia');
       dmconta.talx.ParamByName('codagencia').AsInteger := dmbanco.TCtaCor.fieldbyname('cod_agencia').AsInteger;
       dmconta.talx.Open;

       //Edmar - 24/10/2013 - Filtra banco
       dmbanco.TAlx.Close;
       dmbanco.talx.SQL.Clear;
       dmbanco.TAlx.SQL.Add('select * from banco where banco.cod_banc = :codbanc');
       dmbanco.TAlx.ParamByName('codbanc').AsInteger := DMCONTA.TAlx.fieldbyname('cod_banco').AsInteger;
       dmbanco.talx.Open;

       dmserv.TAlx2.Close;
       dmserv.TAlx2.SQL.Clear;
       DMServ.TAlx2.SQL.Add('select * from parcelacr where parcelacr.cod_parcelacr = :codparcela');
       DMServ.TAlx2.ParamByName('codparcela').AsInteger := CODCTA;
       dmserv.TAlx2.Open;

       DMServ.TAlx3.Close;
       DMServ.TAlx3.SQL.Clear;
       dmserv.TAlx3.SQL.Add('select * from ctareceber where ctareceber.cod_ctareceber = :codreceber');
       dmserv.TAlx3.ParamByName('codreceber').AsInteger := DMServ.TAlx2.fieldbyname('cod_ctareceber').AsInteger;
       dmserv.TAlx3.Open;

       xHtml := '';
       xHtml := xHtml + '<table border=0 cellpadding=0 cellspacing=0 width=94><tr><td valign=top><font size=1><b>Recibo do Pagador</b></font></td></tr>';
       xHtml := xHtml + '<tr><td valign=top><table border=1 cellpadding=0 cellspacing=0 width=94 style="border-top: 1 solid black;';
       xHtml := xHtml + ' border-left: 3 solid black; border-right: none; border-bottom: none"><tr><td valign=top>';
       xHtml := xHtml + '<table border=0 cellpadding=0 cellspacing=0 border=0 width=100px><tr><td align=left valign=top width=100%>';
       xHtml := xHtml + '<font size=1>N&ordm; Documento</font></td></tr><tr><td align=center valign=middle width=100%><font size=1><b><#NumeroDocumento></b></font></td></tr></table></td></tr>';
       xHtml := xHtml + '<tr><td valign=top><table border=0 cellpadding=0 cellspacing=0 border=0 width=100%><tr><td align=left valign=top width=100%>';
       xHtml := xHtml + '<font size=1>Vencimento</font></td></tr><tr><td align=center valign=middle width=100%><font size=1><b><#Vencimento></b></font></td></tr></table></td></tr>';
       xHtml := xHtml + '<tr><td valign=top><table border=0 cellpadding=0 cellspacing=0 border=0 width=100%><tr><td align=left valign=top width=100%>';
       xHtml := xHtml + '<font size=1>Ag./Cód. Beneficiário</font></td></tr><tr><td align=center valign=middle width=100%><font size=1><b><#AgenciaCodigoCedente></b></font></td></tr></table></td></tr>';
       xHtml := xHtml + '<tr><td valign=top><table border=0 cellpadding=0 cellspacing=0 border=0 width=100%><tr><td align=left valign=top width=100%>';
       xHtml := xHtml + '<font size=1>Nosso Número</font></td></tr><tr><td align=center valign=middle width=100%><font size=1><b><#NossoNumeroExibicao></b></font></td></tr></table></td></tr>';
       xHtml := xHtml + '<tr><td valign=top><table border=0 cellpadding=0 cellspacing=0 border=0 width=100%><tr><td align=left valign=top width=100%>';
       xHtml := xHtml + '<font size=1>Vl. Documento</font></td></tr><tr><td align=center valign=middle width=100%><font size=1><b><#ValorDocumentoExibicao></b></font></td></tr></table></td></tr>';
       xHtml := xHtml + '<tr><td valign=top><table border=0 cellpadding=0 cellspacing=0 border=0 width=100%><tr><td align=left valign=top width=100%>';
       xHtml := xHtml + '<font size=1>(-) Desconto</font></td></tr><tr><td align=center valign=middle width=100%><font size=1><b><#ValorDescontoExibicao></b></font></td></tr></table></td></tr>';
       xHtml := xHtml + '<tr><td valign=top><table border=0 cellpadding=0 cellspacing=0 border=0 width=100%><tr><td align=left valign=top width=100%>';
       xHtml := xHtml + '<font size=1>(+) Mora/Multa</font></td></tr><tr><td align=center valign=middle width=100%><font size=1>&nbsp;</font></td></tr></table></td></tr>';
       xHtml := xHtml + '<tr><td valign=top><table border=0 cellpadding=0 cellspacing=0 border=0 width=100%><tr><td align=left valign=top width=100%>';
       xHtml := xHtml + '<font size=1>(+) Outros Acrés.</font></td></tr><tr><td align=center valign=middle width=100%><font size=1><b><#ValorOutrosAcrescimosExibicao></b></font></td></tr></table></td></tr>';
       xHtml := xHtml + '<tr><td valign=top><table border=0 cellpadding=0 cellspacing=0 border=0 width=100%><tr><td align=left valign=top width=100%>';
       xHtml := xHtml + '<font size=1>(=) Valor Cobrado</font></td></tr><tr><td align=center valign=middle width=100%><font size=1>&nbsp;</font></td></tr></table></td></tr>';
       xHtml := xHtml + '<tr><td valign=top><table border=0 cellpadding=0 cellspacing=0 border=0 width=100%><tr><td align=left valign=top width=100%>';
       xHtml := xHtml + '<font size=1>Pagador</font></td></tr><tr><td align=left valign=middle width=100%><font size=1><b><#NomeSacado></b></font></td></tr></table></td></tr>';
       xHtml := xHtml + '</table></td></tr></table>';

       DMMACS.TEmpresa.Open;

       try
           CobreBemXPadrao := CreateOleObject('CobreBemX.ContaCorrente');
       except
           Mensagem('A T E N Ç Ã O ', 'O componente para emissão de boletos não foi instalado corretamente. Favor repassar a sitação ao suporte.', '', 1,1, false, 'a');
       end;

       if (DMBANCO.TCtaCor.FieldByName('LICENSACOBREBEM').AsString = '') OR not (FileExists(DMBANCO.TCtaCor.FieldByName('LICENSACOBREBEM').AsString)) then
       begin
           Mensagem('A T E N Ç Ã O ', 'Por favor selecione a licença para gerar ou visualizar o boleto!', '', 1,1, false, 'a');
           Exit;
       end;

       CobreBemXPadrao.ArquivoLicenca := DMBANCO.TCtaCor.FieldByName('LICENSACOBREBEM').AsString;

       if DMBANCO.TAlx.FieldByName('numbanco').AsString = '756' then //Sicoob
       begin
           //Edmar - 24/10/2013 - Joga informações para o boleto
           CobreBemXPadrao.CodigoCedente := ConcatZero(DMBANCO.TCtaCor.FieldByName('nossonumblt').AsString, 7);

           if not remessa then
           begin
               CobreBemXPadrao.CodigoAgencia := dmconta.TAlx.FieldByName('numagencia').AsString+'/00';
               CobreBemXPadrao.NumeroContaCorrente := DMBANCO.TCtaCor.FieldByName('numctacor').AsString;
           end else
           begin
               CobreBemXPadrao.CodigoAgencia := DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString+'-'+DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
               CobreBemXPadrao.NumeroContaCorrente := DMBANCO.TCtaCor.FieldByName('codcedenteblt').AsString+'-'+DMBANCO.TCtaCor.FieldByName('digcodcedenteblt').AsString;
           end;

           CobreBemXPadrao.OutroDadoConfiguracao2 := ConcatZero(DMBANCO.TCtaCor.FieldByName('codempresablt').AsString, 7);

           //Edmar - 15/12/2014 - Para boleto do sicoob com registro é usado uma parceria com o banco do brasil. nessa parceria, o inicio do nosso número
           //é fixado em 1345180. Após isso vem o prefixo. Pensavamos que era padrão 864, mas existem outros (EXIMIA USA 764) por isso a necessidade
           //desse campo PREFIXO_NOSSONUM. Aqui ele verifica se essa conta corrente possui um prefixo cadastrado, se houver, usa ele,
           //do contrario usa o prefixo usado nas outras empresas (864)
           if DMBANCO.TCtaCor.FieldByName('PREFIXO_NOSSONUM').AsString <> '' then
               xPrefixoNossoNum := DMBANCO.TCtaCor.FieldByName('PREFIXO_NOSSONUM').AsInteger
           else
               xPrefixoNossoNum := 864;

           CobreBemXPadrao.InicioNossoNumero := CurrToStr(xPrefixoNossoNum)+'0000001';
           CobreBemXPadrao.FimNossoNumero := CurrToStr(xPrefixoNossoNum)+'9999999';

           //preenche o restante das casas com zero (o sequencial do nosso número deve ter 10 digitos)
           xPrefixoNossoNum := StrToCurr(ConcatZeroDir(CurrToStr(xPrefixoNossoNum), 10));

           CobreBemXPadrao.LocalPagamento := 'PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO';
       end
       else begin //Sicredi
           CobreBemXPadrao.CodigoCedente := DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString;
           CobreBemXPadrao.CodigoAgencia := DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString+'.'+DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
           CobreBemXPadrao.NumeroContaCorrente := DMBANCO.TCtaCor.FieldByName('numctacor').AsString+'-'+DMBANCO.TCtaCor.FieldByName('DIGCTACOR').AsString;
           CobreBemXPadrao.InicioNossoNumero := '00000';
           CobreBemXPadrao.FimNossoNumero := '99999';

           if remessa then
               CobreBemXPadrao.OutroDadoConfiguracao2 := '1'
           else
               CobreBemXPadrao.OutroDadoConfiguracao2 := '3';
       end;

       if dmbanco.TAlx.FieldByName('numbanco').AsString = '104' then //Caixa
       begin
           if DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT').AsString <> '' then
               CobreBemXPadrao.CodigoCedente := DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString+'-'+DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT').AsString;

           //Edmar - 18/12/2014 - o nosso número varia conforme a carteira
           if (DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString = 'CS') OR
               (DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString = '1') OR
                   (DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString = '01') then
           begin
               CobreBemXPadrao.InicioNossoNumero := '000000000';
               CobreBemXPadrao.FimNossoNumero :=    '999999999';

               if remessa then
                   //Edmar - S quando não utilizar o padrão SINCO. O padrão SINCO é apenas com registro
                   CobreBemXPadrao.OutroDadoConfiguracao1 := 'S'
               else
                   CobreBemXPadrao.OutroDadoConfiguracao1 := 'N';
           end
           else begin
               CobreBemXPadrao.InicioNossoNumero := '000000000000000';
               CobreBemXPadrao.FimNossoNumero :=    '999999999999999';
           end;

           CobreBemXPadrao.LocalPagamento := 'PREFERENCIALMENTE NAS CASAS LOTÉRICAS ATÉ O VALOR LIMITE';
       end;

       if(dmbanco.TCtaCor.FieldByName('proxboleto').AsString <> '0') or (dmbanco.TCtaCor.FieldByName('proxboleto').AsString <> '')then
           xNum := DMBANCO.TCtaCor.fieldbyname('proxboleto').AsString
       else
           xNum := '1';

//       BoletoPadrao := CobreBemXPadrao.DocumentosCobranca.Add;

       //Edmar - 30/07/2014 - Monta nosso número dos boletos
       if DMBANCO.TAlx.FieldByName('numbanco').AsString = '756' then //Sicoob
           CobreBemXPadrao.ProximoNossoNumero := CurrToStr(xPrefixoNossoNum + StrToCurr(xNum))
       else
           if DMBANCO.TAlx.FieldByName('NUMBANCO').AsString = '748' then//Sicredi
               BoletoPadrao.NossoNumero := Copy(xNum, Length(xNum)-4, Length(xNum))
           else
               CobreBemXPadrao.ProximoNossoNumero := IntToStr(StrToInt(xNum) - 1);

       DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
       CobreBemXPadrao.PadroesBoleto.PadroesBoletoImpresso.ArquivoLogotipo := 'C:\MZR\Macs\CobreBemX\Imagens\'+dmbanco.TAlx.FieldByName('numbanco').AsString+'.jpg';
       CobreBemXPadrao.PadroesBoleto.PadroesBoletoImpresso.CaminhoImagensCodigoBarras := 'C:\MZR\Macs\CobreBemX\Imagens\';
       CobreBemXPadrao.PadroesBoleto.PadroesBoletoImpresso.LayoutBoleto := 'CarnetReciboLateralEsquerdaPersonalizado';
       CobreBemXPadrao.PadroesBoleto.PadroesBoletoImpresso.HTMLReciboPersonalizado := xHtml;
       CobreBemXPadrao.PadroesBoleto.PadroesBoletoImpresso.MargemSuperior := 0;
       CobreBemXPadrao.PadroesBoleto.PadroesBoletoImpresso.MargemEsquerda := 11;

      	while not DMFINANC.TAlx.Eof do
		begin
       	BoletoPadrao := CobreBemXPadrao.DocumentosCobranca.Add;
                  
           DMconta.TParcCR.Close;
           dmconta.tparccr.SQL.Clear;
           DMCONTA.TParcCR.SQL.Add('select * from parcelacr where parcelacr.cod_parcelacr = :codpar');
           dmconta.TParcCR.ParamByName('codpar').AsInteger := dmfinanc.TAlx.fieldbyname('cod_parcelacr').AsInteger;
           dmconta.TParcCR.Open;

           DMCONTA.TParcCR.Edit;
           DMCONTA.TParcCR.FieldByName('imp').AsString := 'B';
           if dmbanco.TCtaCor.FieldByName('proxboleto').AsCurrency = 0 then
           begin
               dmbanco.TCtaCor.Edit;
               dmbanco.TCtaCor.FieldByName('proxboleto').AsCurrency := 1;
               dmbanco.TCtaCor.Post;
           end;

           BoletoPadrao.NumeroDocumento := xNumFisc+'-'+dmbanco.TCtaCor.FieldByName('proxboleto').AsString+':'+dmfinanc.TAlx.FieldByName('numparc').AsString;
           if ValidCPF(DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString) = True then
				BoletoPadrao.NomeSacado := TiraCaracter(TiraAcentos(DMFINANC.TAlx.fieldbyname('SACADO_PF').AsString), '-')
           else
               BoletoPadrao.NomeSacado := TiraCaracter(TiraAcentos(DMFinanc.TAlx.FieldByName('SACADO_PJ').AsString), '-');           
           BoletoPadrao.CPFSacado := DMFINANC.TAlx.FieldByName('cpfcnpj').AsString;
           BoletoPadrao.EnderecoSacado := DMFINANC.TAlx.FieldByName('endereco').AsString;
           BoletoPadrao.BairroSacado := DMFINANC.talx.FieldByName('bairro').AsString;
           BoletoPadrao.CidadeSacado := dmfinanc.TAlx.FieldByName('cidade').AsString;
           BoletoPadrao.EstadoSacado := dmfinanc.TAlx.FieldByName('uf_estado').AsString;
           BoletoPadrao.CepSacado := dmfinanc.TAlx.FieldByName('cep').AsString;
           BoletoPadrao.DataDocumento := dmserv.TAlx3.FieldByName('dtlanc').AsString;
           BoletoPadrao.DataVencimento := DMFinanc.TAlx.FieldByName('DTVENC').AsString;
           BoletoPadrao.ValorDocumento := DMFinanc.TAlx.FieldByName('valor').AsCurrency;
       	if (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '-1') AND (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '') then
           	BoletoPadrao.DiasProtesto := DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString;
           {if dmmacs.TLoja.FieldByName('juros').AsString <> '' then
               BoletoPadrao.ValorJurosDiaAtraso := (DMMACS.TLoja.FieldByName('juros').AsCurrency)/30;}
           //BoletoPadrao.PadroesBoleto.InstrucoesCaixa := dmbanco.TCtaCor.FieldByName('instruboleto').AsString+#13+DMCONTA.TParcCR.FieldByName('TEXTOBLT').AsString;
           BoletoPadrao.PadroesBoleto.InstrucoesCaixa := DMCONTA.TParcCR.FieldByName('TEXTOBLT').AsString;

           if DMMACS.TLoja.FieldByName('MULTA').AsString <> '' then
           begin
               xVlMulta := DMFinanc.TAlx.FieldByName('VALOR').AsCurrency * (DMMACS.TLoja.FieldByName('MULTA').AsCurrency / 100);
               BoletoPadrao.ValorMultaAtraso := xVlMulta;
           end;

           if DMMACS.TLoja.FieldByName('JUROS').AsString <> '' then
           begin
               xVlJuros := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency + xVlMulta) * (DMMACS.TLoja.FieldByName('JUROS').AsCurrency / 100)) / 30;
               BoletoPadrao.ValorJurosDiaAtraso:= xVlJuros;
           end;           

           xDados := BoletoPadrao.MeusDados.Add;
           xDados.Nome := 'NaoExibeVariacaoCarteira';
           xDados.Valor := 'S';

           DMFINANC.TAlx.Next;
           
           DMCONTA.TParcCR.FieldByName('numboleto').AsString := dmbanco.TCtaCor.FieldByName('proxboleto').AsString;
           DMCONTA.TParcCR.FieldByName('cod_ctacor').AsInteger := XCOD_CTACORBLT;
           DMCONTA.TParcCR.Post;

           dmbanco.TCtaCor.Edit;
           dmbanco.TCtaCor.FieldByName('proxboleto').AsCurrency := dmbanco.TCtaCor.fieldbyname('proxboleto').AsCurrency+1;
           dmbanco.TCtaCor.Post;
       end;
       
       try
       	CobreBemXPadrao.ImprimeBoletos;
       except
       end;

       if not dmconta.TParcCR.IsEmpty then
       begin
           try
               dmconta.TParcCR.Edit;
               dmconta.TParcCR.FieldByName('numfisc').AsString := xNumFisc;
               dmconta.TParcCR.FieldByName('cod_ctacor').AsInteger := XCOD_CTACORBLT;
               dmconta.TParcCR.FieldByName('nossonumblt').AsString := BoletoPadrao.NossoNumero;
               DMCONTA.TParcCR.FieldByName('VALOR_MULTABOLETO').AsCurrency := xVlMulta;
               DMCONTA.TParcCR.FieldByName('VALOR_JUROSBOLETO').AsCurrency := xVlJuros;
               dmconta.TParcCR.FieldByName('tipoblt').AsString := FMenu.XTIPOBOLTO;
               if FMenu.XTIPOBOLTO = 'R' then
               	DMCONTA.TParcCR.FieldByName('REMESSA').AsString := '';
               dmconta.TParcCR.Post;
               DMCONTA.IBT.CommitRetaining;
               dmbanco.IBT.CommitRetaining;
           except
             Mensagem('A T E N Ç Ã O ', 'O carnê não foi impresso devido a uma falha ao gravar o tipo de impressão na parcela!', '', 1,1, false, 'a');
           end;
       end;
   end
   else begin
       try
           xHtml := '';
	        xHtml := xHtml + '<table border=0 cellpadding=0 cellspacing=0 width=94><tr><td valign=top><font size=1><b>Recibo do Pagador</b></font></td></tr>';
	        xHtml := xHtml + '<tr><td valign=top><table border=1 cellpadding=0 cellspacing=0 width=94 style="border-top: 1 solid black;';
	        xHtml := xHtml + ' border-left: 3 solid black; border-right: none; border-bottom: none"><tr><td valign=top>';
	        xHtml := xHtml + '<table border=0 cellpadding=0 cellspacing=0 border=0 width=100px><tr><td align=left valign=top width=100%>';
	        xHtml := xHtml + '<font size=1>N&ordm; Documento</font></td></tr><tr><td align=center valign=middle width=100%><font size=1><b><#NumeroDocumento></b></font></td></tr></table></td></tr>';
	        xHtml := xHtml + '<tr><td valign=top><table border=0 cellpadding=0 cellspacing=0 border=0 width=100%><tr><td align=left valign=top width=100%>';
	        xHtml := xHtml + '<font size=1>Vencimento</font></td></tr><tr><td align=center valign=middle width=100%><font size=1><b><#Vencimento></b></font></td></tr></table></td></tr>';
	        xHtml := xHtml + '<tr><td valign=top><table border=0 cellpadding=0 cellspacing=0 border=0 width=100%><tr><td align=left valign=top width=100%>';
	        xHtml := xHtml + '<font size=1>Ag./Cód. Beneficiário</font></td></tr><tr><td align=center valign=middle width=100%><font size=1><b><#AgenciaCodigoCedente></b></font></td></tr></table></td></tr>';
	        xHtml := xHtml + '<tr><td valign=top><table border=0 cellpadding=0 cellspacing=0 border=0 width=100%><tr><td align=left valign=top width=100%>';
	        xHtml := xHtml + '<font size=1>Nosso Número</font></td></tr><tr><td align=center valign=middle width=100%><font size=1><b><#NossoNumeroExibicao></b></font></td></tr></table></td></tr>';
	        xHtml := xHtml + '<tr><td valign=top><table border=0 cellpadding=0 cellspacing=0 border=0 width=100%><tr><td align=left valign=top width=100%>';
	        xHtml := xHtml + '<font size=1>Vl. Documento</font></td></tr><tr><td align=center valign=middle width=100%><font size=1><b><#ValorDocumentoExibicao></b></font></td></tr></table></td></tr>';
	        xHtml := xHtml + '<tr><td valign=top><table border=0 cellpadding=0 cellspacing=0 border=0 width=100%><tr><td align=left valign=top width=100%>';
	        xHtml := xHtml + '<font size=1>(-) Desconto</font></td></tr><tr><td align=center valign=middle width=100%><font size=1><b><#ValorDescontoExibicao></b></font></td></tr></table></td></tr>';
	        xHtml := xHtml + '<tr><td valign=top><table border=0 cellpadding=0 cellspacing=0 border=0 width=100%><tr><td align=left valign=top width=100%>';
	        xHtml := xHtml + '<font size=1>(+) Mora/Multa</font></td></tr><tr><td align=center valign=middle width=100%><font size=1>&nbsp;</font></td></tr></table></td></tr>';
	        xHtml := xHtml + '<tr><td valign=top><table border=0 cellpadding=0 cellspacing=0 border=0 width=100%><tr><td align=left valign=top width=100%>';
	        xHtml := xHtml + '<font size=1>(+) Outros Acrés.</font></td></tr><tr><td align=center valign=middle width=100%><font size=1><b><#ValorOutrosAcrescimosExibicao></b></font></td></tr></table></td></tr>';
			xHtml := xHtml + '<tr><td valign=top><table border=0 cellpadding=0 cellspacing=0 border=0 width=100%><tr><td align=left valign=top width=100%>';
           xHtml := xHtml + '<font size=1>(=) Valor Cobrado</font></td></tr><tr><td align=center valign=middle width=100%><font size=1>&nbsp;</font></td></tr></table></td></tr>';
           xHtml := xHtml + '<tr><td valign=top><table border=0 cellpadding=0 cellspacing=0 border=0 width=100%><tr><td align=left valign=top width=100%>';
           xHtml := xHtml + '<font size=1>Pagador</font></td></tr><tr><td align=left valign=middle width=100%><font size=1><b><#NomeSacado></b></font></td></tr></table></td></tr>';
           xHtml := xHtml + '</table></td></tr></table>';
                                                                                                                                                          
       	//Filtra conta corrente
           dmbanco.TCtaCor.Close;
           dmbanco.TCtaCor.SQL.Clear;
           dmbanco.TCtaCor.SQL.Add('select * from ctacor where ctacor.cod_ctacor = :codctacor');
           dmbanco.TCtaCor.ParamByName('codctacor').AsInteger := XCOD_CTACORBLT;
           dmbanco.TCtaCor.Open;

           //Edmar - 24/10/2013 - Filtra agencia
           dmconta.TAlx.Close;
           dmconta.TAlx.SQL.Clear;
           dmconta.TAlx.SQL.Add('select * from agencia where agencia.cod_agencia = :codagencia');
           dmconta.talx.ParamByName('codagencia').AsInteger := dmbanco.TCtaCor.fieldbyname('cod_agencia').AsInteger;
           dmconta.talx.Open;

           //Edmar - 24/10/2013 - Filtra banco
           DMServ.TAlx2.Close;
           DMServ.TAlx2.SQL.Clear;
           DMServ.TAlx2.SQL.Add('select * from banco where banco.cod_banc = :codbanc');
           DMServ.TAlx2.ParamByName('codbanc').AsInteger := DMCONTA.TAlx.fieldbyname('cod_banco').AsInteger;
           DMServ.TAlx2.Open;

           //Edmar - 24/10/2013 - Filtra contas receber
           DMServ.TAlx3.Close;
           DMServ.TAlx3.SQL.Clear;
           dmserv.TAlx3.SQL.Add('select * from ctareceber where ctareceber.cod_ctareceber = :codreceber');
           dmserv.TAlx3.ParamByName('codreceber').AsInteger := DMFINANC.TAlx.fieldbyname('cod_ctareceber').AsInteger;
           dmserv.TAlx3.Open;

           dmsaida.TPedV.Close;
           dmsaida.TPedV.SQL.Clear;
           dmsaida.tpedv.sql.add('select * from pedvenda where pedvenda.cod_pedvenda = :codpvenda');
           dmsaida.TPedV.ParamByName('codpvenda').AsInteger := dmfinanc.TAlx.fieldbyname('cod_gerador').AsInteger;
           dmsaida.TPedV.Open;

           if not dmsaida.TPedV.IsEmpty then
               xNumFisc := dmsaida.TPedV.fieldbyname('numfiscal').AsString
           else
               xNumFisc := '';
               
			try
           	CobreBemXPadrao := CreateOleObject('CobreBemX.ContaCorrente');
           except
				Mensagem('A T E N Ç Ã O ', 'O componente para emissão de boletos não foi instalado corretamente. Favor repassar a sitação ao suporte.', '', 1,1, false, 'a');
           end;

           if (DMBANCO.TCtaCor.FieldByName('LICENSACOBREBEM').AsString = '') OR not (FileExists(DMBANCO.TCtaCor.FieldByName('LICENSACOBREBEM').AsString)) then
           begin
               Mensagem('A T E N Ç Ã O ', 'Por favor selecione a licença para gerar ou visualizar o boleto!', '', 1,1, false, 'a');
               Exit;
           end;           

			CobreBemXPadrao.ArquivoLicenca := DMBANCO.TCtaCor.FieldByName('LICENSACOBREBEM').AsString;

           if DMServ.TAlx2.FieldByName('numbanco').AsString = '756' then //Sicoob
           begin    
				//Edmar - 24/10/2013 - Joga informações para o boleto
             	CobreBemXPadrao.CodigoCedente := ConcatZero(DMBANCO.TCtaCor.FieldByName('nossonumblt').AsString, 7);
               {
             	if not remessa then
             	begin
             		CobreBemXPadrao.CodigoAgencia := dmconta.TAlx.FieldByName('numagencia').AsString+'/00';
       			CobreBemXPadrao.NumeroContaCorrente := DMBANCO.TCtaCor.FieldByName('numctacor').AsString;
             	end else
             	begin
             		CobreBemXPadrao.CodigoAgencia := DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString+'-'+DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
             		CobreBemXPadrao.NumeroContaCorrente := DMBANCO.TCtaCor.FieldByName('codcedenteblt').AsString+'-'+DMBANCO.TCtaCor.FieldByName('digcodcedenteblt').AsString;
             	end;}

           	if DMFinanc.TAlx.FieldByName('REMESSA').AsString <> '' then
           	begin
           		CobreBemXPadrao.CodigoAgencia := dmconta.TAlx.FieldByName('numagencia').AsString+'/00';//dmconta.TAlx.FieldByName('numagencia').AsString+'/00';
               	CobreBemXPadrao.NumeroContaCorrente := DMBANCO.TCtaCor.FieldByName('numctacor').AsString;//DMBANCO.TCtaCor.FieldByName('numctacor').AsString;
           	end else
           	begin
           		CobreBemXPadrao.CodigoAgencia := DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString+'-'+DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;//DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString+'-'+DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
           		CobreBemXPadrao.NumeroContaCorrente := DMBANCO.TCtaCor.FieldByName('codcedenteblt').AsString+'-'+DMBANCO.TCtaCor.FieldByName('digcodcedenteblt').AsString;
           	end;

             	CobreBemXPadrao.OutroDadoConfiguracao2 := ConcatZero(DMBANCO.TCtaCor.FieldByName('codempresablt').AsString, 7);

               //Edmar - 15/12/2014 - Para boleto do sicoob com registro é usado uma parceria com o banco do brasil. nessa parceria, o inicio do nosso número
               //é fixado em 1345180. Após isso vem o prefixo. Pensavamos que era padrão 864, mas existem outros (EXIMIA USA 764) por isso a necessidade
               //desse campo PREFIXO_NOSSONUM. Aqui ele verifica se essa conta corrente possui um prefixo cadastrado, se houver, usa ele,
               //do contrario usa o prefixo usado nas outras empresas (864)
               if DMBANCO.TCtaCor.FieldByName('PREFIXO_NOSSONUM').AsString <> '' then
               	xPrefixoNossoNum := DMBANCO.TCtaCor.FieldByName('PREFIXO_NOSSONUM').AsInteger
               else
               	xPrefixoNossoNum := 864;

               CobreBemXPadrao.InicioNossoNumero := CurrToStr(xPrefixoNossoNum)+'0000001';
               CobreBemXPadrao.FimNossoNumero := CurrToStr(xPrefixoNossoNum)+'9999999';

               //preenche o restante das casas com zero (o sequencial do nosso número deve ter 10 digitos)
               xPrefixoNossoNum := StrToCurr(ConcatZeroDir(CurrToStr(xPrefixoNossoNum), 10));

             	CobreBemXPadrao.LocalPagamento := 'PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO';
           end
           else // Sicredi
           begin
				CobreBemXPadrao.CodigoCedente := DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString;
             	CobreBemXPadrao.CodigoAgencia := DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString+'.'+DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
             	CobreBemXPadrao.NumeroContaCorrente := DMBANCO.TCtaCor.FieldByName('numctacor').AsString+'-'+DMBANCO.TCtaCor.FieldByName('DIGCTACOR').AsString;
             	CobreBemXPadrao.InicioNossoNumero := '00000';
             	CobreBemXPadrao.FimNossoNumero := '99999';

             	if remessa then
               	CobreBemXPadrao.OutroDadoConfiguracao2 := '1'
             	else
               	CobreBemXPadrao.OutroDadoConfiguracao2 := '3';
           end;

 			if DMServ.TAlx2.FieldByName('numbanco').AsString = '104' then //Caixa
           begin
           	if DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT').AsString <> '' then
           		CobreBemXPadrao.CodigoCedente := DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString+'-'+DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT').AsString;

               //Edmar - 18/12/2014 - o nosso número varia conforme a carteira
				if (DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString = 'CS') OR
               	(DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString = '1') OR
						(DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString = '01') then
               begin
           		CobreBemXPadrao.InicioNossoNumero := '000000000';
	        		CobreBemXPadrao.FimNossoNumero :=    '999999999';
                   
					if remessa then
						//Edmar - S quando não utilizar o padrão SINCO. O padrão SINCO é apenas com registro
               		CobreBemXPadrao.OutroDadoConfiguracao1 := 'S'
                   else
               		CobreBemXPadrao.OutroDadoConfiguracao1 := 'N';
               end
               else begin
           		CobreBemXPadrao.InicioNossoNumero := '000000000000000';
	        		CobreBemXPadrao.FimNossoNumero :=    '999999999999999';
               end;
               
               CobreBemXPadrao.LocalPagamento := 'PREFERENCIALMENTE NAS CASAS LOTÉRICAS ATÉ O VALOR LIMITE';
           end;
           
			xNum := FloatToStr(StrToFloat(DMFINANC.TAlx.fieldbyname('numboleto').AsString));

           {
           if DMServ.TAlx2.FieldByName('NUMBANCO').AsString = '756' then //Sicoob
               CobreBemXPadrao.ProximoNossoNumero := IntToStr(8640000000 + StrToInt(xNum))
           else
               if DMServ.TAlx2.FieldByName('NUMBANCO').AsString = '748' then//Sicredi
                   BoletoPadrao.NossoNumero := DMFINANC.TAlx.FieldByName('nossonumblt').AsString
               else
                   CobreBemXPadrao.ProximoNossoNumero := xNum;
           }


           //Edmar - 30/07/2014 - Monta nosso número dos boletos
           if DMServ.TAlx2.FieldByName('NUMBANCO').AsString = '756' then //Sicoob
           	CobreBemXPadrao.ProximoNossoNumero := CurrToStr(xPrefixoNossoNum + StrToCurr(xNum))
           else
           	if DMServ.TAlx2.FieldByName('NUMBANCO').AsString = '748' then//Sicredi
					BoletoPadrao.NossoNumero := Copy(xNum, Length(xNum)-4, Length(xNum))
               else
                   CobreBemXPadrao.ProximoNossoNumero := IntToStr(StrToInt(xNum) - 1);
                                         
           CobreBemXPadrao.PadroesBoleto.PadroesBoletoImpresso.ArquivoLogotipo := 'C:\MZR\Macs\CobreBemX\Imagens\emp.jpg';
           CobreBemXPadrao.PadroesBoleto.PadroesBoletoImpresso.CaminhoImagensCodigoBarras := 'C:\MZR\Macs\CobreBemX\Imagens\';
           CobreBemXPadrao.PadroesBoleto.PadroesBoletoImpresso.LayoutBoleto := 'CarnetReciboLateralEsquerdaPersonalizado';
           CobreBemXPadrao.PadroesBoleto.PadroesBoletoImpresso.HTMLReciboPersonalizado := xHtml;
           CobreBemXPadrao.PadroesBoleto.PadroesBoletoImpresso.MargemSuperior := 0;
           CobreBemXPadrao.PadroesBoleto.PadroesBoletoImpresso.MargemEsquerda := 11;

       	dmfinanc.TAlx.First;
           while not dmfinanc.TAlx.Eof do
           begin
           	BoletoPadrao := CobreBemXPadrao.DocumentosCobranca.Add;
               
               xNum := FloatToStr(StrToFloat(DMFINANC.TAlx.fieldbyname('numboleto').AsString));

               BoletoPadrao.NumeroDocumento := xNumFisc+'-'+xNum+':'+DMFINANC.TAlx.FieldByName('numparc').AsString;
               if ValidCPF(DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString) = True then
                   BoletoPadrao.NomeSacado := TiraCaracter(TiraAcentos(DMFINANC.TAlx.fieldbyname('SACADO_PF').AsString), '-')
               else
                   BoletoPadrao.NomeSacado := TiraCaracter(TiraAcentos(DMFinanc.TAlx.FieldByName('SACADO_PJ').AsString), '-'); 
               BoletoPadrao.CPFSacado := DMFINANC.TAlx.FieldByName('cpfcnpj').AsString;
               BoletoPadrao.EnderecoSacado := DMFINANC.TAlx.FieldByName('endereco').AsString;
               BoletoPadrao.BairroSacado := DMFINANC.talx.FieldByName('bairro').AsString;
               BoletoPadrao.CidadeSacado := dmfinanc.TAlx.FieldByName('cidade').AsString;
               BoletoPadrao.EstadoSacado := dmfinanc.TAlx.FieldByName('uf_estado').AsString;
               BoletoPadrao.CepSacado := dmfinanc.TAlx.FieldByName('cep').AsString;
               BoletoPadrao.DataDocumento :=  dmserv.TAlx3.FieldByName('dtlanc').AsString;
               BoletoPadrao.DataVencimento := DMFinanc.TAlx.FieldByName('DTVENC').AsString;
               BoletoPadrao.ValorDocumento := DMFinanc.TAlx.FieldByName('valor').AsCurrency;
               if (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '-1') AND (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '') then
                   BoletoPadrao.DiasProtesto := DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString;
               BoletoPadrao.PadroesBoleto.InstrucoesCaixa := DMCONTA.TParcCR.FieldByName('TEXTOBLT').AsString;
               BoletoPadrao.ValorMultaAtraso := DMFINANC.TAlx.FieldByName('VALOR_MULTABOLETO').AsCurrency;
               BoletoPadrao.ValorJurosDiaAtraso:= DMFINANC.TAlx.FieldByName('VALOR_JUROSBOLETO').AsCurrency;

               xDados := BoletoPadrao.MeusDados.Add;
           	xDados.Nome := 'NaoExibeVariacaoCarteira';
           	xDados.Valor := 'S';

               DMFINANC.TAlx.Next;
           end;
           
           try
           	CobreBemXPadrao.ImprimeBoletos;
           except
           end;
       except
       	Mensagem('A T E N Ç Ã O ', 'O carnê não foi impresso devido a uma falha no processamento!', '', 1,1, false, 'a');
       end;
   end;
   end;
procedure TFPadraoContas.DBGridCadastroPadraoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
	if XTipoPR = 'R' then
   begin//Edmar - 05/09/2014 - Condição para contas a receber, testa se a conta está vencida
   	if DMCONTA.WParR.FieldByName('DTVENC').AsDateTime <= Date() then
   	begin
      		DBGridCadastroPadrao.Canvas.Font.Color := clRed;
      		DBGridCadastroPadrao.DefaultDrawColumnCell( Rect, DataCol, Column, State);
   	end;
   end
	else if XTipoPR = 'P' then
   begin//Edmar - 05/09/2014 - Condição para contas a pagar, testa se a conta está vencida
   	if DMCONTA.WParP.FieldByName('DTVENC').AsDateTime <= Date() then
   	begin
      		DBGridCadastroPadrao.Canvas.Font.Color := clRed;
      		DBGridCadastroPadrao.DefaultDrawColumnCell( Rect, DataCol, Column, State);
   	end;
   end;
end;

procedure TFPadraoContas.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR
  Data: Integer;
  Mes:String;
  Year, Month, Day:word;
begin
   inherited;
   	Try
   	Data := DayOfWeek(Date());{Volta um número inteiro que representa o dia da semana}
		//DMFinanc.TAlx.FieldByName('dtdebito').AsDateTime
   	//Data := DayOfWeek(StrToDate(DMCONTA.WParR.FieldByName('dtdebito').AsString));
    	DecodeDate(Date(), Year, Month, Day);
    	Case Month of
      		1:Mes:='Janeiro';
      		2:Mes:='Fevereiro';
      		3:Mes:='Março';
      		4:Mes:='Abril';
      		5:Mes:='Maio';
      		6:Mes:='Junho';
      		7:Mes:='Julho';
      		8:Mes:='Agosto';
      		9:Mes:='Setembro';
      		10:Mes:='Outubro';
      		11:Mes:='Novembro';
      		12:Mes:='Dezembro';
    	End;
   Except
   end;
   If FiltraTabela(DMMACS.TALX, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '') Then
   	QRLabel101.Caption:=DMMACS.TALX.FieldByName('NOME').AsString+', '+ IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year)
   Else
   	QRLabel101.Caption:=IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year);

   FMenu.Extenso.Numero:=FormatFloat('0.00', DMFINANC.TAlx.FieldByName('VALORPG').AsCurrency);;
	QrlImportancia.Caption:=UpperCase(FMenu.Extenso.Extenso);
   QRDataRec2.Caption:=TimeToStr(Time());
end;

procedure TFPadraoContas.EnviaBoletoPorEmail(xEmailPagador: String);
begin
	try
   	//Edmar - 18/12/2014 - Só envia o boleto por e-mail se foi informado e-mail válido
       if xEmailPagador = '' then
       begin
			Mensagem(' A T E N Ç Ã O ', 'Não foi encontrado nenhum endereço de e-mail para o envio do boleto.', '', 1, 1, False, 'I');
           Exit;
       end;

    	CobreBemXPadrao.PadroesBoleto.PadroesBoletoEmail.URLImagensCodigoBarras := 'http://www.bptob.com/imagenscbe/';
    	CobreBemXPadrao.PadroesBoleto.PadroesBoletoEmail.URLLogotipo := 'http://www.thisf.com.br/banners/BannerCBE.gif';
    	CobreBemXPadrao.PadroesBoleto.PadroesBoletoEmail.PadroesEmail.Assunto := 'Boleto de Cobrança';
    	CobreBemXPadrao.PadroesBoleto.PadroesBoletoEmail.PadroesEmail.EmailFrom.Endereco := 'xmlnfe@mzrsistemas.com';
    	CobreBemXPadrao.PadroesBoleto.PadroesBoletoEmail.PadroesEmail.EmailFrom.Nome := 'MZR Sistemas - Financeiro';
    	CobreBemXPadrao.PadroesBoleto.PadroesBoletoEmail.PadroesEmail.FormaEnvio := feeSMTPBoletoHTML;

       //informações do provedor que enviará os boletos
    	CobreBemXPadrao.PadroesBoleto.PadroesBoletoEmail.SMTP.Servidor := 'smtp.mzrsistemas.com'; { Trocar para apontar para o seu servidor SMTP }
    	CobreBemXPadrao.PadroesBoleto.PadroesBoletoEmail.SMTP.Porta := 587;
    	CobreBemXPadrao.PadroesBoleto.PadroesBoletoEmail.SMTP.Usuario := 'xmlnfe@mzrsistemas.com'; {utilizar esta propriedade para acesso a servidores SMTP seguros }
    	CobreBemXPadrao.PadroesBoleto.PadroesBoletoEmail.SMTP.Senha := 'M357ZR'; {utilizar esta propriedade para acesso a servidores SMTP seguros }

    	EmailSacadoPadrao := BoletoPadrao.EnderecosEmailSacado.Add;
    	EmailSacadoPadrao.Nome := BoletoPadrao.NomeSacado;
    	EmailSacadoPadrao.Endereco := xEmailPagador;

    	BoletoPadrao.ControleProcessamentoDocumento.Imprime := scpExecutar;
    	BoletoPadrao.ControleProcessamentoDocumento.EnviaEmail := scpExecutar;

   	CobreBemXPadrao.EnviaBoletosPorEmail;
       
   	Mensagem(' I N F O R M A Ç Ã O', 'E-mail enviado com sucesso!', '', 1, 1, False, 'I');
	except
   	Mensagem(' A T E N Ç Ã O ', 'Não foi possível enviar o boleto por e-mail.', '', 1, 1, False, 'A');
   end;
end;

procedure TFPadraoContas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
	//Edmar - 05/05/2015 - se estiver cadastrando ou consultando um item e for lançamento automatico, chamo o evento do botão cancelar
	if (PCADASTRO.Visible = True) AND not (XLancAut) then
   begin
       BtnCancelar.Click;
       Exit;
   End;

	//Edmar - 05/05/2015 - se estiver cadastrando ou consultando um item, chamo o evento do botão cancelar
	if (PConsultParc.Visible = True)  AND not (XLancAut) then
   begin
       BitBtn2.Click;
       Exit;
   End;
   XLancAut:=False;   
end;

End.

