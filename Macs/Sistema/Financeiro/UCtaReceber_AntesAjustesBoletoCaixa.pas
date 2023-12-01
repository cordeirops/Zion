unit UCtaReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoContas, TFlatHintUnit, DBCtrls, StdCtrls,
  DBColorComboBox, DBColorEdit, Mask, ColorMaskEdit, Grids, DBGrids,
  TFlatTabControlUnit, Buttons, jpeg, ExtCtrls, EditFloat, ColorEditFloat,
  Qrctrls, QuickRpt, Menus, UFrmBusca, FR_DSet, FR_DBSet, FR_Class,
  IBEvents, DrLabel, Printers, XP_Button, TFlatButtonUnit,
  cxTextEdit, cxControls, cxContainer, cxEdit, cxGroupBox, cxRadioGroup,
  RpBase, RpSystem, RpDefine, RpRave, ComCtrls,ACBrBase, ACBrBoleto, ACBrUtil, frxClass,
  frxExportPDF, TFlatEditUnit, frxDBSet, ACBrBoletoFCFR, FileCtrl;

type
  TFCtaReceber = class(TFPadraoContas)
    Duplicatas1: TMenuItem;
    N1: TMenuItem;
    PConfere: TPanel;
    EdDtConfere1: TColorMaskEdit;
    RGFiltroDt: TRadioGroup;
    Label19: TLabel;
    Label20: TLabel;
    EdDtConfere2: TColorMaskEdit;
    RGFiltroCtas: TRadioGroup;
    RgOrdem: TRadioGroup;
    BtnFiltraMark: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRBand2: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    EdNumParcMark: TColorMaskEdit;
    Label21: TLabel;
    P: TPrintDialog;
    Recibo1: TMenuItem;
    N2: TMenuItem;
    RBDuplicata: TRadioButton;
    RBBoleto: TRadioButton;
    QRLabel33: TQRLabel;
    QRDBText30: TQRDBText;
    PRemessa: TPanel;
    DBGRemessa: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    BtnGeraRemessa: TBitBtn;
    BitBtn9: TBitBtn;
    rdgLayoutArquivoRemessa: TRadioGroup;
    SaveDialog1: TSaveDialog;
    GroupBox19: TGroupBox;
    txtRelatorioRetorno: TMemo;
    btnLerRetorno: TBitBtn;
    PRetorno: TPanel;
    MRetorno: TMemo;
    OpenDialog1: TOpenDialog;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    Boletos1: TMenuItem;
    NovoBoleto1: TMenuItem;
    OutraVia1: TMenuItem;
    LNumRemessa: TDRLabel;
    QRLabel20: TQRLabel;
    PopupMenu1: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    N3: TMenuItem;
    MarcarcomoSCPC1: TMenuItem;
    PSPC: TPanel;
    DBGrid6: TDBGrid;
    GroupBox20: TGroupBox;
    EDDTLancSCPC: TColorMaskEdit;
    GroupBox21: TGroupBox;
    EdDTVencSCPC: TColorMaskEdit;
    GroupBox25: TGroupBox;
    EDPessoaSCPC: TColorMaskEdit;
    GroupBox26: TGroupBox;
    EdDocSCPC: TColorMaskEdit;
    EdTotalSCPC: TFloatEdit;
    GroupBox27: TGroupBox;
    EDHistoricoSCPC: TColorMaskEdit;
    GroupBox28: TGroupBox;
    EdBoletoSCPC: TColorMaskEdit;
    GroupBox29: TGroupBox;
    EdFiscSCPC: TColorMaskEdit;
    ExtratodeContas1: TMenuItem;
    N4: TMenuItem;
    FsDsRel02: TfrDBDataSet;
    FsRel02: TfrReport;
    Bevel1: TBevel;
    LTotJurMultaCalc: TLabel;
    Bevel2: TBevel;
    LTotJuroCalc: TLabel;
    LTotMultaCalc: TLabel;
    Bevel3: TBevel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label22: TLabel;
    LTotMulta: TLabel;
    Bevel4: TBevel;
    Label27: TLabel;
    LTotJuro: TLabel;
    Bevel5: TBevel;
    Declarao1: TMenuItem;
    Bevel6: TBevel;
    Duplicatas3: TMenuItem;
    Selecionada1: TMenuItem;
    odas1: TMenuItem;
    AtaDtdeVencimento1: TMenuItem;
    AtaSelecionada1: TMenuItem;
    Recibos1: TMenuItem;
    GrandeComValorPago1: TMenuItem;
    GrandeComValorDevido1: TMenuItem;
    N5: TMenuItem;
    Cupom1Coluna1: TMenuItem;
    Cupom2Colunas1: TMenuItem;
    ValorPago1: TMenuItem;
    ValorDevido1: TMenuItem;
    ComdadosdePessoaJurdica1: TMenuItem;
    ComdadosdePessoaFsica1: TMenuItem;
    GrandeComValorFinal1: TMenuItem;
    GBBaixa: TGroupBox;
    MEBaixa: TColorMaskEdit;
    Manual1: TMenuItem;
    PBoletoManual: TPanel;
    Label26: TLabel;
    CBContaCor: TComboBox;
    Label28: TLabel;
    Label29: TLabel;
    BtnGrava: TBitBtn;
    BitBtn14: TBitBtn;
    DBENumDoc: TEdit;
    DBBoleto: TDBColorEdit;
    Label30: TLabel;
    PTextoBlt: TPanel;
    Label32: TLabel;
    BtnGravaTextoBlt: TBitBtn;
    GrandeSemCorreo1: TMenuItem;
    Label33: TLabel;
    DBMemo1: TDBMemo;
    CbDefineQuant: TCheckBox;
    RelCtaReceber: TPopupMenu;
    Clientes1: TMenuItem;
    Documento1: TMenuItem;
    DocumentoAgrupado1: TMenuItem;
    RelaodosRecebimentos1: TMenuItem;
    DocumentoCorreo1: TMenuItem;
    FichadeCorreo1: TMenuItem;
    SetordeVenda1: TMenuItem;
    ContasaReceberCliente1: TMenuItem;
    BoletosEmitidos1: TMenuItem;
    ExtratodeClientes1: TMenuItem;
    ComDadosdePessoaFsica2: TMenuItem;
    ComDadosdePessoaJurdica2: TMenuItem;
    edNumeroCartao: TEdit;
    lbNumeroCartao: TLabel;
    CartaCobrana1: TMenuItem;
    N6: TMenuItem;
    DesmarcarTodas1: TMenuItem;
    AgruparContasSelecionadas1: TMenuItem;
    FiltrarContasMarcadas1: TMenuItem;
    BitBtn13: TBitBtn;
    Label34: TLabel;
    DBFiscal: TDBColorEdit;
    Label31: TLabel;
    ENomeConta: TEdit;
    GroupBox22: TGroupBox;
    EdNomeVendedor: TColorMaskEdit;
    GroupBox36: TGroupBox;
    EdNomeVendedorBaixada: TColorMaskEdit;
    RdCarne: TRadioButton;
    Carns1: TMenuItem;
    NovoCarn1: TMenuItem;
    OutraVia2: TMenuItem;
    OutraviadeTodas1: TMenuItem;
    CtasaReceberVencidaseBaixadas1: TMenuItem;
    QRLabel100: TQRLabel;
    QRDBText70: TQRDBText;
    Label35: TLabel;
    DBColorEdit3: TDBColorEdit;
    DBColorEdit6: TDBColorEdit;
    Label36: TLabel;
    QRReciboValor_LogoEmpresa: TQuickRep;
    QRBand7: TQRBand;
    QRDBText44: TQRDBText;
    QRDBText71: TQRDBText;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRShape91: TQRShape;
    QRLabel105: TQRLabel;
    QRShape92: TQRShape;
    QRLabel106: TQRLabel;
    QROS: TQRLabel;
    QRLabel110: TQRLabel;
    QRDBDATA: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRDBText72: TQRDBText;
    QRLabel114: TQRLabel;
    QRDBText73: TQRDBText;
    QRLabel115: TQRLabel;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    QRDBText76: TQRDBText;
    QRLabel116: TQRLabel;
    QRDBText77: TQRDBText;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRDBText78: TQRDBText;
    QRDBVALOREXTENSO: TQRLabel;
    QRDBText79: TQRDBText;
    QRDBImage2: TQRDBImage;
    QRLabel120: TQRLabel;
    QRENDERECO: TQRLabel;
    QRLabel122: TQRLabel;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRLabel123: TQRLabel;
    QRDBText82: TQRDBText;
    QRSysData2: TQRSysData;
    GrandecomValorPagocomLogo1: TMenuItem;
    PCartao: TPanel;
    Bevel12: TBevel;
    Panel6: TPanel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    ComboBox1: TComboBox;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    Edit1: TEdit;
    DbgCartoes: TDBGrid;
    GroupBox23: TGroupBox;
    EdDtLancCartao: TColorMaskEdit;
    GroupBox24: TGroupBox;
    EdVencCartao01: TColorMaskEdit;
    EdVencCartao02: TColorMaskEdit;
    GroupBox30: TGroupBox;
    EdPessoaCartao: TColorMaskEdit;
    GroupBox31: TGroupBox;
    EdDocCartao: TColorMaskEdit;
    EdTotalCartoes: TFloatEdit;
    GroupBox32: TGroupBox;
    EdHistoricoCartao: TColorMaskEdit;
    GroupBox35: TGroupBox;
    CBCobrancaCartao: TComboBox;
    GroupBox33: TGroupBox;
    CBBandeira: TComboBox;
    BtnFaturaContas: TBitBtn;
    QRDBText83: TQRDBText;
    N06RecibodaFatura1: TMenuItem;
    Label47: TLabel;
    ControleInterno1: TMenuItem;
    btnVencidos: TFlatButton;
    pListaRetorno: TPanel;
    DBGRIDRETORNO: TDBGrid;
    btnConfirmaRetorno: TBitBtn;
    btnCancelaRetorno: TBitBtn;
    Label52: TLabel;
    QRLabel107: TQRLabel;
    QRDBText84: TQRDBText;
    RelatriodeBancosePlanodecontas1: TMenuItem;
    ComprovantedeEntrega1: TMenuItem;
    N07ReciboDespachante1: TMenuItem;
    DB_RecDesp: TfrxDBDataset;
    DB_Empresa: TfrxDBDataset;
    DB_master_data: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    FrxRelCtaR: TfrxReport;
    DBRecibo: TfrDBDataSet;
    cbProtesto: TCheckBox;
    edDiasProtesto: TFlatEdit;
    Label37: TLabel;
    N08Recibo1: TMenuItem;
    TMTextoBlt: TMemo;
    CBBoletoRegistrado: TCheckBox;
    Label38: TLabel;
    MMJurosMultas: TMemo;
    BitBtn8: TBitBtn;
    VincularConta1: TMenuItem;
    PedidodeVenda1: TMenuItem;
    OrdemdeServio1: TMenuItem;
    Label39: TLabel;
    Label40: TLabel;
    LArquivo: TLabel;
    LConta: TLabel;
    PNEncontrados: TPanel;
    Label41: TLabel;
    Label42: TLabel;
    DBNEncontrados: TDBGrid;
    BtnRelatorioRetorno: TBitBtn;
    Label43: TLabel;
    DBDataRelBol: TfrxDBDataset;
    frxDBEncontrados: TfrxDBDataset;
    dataSetLoja: TfrxDBDataset;
    frxDBDadosloja: TfrxDBDataset;
    CBJUROS: TCheckBox;
    LMulta: TLabel;
    Label44: TLabel;
    BtnAtualizaJuros: TBitBtn;
    LPercent: TLabel;
    Label45: TLabel;
    EdValorMulta: TColorEditFloat;
    EdValorJuros: TColorEditFloat;
    RecibodeFatura: TMenuItem;
    RecibodeFatura1: TMenuItem;
    RecibodeFatura2: TMenuItem;
    btnLerRetornoPasta: TBitBtn;
    FLBRetorno: TFileListBox;
    mmStatusBoletos: TMemo;
    Label46: TLabel;
    Shape4: TShape;
    Label51: TLabel;
    Shape2: TShape;
    Label53: TLabel;
    Shape1: TShape;
    Label54: TLabel;

    N7: TMenuItem;
    Antecipaes2: TMenuItem;
    AnteciparSelecionadas2: TMenuItem;
    ExtornarSelecionadas2: TMenuItem;
    LiquidarSelecionadas2: TMenuItem;
    MarcarContaparaAntecipao1: TMenuItem;
    N8: TMenuItem;
    Bevel7: TBevel;
    Label55: TLabel;
    LTotSemJurMultaCalc: TLabel;

    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnBaixarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Duplicata1Click(Sender: TObject);
    procedure TCConsultContasTabChanged(Sender: TObject);
    procedure BtnFiltraMarkClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure EdNumParcMarkKeyPress(Sender: TObject; var Key: Char);
    procedure PShow(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure RBBoletoExit(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure BtnGeraRemessaClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure DBGRemessaDblClick(Sender: TObject);
    procedure OutraVia1Click(Sender: TObject);
    procedure NovoBoleto1Click(Sender: TObject);
    procedure EdCliCobKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCliCobKeyPress(Sender: TObject; var Key: Char);
    procedure EdDocCobKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdLancCobKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdVencCobKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdDevCobKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdDocCobKeyPress(Sender: TObject; var Key: Char);
    procedure MarcarcomoSCPC1Click(Sender: TObject);
    procedure EdCod_InternoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridCadastroPadraoCellClick(Column: TColumn);
    procedure DBGridCadastroPadraoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNumBoletoBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNumFiscalBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdHistoricoKeyPress(Sender: TObject; var Key: Char);
    procedure Declarao1Click(Sender: TObject);
    procedure Selecionada1Click(Sender: TObject);
    procedure odas1Click(Sender: TObject);
    procedure AtaDtdeVencimento1Click(Sender: TObject);
    procedure AtaSelecionada1Click(Sender: TObject);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure GrandeComValorPago1Click(Sender: TObject);
    procedure GrandeComValorDevido1Click(Sender: TObject);
    procedure Cupom1Coluna1Click(Sender: TObject);
    procedure ValorPago1Click(Sender: TObject);
    procedure ValorDevido1Click(Sender: TObject);
    procedure EDFornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure EDDTLancSCPCKeyPress(Sender: TObject; var Key: Char);
    procedure EdDocSCPCKeyPress(Sender: TObject; var Key: Char);
    procedure EdBoletoSCPCKeyPress(Sender: TObject; var Key: Char);
    procedure EdFiscSCPCKeyPress(Sender: TObject; var Key: Char);
    procedure EdDTVencSCPCKeyPress(Sender: TObject; var Key: Char);
    procedure ComdadosdePessoaFsica1Click(Sender: TObject);
    procedure ComdadosdePessoaJurdica1Click(Sender: TObject);
    procedure GrandeComValorFinal1Click(Sender: TObject);
    procedure QRLabel85Print(sender: TObject; var Value: String);
    procedure QRBRecFinBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure MEBaixaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Manual1Click(Sender: TObject);
    procedure PBoletoManualExit(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BtnGravaClick(Sender: TObject);
    procedure DBCOBRANCAKeyPress(Sender: TObject; var Key: Char);
    procedure BtnGravaTextoBltClick(Sender: TObject);
    procedure GrandeSemCorreo1Click(Sender: TObject);
    procedure DBCOBRANCAExit(Sender: TObject);
    procedure DBGSLAVEDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGSLAVEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGMestreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGMestreDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridCadastroPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGRemessaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGRemessaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGBAIXADASDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGBAIXADASKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Documento1Click(Sender: TObject);
    procedure DocumentoAgrupado1Click(Sender: TObject);
    procedure RelaodosRecebimentos1Click(Sender: TObject);
    procedure DocumentoCorreo1Click(Sender: TObject);
    procedure FichadeCorreo1Click(Sender: TObject);
    procedure SetordeVenda1Click(Sender: TObject);
    procedure ContasaReceberCliente1Click(Sender: TObject);
    procedure BoletosEmitidos1Click(Sender: TObject);
    procedure ComDadosdePessoaFsica2Click(Sender: TObject);
    procedure ComDadosdePessoaJurdica2Click(Sender: TObject);
    procedure DBCOBRANCAChange(Sender: TObject);
    procedure CartaCobrana1Click(Sender: TObject);
    procedure EDLANCAMENTOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DesmarcarTodas1Click(Sender: TObject);
    procedure DBGridCadastroPadraoDblClick(Sender: TObject);
    procedure AgruparContasSelecionadas1Click(Sender: TObject);
    procedure FiltrarContasMarcadas1Click(Sender: TObject);
    procedure EdNomeVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure EdNomeVendedorBaixadaKeyPress(Sender: TObject;
      var Key: Char);
    procedure RdCarneExit(Sender: TObject);
    procedure NovoCarn1Click(Sender: TObject);
    procedure OutraVia2Click(Sender: TObject);
    procedure OutraviadeTodas1Click(Sender: TObject);
    procedure CtasaReceberVencidaseBaixadas1Click(Sender: TObject);
    procedure QRDUPLICATABeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DBColorEdit3Exit(Sender: TObject);
    procedure QRBand7BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GrandecomValorPagocomLogo1Click(Sender: TObject);
    procedure QRBandReciboValorBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBCobrancaCartaoSelect(Sender: TObject);
    procedure CBBandeiraSelect(Sender: TObject);
    procedure EdVencCartao01KeyPress(Sender: TObject; var Key: Char);
    procedure EdDtLancCartaoKeyPress(Sender: TObject; var Key: Char);
    procedure EdDocCartaoKeyPress(Sender: TObject; var Key: Char);
    procedure EdPessoaCartaoKeyPress(Sender: TObject; var Key: Char);
    procedure EdHistoricoCartaoKeyPress(Sender: TObject; var Key: Char);
    procedure DbgCartoesDblClick(Sender: TObject);
    procedure DbgCartoesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnFaturaContasClick(Sender: TObject);
    procedure N06RecibodaFatura1Click(Sender: TObject);
    procedure ControleInterno1Click(Sender: TObject);
    procedure edvencimento2KeyPress(Sender: TObject; var Key: Char);
    procedure EdVencimentoKeyPress(Sender: TObject; var Key: Char);
    procedure btnVencidosClick(Sender: TObject);
    procedure btnLerRetornoClick(Sender: TObject);
    procedure btnCancelaRetornoClick(Sender: TObject);
    procedure btnConfirmaRetornoClick(Sender: TObject);
    procedure DBGRIDRETORNODblClick(Sender: TObject);
    procedure ma(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure RelatriodeBancosePlanodecontas1Click(Sender: TObject);
    procedure RadioSpcSimClick(Sender: TObject);
    procedure RadioSpcNaoClick(Sender: TObject);
    procedure ComprovantedeEntrega1Click(Sender: TObject);
    procedure N07ReciboDespachante1Click(Sender: TObject);
    procedure cbProtestoClick(Sender: TObject);
    procedure N08Recibo1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure PedidodeVenda1Click(Sender: TObject);
    procedure OrdemdeServio1Click(Sender: TObject);
    procedure DBHISTORICOExit(Sender: TObject);
    procedure BtnRelatorioRetornoClick(Sender: TObject);
    procedure BtnAtualizaJurosClick(Sender: TObject);
    procedure RecibodeFatura2Click(Sender: TObject);
    procedure RecibodeFatura1Click(Sender: TObject);
    procedure btnLerRetornoPastaClick(Sender: TObject);
    procedure AnteciparSelecionadas1Click(Sender: TObject);
    procedure ExtornarSelecionadas1Click(Sender: TObject);
    procedure LiquidarSelecionadas1Click(Sender: TObject);
    procedure AnteciparSelecionadas2Click(Sender: TObject);
    procedure ExtornarSelecionadas2Click(Sender: TObject);
    procedure LiquidarSelecionadas2Click(Sender: TObject);
    procedure MarcarContaparaAntecipao1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    // função utilizada para filtrar as parcelas de ctas receber de acordo com o banco selecionado
    Function FiltraRemessa: Boolean;
	 //Seleciona parcelas de acordo com filtro da edit. se valor em branco passado com o no inicio mostrar todas mas ordenado pelo valor
	 Procedure FiltraParcelaEditCob(TipoCons: String);
    //Filtro para consultas do scpc
    Procedure FiltraSPC(TipoCons: String);
	 //procedure que seleciona e Insere boleto para remessa
	 Procedure InsertBoletoRemessa(CODCTA:INTEGER);
    //Edmar - 29/10/2013 - Seleciona e insere boleto para remessa pelo cobreBem
 	 Procedure InsertBoletoRemessaCobreBem(CODCTA:INTEGER);
	 //Procedure utilizada p/ imprimir um memo
	 Procedure Memo_Print(Conteudo:TStrings);
	 //Seleciona Contatos para agendamento
	 Procedure FiltraContatosCob;
    //Função utilizada para mostrar na tela os totais acumulados ateh a conta selecionada
    Function CalcTotAcum: Boolean;
    //Função que agrupa todas as contas selecionadas em um
    Function AgrupaContas: Boolean;
    //Paulo 09/02/2011: Para gerar o carne novo
    Procedure GravaTextoCarne(Sender: TObject);
    //procedure que seleciona e imprime recibo referente a parcela
	 Procedure ImpReciboCR(CODCTA:INTEGER);
    //Função utilizada para aplicar filtro aos cartões
	 Procedure FiltraContasCartao(XTipoFiltro: String);
    //Função para testar os clientes para não repetirem antes de marcar
    Function TestaClientesAntesMarcar: Boolean;
    //Função Utilizada para efetuar baixa automatica dos cartões caso seja solicitado na inicialização do sistema
    function FaturaCartoes: Boolean;
    //Edmar - 18/09/2014 - procedimento usado para atualizar grid que mostra
    //boletos localidados no arquivo retorno
    function AtualizaListaRetorno: Boolean;
    //
    Function VerificaVinculo(XCodGerador: Integer; XTipoGerador: String): Boolean;
    //
    Function VerificaCtaReceberVinculada(XCodContaReceber: Integer): Boolean;
    //Matheus - 14/01/2016 - Função para utilizar CobreBemX para gerar remessas
    Function GeraRemessaCobreBemX: Boolean;
    //Matheus - 14/01/2016 - Função para utiliza Acbr para gerar remessas
    Function GeraRemessaAcbr: Boolean;
    //Matheus - 14/01/2016 - Procedimento utilizado para inserir boleto na remessa Acbr
    Procedure GeraRemessaAcbrAdicionaTitulo(CODCTA : Integer);
    //Matheus - 14/01/2016 - Função utilizada para processar retorno da remessa;
    Function ProcessaRetornoAcbr: Boolean;
	 //Alex: 13/04/2016 - Função para ler arquivo de retorno cnab 240 BANCOOB
	 Function RetornoCnab240Bancoob: Boolean;
	 //Alex: 13/04/2016 - Função para ler arquivo de retorno cnab 240 CAIXA
	 Function RetornoCnab240Caixa: Boolean;
	 //Alex: 13/04/2016 - Função para ler arquivo de retorno cnab 400 BANCOOB
	 Function RetornoCnab400Bancoob: Boolean;

    Function AtualizaListaDiferenca: Boolean;
  end;

var
  FCtaReceber: TFCtaReceber;
  XCODPARC: String;
  XDOCPARC: String;
  XDOCPARCSIM: String;
  XACUMULAVALOR: Real;
  XLIBERA_CAMPO: String; // se estiver valendo 1 eh pq o campo de referencia do relatorio QRRecibo está liberado para modificações
  XTOTCORR: Real;
  XCarne:Boolean;
  xTodosNossoNum: String;
  CobreBemXCtaReceber, BoletoCtaReceber: Variant;
  XInstrucPadraoBlt, XTextoMultaBlt, XTextoJurosBlt: String;
  XNomeRemessa, xCodCedente, xCaminhoRemessa, xConcBltVencidos: String;
  Data: Integer;
  Mes, xCaminho:String;
  xDados1, xDados2: Variant;
  Year, Month, Day:word;
  Titulo : TACBrTitulo;
  //Variáveis para controle de retorno de boleto
  xcodtmp: Integer;  
  xInfo: String;
  xRetorno: TextFile;
  xAuxBanco, xDataPagamento, xAgencia, xCtaCor, xNossoNum, xContaCorrente, xNumBoleto, xValor: String;
  xDecimal, xDesconto, xDescontoDecimal, xJuros, xJurosDecimal, XCHAR: String;
  xNumeroRegistro, xCodigoMovimentoRetorno, xValorDocumento: String;

implementation

uses UDMFinanc, UDMPessoa, UDMConta, UMenu, URelCtaPR, Alxor32, UDMMacs,
  AlxMessage, UCtaCor, UDmBanco, DB, UDMEstoque, Math, IBQuery, UCadPadrao,
  Variants, URelCtasSetor, UDMGEOGRAFIA, Alxorprn, UFaturaContas, UMDO,
  UDMSaida, ComObj, URelBancoPlanoContas, URelData, Extenso, UPedVenda,
  UDmServ, USenha, UOrdemMec, UOrdemDesp, UOrdemPet, UOrdemLoca,
  UOrdemRetifica, UOrdemGrafica, UOrdem, DateUtils, UAntecipaCR;

{$R *.DFM}

//Função Utilizada para efetuar baixa automatica dos cartões caso seja solicitado na inicialização do sistema
function TFCtaReceber.FaturaCartoes;
Begin
     Try
        DMFINANC.TAlx.Close;
        DMFINANC.TAlx.SQL.Clear;
        DMFINANC.TAlx.SQL.Add('update parcelacr');
        DMFINANC.TAlx.SQL.Add(' SET parcelacr.mark='+#39+'X'+#39'');
        DMFINANC.TAlx.SQL.Add(' WHERE ');
        DMFINANC.TAlx.SQL.Add(' ((PARCELACR.cobranca =  '+#39+'C - Cartão'+#39+') OR (PARCELACR.cobranca =  '+#39+'D - Cartão'+#39+'))');
        DMFINANC.TAlx.SQL.Add(' AND (parcelacr.dtvenc<=:DATA_VENC)');
        DMFINANC.TAlx.ParamByName('DATA_VENC').AsDate:= date();
        DMFINANC.TAlx.ExecSQL;
        DMFINANC.Transaction.CommitRetaining;
        //selecionar a aba de cartões
        TCConsultContas.ActiveTab:=6;
        //mudar a variável
        FMenu.XTIPOBOLTO:='';
        BtnFaturaContas.Click;
     Except
        
     End;
End;
//Função para testar os clientes para não repetirem antes de marcar
Function TFCtaReceber.TestaClientesAntesMarcar: Boolean;
Begin
	Try
   	Result:=True;//Marca como true para continuar marcação
       DMESTOQUE.Alx4.close;
       DMESTOQUE.Alx4.SQL.Clear;
       DMESTOQUE.Alx4.SQL.Add(' select vwparcr.cod_cliente from vwparcr  where vwparcr.mark = ''X'' ');
       DMESTOQUE.Alx4.Open;
       If not DMESTOQUE.Alx4.IsEmpty
       Then Begin
       	If DMESTOQUE.Alx4.FieldByName('cod_cliente').AsInteger<>XViewRef.FieldByName('cod_cliente').AsInteger Then
               Result:=False;
       End;
   Except

   End;
End;
//Função utilizada para aplicar filtro aos cartões
Procedure TFCtaReceber.FiltraContasCartao(XTipoFiltro: String);
Begin
	Try
		//Soma
       DMFINANC.TAlxMoeda.close;
       DMFINANC.TAlxMoeda.SQL.Clear;
       DMFINANC.TAlxMoeda.SQL.Add('   Select sum(parcelacr.valor) as VALOR   from vwparcr ');
       DMFINANC.TAlxMoeda.SQL.Add(' left join parcelacr on vwparcr.cod_parcelacr = parcelacr.cod_parcelacr ');
       DMFINANC.TAlxMoeda.SQL.Add(' left join cartao on parcelacr.cod_cota = cartao.cod_cartao ');

		//Filtro
       DMFINANC.TAlx.close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add(' Select parcelacr.mark, parcelacr.numparc, vwparcr.numcartao, vwparcr.dtlanc, ');
       DMFINANC.TAlx.SQL.Add('        parcelacr.dtvenc, parcelacr.valor, parcelacr.cobranca, vwparcr.formpag, ');
       DMFINANC.TAlx.SQL.Add('        vwparcr.nome, parcelacr.historico, cartao.bandeira, cartao.descricao, ');
       DMFINANC.TAlx.SQL.Add('        cartao.cod_cartao, parcelacr.cod_parcelacr  from vwparcr ');
       DMFINANC.TAlx.SQL.Add(' left join parcelacr on vwparcr.cod_parcelacr = parcelacr.cod_parcelacr ');
       DMFINANC.TAlx.SQL.Add(' left join cartao on parcelacr.cod_cota = cartao.cod_cartao ');

       DMFINANC.TAlx.SQL.Add('   WHERE (vwparcr.fech<>'+#39+'S'+#39+')');
       DMFINANC.TAlxMoeda.SQL.Add('   WHERE (vwparcr.fech<>'+#39+'S'+#39+')');
		If (XTipoFiltro='COBRANCA') Then
       	If (CBCobrancaCartao.Text<>'Todos')
           Then Begin
       		DMFINANC.TAlx.SQL.Add('  and (parcelacr.cobranca = '+#39+CBCobrancaCartao.Text+#39+') ');
       		DMFINANC.TAlxMoeda.SQL.Add('  and (parcelacr.cobranca = '+#39+CBCobrancaCartao.Text+#39+') ');
           End
           Else Begin
	      		DMFINANC.TAlx.SQL.Add('  and ((parcelacr.cobranca = '+#39+'C - Cartão'+#39+') or (parcelacr.cobranca = '+#39+'D - Cartão'+#39+')) ');
	      		DMFINANC.TAlxMoeda.SQL.Add('  and ((parcelacr.cobranca = '+#39+'C - Cartão'+#39+') or (parcelacr.cobranca = '+#39+'D - Cartão'+#39+')) ');
           End;
		If XTipoFiltro='BANDEIRA'
       Then Begin
       	DMFINANC.TAlx.SQL.Add('  and (CARTAO.bandeira = '+#39+CBBandeira.Text+#39+') ');
       	DMFINANC.TAlxMoeda.SQL.Add('  and (CARTAO.bandeira = '+#39+CBBandeira.Text+#39+') ');
       End;
		If (XTipoFiltro<>'BANDEIRA') and (XTipoFiltro<>'COBRANCA')
       Then Begin
      		If CBCobrancaCartao.Text<>'Todos'
           Then Begin
       		DMFINANC.TAlx.SQL.Add('  and (parcelacr.cobranca = '+#39+CBCobrancaCartao.Text+#39+') ');
       		DMFINANC.TAlxMoeda.SQL.Add('  and (parcelacr.cobranca = '+#39+CBCobrancaCartao.Text+#39+') ');
           End
           Else Begin
	      		DMFINANC.TAlx.SQL.Add('  and ((parcelacr.cobranca = '+#39+'C - Cartão'+#39+') or (parcelacr.cobranca = '+#39+'D - Cartão'+#39+')) ');
	      		DMFINANC.TAlxMoeda.SQL.Add('  and ((parcelacr.cobranca = '+#39+'C - Cartão'+#39+') or (parcelacr.cobranca = '+#39+'D - Cartão'+#39+')) ');
           End;
			If CBBandeira.Text<>'Todos'
           Then Begin
				DMFINANC.TAlx.SQL.Add('  and (CARTAO.bandeira = '+#39+CBBandeira.Text+#39+') ');
				DMFINANC.TAlxMoeda.SQL.Add('  and (CARTAO.bandeira = '+#39+CBBandeira.Text+#39+') ');
           End;
       End;
		If XTipoFiltro='VENCIMENTO'
       Then Begin
       	DMFINANC.TAlx.SQL.Add(' And ( parcelacr.dtvenc between :data1 and :data2 )');
           DMFINANC.TAlx.ParamByName('data1').AsDate:=StrToDate(EdVencCartao01.Text);
           DMFINANC.TAlx.ParamByName('data2').AsDate:=StrToDate(EdVencCartao02.Text);
       	DMFINANC.TAlxMoeda.SQL.Add(' And ( parcelacr.dtvenc between :data1 and :data2 )');
           DMFINANC.TAlxMoeda.ParamByName('data1').AsDate:=StrToDate(EdVencCartao01.Text);
           DMFINANC.TAlxMoeda.ParamByName('data2').AsDate:=StrToDate(EdVencCartao02.Text);
       End;
		If XTipoFiltro='LANCAMENTO'
       Then Begin
       	DMFINANC.TAlx.SQL.Add(' And (parcelacr.DTLANC = :data');
           DMFINANC.TAlx.ParamByName('data').AsDate:=StrToDate(EdDtLancCartao.Text);
       End;
		If XTipoFiltro='DOCUMENTO'
       Then Begin
       	DMFINANC.TAlx.SQL.Add('  and (parcelacr.numparc like '+#39+EdDocCartao.Text+'%'+#39+') ');
       	DMFINANC.TAlxMoeda.SQL.Add('  and (parcelacr.numparc like '+#39+EdDocCartao.Text+'%'+#39+') ');
       End;
		If XTipoFiltro='PESSOA'
       Then Begin
       	DMFINANC.TAlx.SQL.Add('  and (upper(vwparcr.nome) like'+#39+UpperCase(EdPessoaCartao.Text)+'%'+#39+') ');

       	DMFINANC.TAlxMoeda.SQL.Add('  and (upper(vwparcr.nome) like'+#39+UpperCase(EdPessoaCartao.Text)+'%'+#39+') ');
       End;
		If XTipoFiltro='HISTORICO'
       Then Begin
       	DMFINANC.TAlx.SQL.Add('  and (upper(parcelacr.historico) like'+#39+UpperCase(EdHistoricoCartao.Text)+'%'+#39+') ');
       	DMFINANC.TAlxMoeda.SQL.Add('  and (upper(parcelacr.historico) like'+#39+UpperCase(EdHistoricoCartao.Text)+'%'+#39+') ');
       End;
		If XTipoFiltro=''
       Then Begin
			DMFINANC.TAlx.SQL.Add('  and (parcelacr.cobranca like '+#39+'%Cartão'+#39+') ');
			DMFINANC.TAlxMoeda.SQL.Add('  and (parcelacr.cobranca like '+#39+'%Cartão'+#39+') ');
       End;


       DMFINANC.TAlx.SQL.Add('  order by vwparcr.dtlanc, vwparcr.dtvenc  ');
       DMFINANC.TAlx.Open;
       DMFINANC.TAlxMoeda.Open;
       EdTotalCartoes.ValueNumeric:=DMFINANC.TAlxMoeda.FieldByName('VALOR').AsCurrency;

       DbgCartoes.DataSource:=DMFINANC.DSALX;
   Except

   End;
End;

//Função que agrupa todas as contas selecionadas em um
Function TFCtaReceber.AgrupaContas: Boolean;
Var
	XTotal, XTotServ, XTotProd: Real;
   XCodParcelaAltera: Integer;
   XHistAlt: String;
Begin
	Try
       //seleciona as parcelas de acordo com a marcação da view
       DMCONTA.TParcCR.Close;
       DMCONTA.TParcCR.SQL.Clear;
       DMCONTA.TParcCR.SQL.Add('select * from parcelacr where parcelacr.mark='+#39+'X'+#39);
       DMCONTA.TParcCR.Open;
       //o sistema irá percorrer todas as parcelas totalizando os valores
       DMCONTA.TParcCR.First;
       XTotal:=0;
       XTotServ:=0;
       XTotProd:=0;
       XHistAlt:='';
       While not DMCONTA.TParcCR.Eof do
       Begin
           XTotal:=XTotal+DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency;
           XTotProd:=XTotProd+DMCONTA.TParcCR.FieldByName('VALORPROD').AsCurrency;
           XTotServ:=XTotServ+DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency;
           Registra('AGRUPA CR', 'AGRUPAR', DateToStr(DATE()), 'Agrupou:' + DMCONTA.TParcCR.FieldByName('NUMPARC').asstring + ' Venc.: '+DMCONTA.TParcCR.FieldByName('DTVENC').asstring+ ' Valor: '+DMCONTA.TParcCR.FieldByName('VALOR').asstring, '');
           XHistAlt:=XHistAlt+', '+DMCONTA.TParcCR.FieldByName('NUMPARC').asstring;
			DMCONTA.TParcCR.Next;           
       End;

       //edita a primeira parcela funcionando ela como a agrupadora
       DMCONTA.TParcCR.First;
       XCodParcelaAltera:=DMCONTA.TParcCR.FieldByName('cod_parcelacr').AsInteger;
       DMCONTA.TParcCR.Edit;
       DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency:=XTotal;
       DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency:=XTotServ;
       DMCONTA.TParcCR.FieldByName('VALORPROD').AsCurrency:=XTotProd;
       FMenu.Extenso.Numero:=FormatFloat('0.00', XTotal);
       DMCONTA.TParcCR.FieldByName('VALEXT').AsString:=FMenu.Extenso.Extenso;
       DMCONTA.TParcCR.FieldByName('HISTORICO').AsString:='Agrupados: '+XHistAlt+'-'+DMCONTA.TParcCR.FieldByName('HISTORICO').AsString;
       DMCONTA.TParcCR.FieldByName('PERVLRSERV').AsCurrency:=(XTotServ*100)/(XTotProd+XTotServ);
       DMCONTA.TParcCR.Post;
		MessageDlg('AS CONTAS FORAM AGRUPADAS NO DOCUMENTO '+DMCONTA.TParcCR.FieldByName('NUMPARC').Asstring, mtInformation, [mbOK], 0);
       //apaga as demais tabelas
       //seleciona as parcelas de acordo com a marcação da view
       DMCONTA.TParcCR.Close;
       DMCONTA.TParcCR.SQL.Clear;
       DMCONTA.TParcCR.SQL.Add('delete from parcelacr where (parcelacr.mark='+#39+'X'+#39+') and (parcelacr.cod_parcelacr<>:codigo)');
       DMCONTA.TParcCR.ParamByName('codigo').AsInteger:=XCodParcelaAltera;
       DMCONTA.TParcCR.ExecSQL;
       //limpa as marcações antigas
       DMCONTA.TParcCR.Close;
       DMCONTA.TParcCR.SQL.Clear;
       DMCONTA.TParcCR.SQL.Add(' update parcelacr set parcelacr.mark='+#39+#39);
       DMCONTA.TParcCR.ExecSQL;
       DMCONTA.IBT.CommitRetaining;
       Try
           DMCONTA.TCtaR.Close;
           DMCONTA.TCtaR.SQL.Clear;
           DMCONTA.TCtaR.SQL.Add('update ctareceber set ctareceber.cod_gerador=-1, ctareceber.tipogerador='+#39+#39+'  WHERE ctareceber.cod_ctareceber=:codigo');
           DMCONTA.TCtaR.ExecSQL;
           DMCONTA.IBT.CommitRetaining;
       Except
       End;
       Result:=True;
	Except
       Result:=False;
   End
End;

//Filtro para consultas do scpc
Procedure TFCtaReceber.FiltraSPC(TipoCons: String);
Begin
	//SQL PARA FILTRO
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' Select vwparcr.classificacao, vwparcr.cobranca, vwparcr.cod_cliente, vwparcr.cod_cota, ');
   DMMACS.TALX.SQL.Add(' vwparcr.cod_ctacor, vwparcr.cod_ctareceber, vwparcr.cod_formpag, vwparcr.cod_loja, ');
   DMMACS.TALX.SQL.Add(' vwparcr.cod_parant, vwparcr.cod_parcelacr, vwparcr.cod_pessoa, vwparcr.cod_plncta, ');
   DMMACS.TALX.SQL.Add(' vwparcr.descricao, vwparcr.dtdebito, vwparcr.dtlanc, vwparcr.dtvenc, vwparcr.fech, ');
   DMMACS.TALX.SQL.Add(' vwparcr.formpag, vwparcr.historico, vwparcr.mark, vwparcr.nome, vwparcr.numboleto, ');
   DMMACS.TALX.SQL.Add(' vwparcr.numdoc, vwparcr.numfisc, vwparcr.numparc, vwparcr.remessa, vwparcr.valor, vwparcr.scpc, ');
   DMMACS.TALX.SQL.Add(' vwparcr.valorpg, vwparcr.vendedor From VWparCR ');
   DMMACS.TALX.SQL.Add(' Left Join devcli on vwparcr.cod_cliente = devcli.cod_devedor ');

   //SQL PARA TOTALIZAR
   DMFINANC.TAlx.Close;
   DMFINANC.TAlx.SQL.Clear;
   DMFINANC.TAlx.SQL.Add(' SELECT SUM(VWPARCR.VALOR) AS TOTAL, SUM(vwparcr.valorpg) AS TOTALPG  FROM VWPARCR ');
   DMFINANC.TAlx.SQL.Add(' Left Join devcli on vwparcr.cod_cliente = devcli.cod_devedor ');

   //filtra para loja
   DMMACS.TALX.SQL.Add(' Where (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+')');
   //DMMACS.TALX.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;

   DMMACS.TALX.SQL.Add(' And (Fech <> '+#39+'S'+#39+') ');
   DMFINANC.TALX.SQL.Add(' And (Fech <> '+#39+'S'+#39+') ');

  	DMMACS.TALX.SQL.Add(' And (SCPC ='+#39+'1'+#39+') ');
 	DMFINANC.TALX.SQL.Add(' And (SCPC ='+#39+'1'+#39+') ');

   //Continua sql com os valores para consulta
   If TipoCons='NUMPARC'
   Then Begin//filtrar pelo numparc numero da parcela e ordenar
   	DMMACS.TALX.SQL.Add(' And (upper(NUMPARC) like upper('+#39+EdDocSCPC.Text+'%'+#39+')) ORDER BY NUMPARC, DTVENC, vwparcr.nome');
       DMFINANC.TAlx.SQL.Add(' And (upper(NUMPARC) like upper('+#39+EdDocSCPC.Text+'%'+#39+'))');
   End;
   If TipoCons='ONUMPARC'
   Then Begin//ordena pelo valor
   	DMMACS.TALX.SQL.Add(' ORDER BY NUMPARC, DTVENC, vwparcr.nome');
   End;

   If TipoCons='DTLANC'
   Then Begin//filtrar pelo DTLANC Data de Lançamento  da parcela e ordenar
   	DMMACS.TALX.SQL.Add(' And (DTLANC = :DTLANC) ORDER BY DTLANC, vwparcr.nome');
   	DMMACS.TALX.ParamByName('DTLANC').AsDate:=StrToDate(EDDTLancSCPC.TEXT);

       DMFINANC.TAlx.SQL.Add(' And (DTLANC = :DTLANC)');
       DMFINANC.TAlx.ParamByName('DTLANC').AsDate:=StrToDate(EDDTLancSCPC.TEXT);
   End;
   If TipoCons='ODTLANC'
   Then Begin//ordena pelo valor
   	DMMACS.TALX.SQL.Add(' ORDER BY DTLANC, vwparcr.nome');
   End;
   If TipoCons='DTVENC'
   Then Begin//filtrar pelo DTVENC Data de Vencimento da parcela e ordenar
   	DMMACS.TALX.SQL.Add(' And (DTVENC = :DTVENC) ORDER BY DTVENC, vwparcr.nome');
   	DMMACS.TALX.ParamByName('DTVENC').AsDate:=StrToDate(EdDTVencSCPC.TEXT);

       DMFINANC.TAlx.SQL.Add(' And (DTVENC = :DTVENC)');
       DMFINANC.TAlx.ParamByName('DTVENC').AsDate:=StrToDate(EdDTVencSCPC.TEXT);
   End;
   If TipoCons='ODTVENC'
   Then Begin//ordena pelo valor
   	DMMACS.TALX.SQL.Add(' ORDER BY DTVENC, vwparcr.nome');
   End;

   If TipoCons='HIST'
   Then Begin//filtrar pelo fornecedor  da parcela e ordenar
   	DMMACS.TALX.SQL.Add(' And (upper(HISTORICO) like upper('+#39+EDHistoricoSCPC.Text+'%'+#39+')) ORDER BY HISTORICO, DTVENC, vwparcr.nome');
      	DMFINANC.TAlx.SQL.Add(' And (upper(HISTORICO) like upper('+#39+EDHistoricoSCPC.Text+'%'+#39+')) ');
   End;

   If TipoCons='OHIST'
   Then Begin//ordena pelo valor
   	DMMACS.TALX.SQL.Add(' ORDER BY HISTORICO, DTVENC, vwparcr.nome');
   End;
   If TipoCons='PESSOA'
   Then Begin//filtrar pelo cliente da parcela e ordenar
   	DMMACS.TALX.SQL.Add(' And (upper(NOME) like upper('+#39+EDPessoaSCPC.Text+'%'+#39+')) ORDER BY vwparcr.nome, DTVENC');
	    DMFINANC.TAlx.SQL.Add(' And (upper(NOME) like upper('+#39+EDPessoaSCPC.Text+'%'+#39+'))');
   End;
   If TipoCons='OPESSOA'
   Then Begin//ordena pelo valor
   	DMMACS.TALX.SQL.Add(' ORDER BY vwparcr.nome, DTVENC');
   End;
   //Continua sql com os valores para consulta
   If TipoCons='NUMBOLETO'
   Then Begin//filtrar pelo numparc numero da parcela e ordenar
   	DMMACS.TALX.SQL.Add(' And (upper(NUMBOLETO) like upper('+#39+EdBoletoSCPC.Text+'%'+#39+')) ORDER BY NUMBOLETO, DTVENC, vwparcr.nome');
  		DMFINANC.TAlx.SQL.Add(' And (upper(NUMBOLETO) like upper('+#39+EdBoletoSCPC.Text+'%'+#39+')) ');
   End;
   If TipoCons='ONUMBOLETO'
   Then Begin//ordena pelo valor
   	DMMACS.TALX.SQL.Add(' ORDER BY NUMBOLETO, DTVENC, vwparcr.nome');
   End;
   //Continua sql com os valores para consulta
   If TipoCons='NUMFISCAL'
   Then Begin//filtrar pelo numparc numero da parcela e ordenar
   	DMMACS.TALX.SQL.Add(' And (upper(NUMFISC) like upper('+#39+EdFiscSCPC.Text+'%'+#39+')) ORDER BY NUMFISC, DTVENC, vwparcr.nome');
       DMFINANC.TAlx.SQL.Add(' And (upper(NUMFISC) like upper('+#39+EdFiscSCPC.Text+'%'+#39+'))');
   End;
   If TipoCons='ONUMFISCAL'
   Then Begin//ordena pelo valor
   	DMMACS.TALX.SQL.Add(' ORDER BY NUMFISC, DTVENC, vwparcr.nome');
   End;

   //abre sql com filtro
   DMMACS.TALX.SQL.Text;
   DMMACS.TALX.Open;
   //abre sql com totalizadores
   DMFINANC.TAlx.SQL.Text;
   DMFINANC.TAlx.Open;
	If not DMFINANC.TAlx.IsEmpty
   Then Begin
   	//Passa Valores para as edits
      	EdTotalSCPC.ValueNumeric:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;
   End
   Else Begin
   	//Passa Valores para as edits
      	EdTotalSCPC.ValueNumeric:=0;
	End;
End;
//Função utilizada para mostrar na tela os totais acumulados ateh a conta selecionada
Function TFCtaReceber.CalcTotAcum: Boolean;
Var
	XVLRCORR, XVLRJUROS , XTOTMULTA, XTOTJUROS, XMulta, XJUROS, XVLR, XVLRMULTA, XTOTACUMLADO: Real;
   I, XQTDDIAS :INTEGER;
   XPARACONTA, flag: Integer;
Begin
   LTotJurMultaCalc.Caption:='R$ 0,00';
   LTotSemJurMultaCalc.Caption:='R$ 0,00';
   LTotMultaCalc.Caption:='R$ 0,00';
   LTotJuroCalc.Caption:='R$ 0,00';
   LTotMulta.Caption:='R$ 0,00';
   LTotJuro.Caption:='R$ 0,00';
   XTOTCORR:=0;
   // se banco vazio abandonar!
   If XTipo='P'
   Then Begin
   	If  DMCONTA.WParP.IsEmpty Then
   		Exit;
   End
   Else Begin
   	If  DMCONTA.WParR.IsEmpty Then
   		Exit;
   End;
   XPARACONTA:=DMCONTA.WParR.FieldByName('COD_PARCELACR').AsInteger;
   XVLRCORR:=0;
   XMULTA:=0;
   XTOTMULTA:=0;
   Flag:=0;

   //Filtra clientes pra buscar os juros cadastrados no cliente
   If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMCONTA.WParR.FieldByName('COD_CLIENTE').AsString, '')=True
   Then Begin
   	//Verifica de Onde vai vir os juros
   	If DMPESSOA.TCliente.FieldByName('JURO').AsCurrency=0 Then
   		XJUROS:=DMMACS.TLoja.FieldByName('JUROS').AsCurrency/30
       Else
   		XJUROS:=DMPESSOA.TCliente.FieldByName('JURO').AsCurrency/30;

       //Verifica de onde vem a multa
   	If DMPESSOA.TCliente.FieldByName('MULTA').AsCurrency=0 Then
   		XMulta:=DMMACS.TLoja.FieldByName('Multa').AsCurrency
       Else
   		XMulta:=(DMPESSOA.TCliente.FieldByName('Multa').AsCurrency);

   End
   Else Begin
  		XJUROS:=DMMACS.TLoja.FieldByName('JUROS').AsCurrency/30;
  		XMulta:=(DMMACS.TLoja.FieldByName('Multa').AsCurrency);
   End;

//***************************************************************************
//                   Efetua Calculo para unica Parcela
//***************************************************************************
   XVLRJUROS:=0;
   FiltraTabela(DMMACS.TALX, 'PARCELACR', 'COD_PARCELACR', DMCONTA.WParR.FieldByName('COD_PARCELACR').AsString, '');
   XTOTMULTA:=XTOTMULTA+((DMCONTA.WParR.FieldByName('VALOR').AsCurrency*XMulta)/100);

   // FOI COLOCADO ESSA LINHA
   XVLRMULTA := (DMCONTA.WParR.FieldByName('VALOR').AsCurrency*XMulta)/100;

   If ((DMCONTA.WParR.FieldByName('DTVENC').AsDateTime+DMMACS.TLoja.FieldByName('DIASCARE').AsInteger)<=Date()) Then
        XQTDDIAS:=StrToInt(DifDias(DMCONTA.WParR.FieldByName('DTVENC').AsDateTime, Date(), 0))
   Else
        XQTDDIAS:=StrToInt(DifDias(DMCONTA.WParR.FieldByName('DTVENC').AsDateTime, Date(), DMMACS.TLoja.FieldByName('DIASCARE').AsInteger));

   If XQTDDIAS>0
   Then Begin
          If DMMACS.TALX.FieldByName('APLICJUR').AsString='0'
          Then Begin
               If DMMACS.TLoja.FieldByName('JURCOMP').AsInteger=1
               Then Begin
                    //CORRIGE VLR ATRAVÉZ DE JUROS COMPOSTOS
//                    XVLRCORR:=DMMACS.TALX.FieldByName('VALOR').AsCurrency+XMULTA;
                    XVLRCORR:=DMMACS.TALX.FieldByName('VALOR').AsCurrency+XVLRMULTA;
                    For I:=1 To XQTDDIAS DO
                    Begin
                         XVLRJUROS:=XVLRJUROS+((XJUROS*XVLRCORR)/100);
                         XVLRCORR:=XVLRCORR+((XJUROS*XVLRCORR)/100);
                    End;
               End
               Else Begin
                    XVLRJUROS:=((XJUROS*XQTDDIAS)*DMMACS.TALX.FieldByName('VALOR').AsCurrency)/100;
//                    XVLRCORR:=DMMACS.TALX.FieldByName('VALOR').AsCurrency + XMULTA + XVLRJUROS;
                    XVLRCORR:=DMMACS.TALX.FieldByName('VALOR').AsCurrency + XVLRMULTA + XVLRJUROS;
               End;
          End;
          If DMMACS.TALX.FieldByName('APLICJUR').AsString='1'
          Then Begin
               XVLRJUROS:=((XJUROS*XQTDDIAS)*DMMACS.TALX.FieldByName('VALOR').AsCurrency)/100;

//               XVLRCORR:=DMMACS.TALX.FieldByName('VALOR').AsCurrency+XMULTA+XVLRJUROS;
               XVLRCORR:=DMMACS.TALX.FieldByName('VALOR').AsCurrency + XVLRMULTA + XVLRJUROS;

          End;
          If DMMACS.TALX.FieldByName('APLICJUR').AsString='2'
          Then Begin
               //CORRIGE VLR ATRAVÉZ DE JUROS COMPOSTOS

//               XVLRCORR:=DMMACS.TALX.FieldByName('VALOR').AsCurrency+XMULTA;
               XVLRCORR:=DMMACS.TALX.FieldByName('VALOR').AsCurrency+XVLRMULTA;

               For I:=1 To XQTDDIAS DO
               Begin
                    XVLRJUROS:=XVLRJUROS+((XJUROS*XVLRCORR)/100);
                    XVLRCORR:=XVLRCORR+((XJUROS*XVLRCORR)/100);
               End;
          End;
     end
     Else Begin
          XVLRJUROS:=0;
          XVLRCORR:=DMMACS.TALX.FieldByName('VALOR').AsCurrency;
   End;
   //Passa resultado para as labels
   LTotJuro.Caption:='R$ '+FormatFloat('0.00', XVLRJUROS);
   LTotMulta.Caption:='R$ '+FormatFloat('0.00', XTOTMULTA);

//***************************************************************************
//                   Fim Calculo para unica Parcela
//***************************************************************************


   XVLRCORR:=0;
//   XMULTA:=0;
   XTOTMULTA:=0;
   Flag:=0;

   If DMCONTA.WParR.IsEmpty Then
   	Exit;
   DBGridCadastroPadrao.DataSource.DataSet.DisableControls;
   DMCONTA.WParR.First;
   While flag=0 do
   Begin
     XVLRJUROS:=0;
     FiltraTabela(DMMACS.TALX, 'PARCELACR', 'COD_PARCELACR', DMCONTA.WParR.FieldByName('COD_PARCELACR').AsString, '');
     XTOTMULTA:=XTOTMULTA+((DMCONTA.WParR.FieldByName('VALOR').AsCurrency*XMulta)/100);
     XTOTACUMLADO:=XTOTACUMLADO+DMMACS.TALX.FieldByName('VALOR').AsCurrency;

     // FOI COLOCADO ESSA LINHA
     XVLRMULTA := (DMCONTA.WParR.FieldByName('VALOR').AsCurrency*XMulta)/100;

     If ((DMCONTA.WParR.FieldByName('DTVENC').AsDateTime+DMMACS.TLoja.FieldByName('DIASCARE').AsInteger)<=Date()) Then
        XQTDDIAS:=StrToInt(DifDias(DMCONTA.WParR.FieldByName('DTVENC').AsDateTime, Date(), 0))
     Else
        XQTDDIAS:=StrToInt(DifDias(DMCONTA.WParR.FieldByName('DTVENC').AsDateTime, Date(), DMMACS.TLoja.FieldByName('DIASCARE').AsInteger));

     If XQTDDIAS>0
     Then Begin
          If DMMACS.TALX.FieldByName('APLICJUR').AsString='0'
          Then Begin
               If DMMACS.TLoja.FieldByName('JURCOMP').AsInteger=1
               Then Begin
                    //CORRIGE VLR ATRAVÉZ DE JUROS COMPOSTOS

//                    XVLRCORR:=DMMACS.TALX.FieldByName('VALOR').AsCurrency+XMULTA;
                    XVLRCORR:=DMMACS.TALX.FieldByName('VALOR').AsCurrency+XVLRMULTA;

                    For I:=1 To XQTDDIAS DO
                    Begin
                         XVLRJUROS:=XVLRJUROS+((XJUROS*XVLRCORR)/100);
                         XVLRCORR:=XVLRCORR+((XJUROS*XVLRCORR)/100);
                    End;
               End
               Else Begin
                    XVLRJUROS:=((XJUROS*XQTDDIAS)*DMMACS.TALX.FieldByName('VALOR').AsCurrency)/100;
//                    XVLRCORR:=DMMACS.TALX.FieldByName('VALOR').AsCurrency+XMULTA+XVLRJUROS;
                    XVLRCORR:=DMMACS.TALX.FieldByName('VALOR').AsCurrency+XVLRMULTA+XVLRJUROS;
               End;
          End;
          If DMMACS.TALX.FieldByName('APLICJUR').AsString='1'
          Then Begin
               XVLRJUROS:=((XJUROS*XQTDDIAS)*DMMACS.TALX.FieldByName('VALOR').AsCurrency)/100;

//               XVLRCORR:=DMMACS.TALX.FieldByName('VALOR').AsCurrency+XMULTA+XVLRJUROS;
               XVLRCORR:=DMMACS.TALX.FieldByName('VALOR').AsCurrency + XVLRMULTA + XVLRJUROS;

          End;
          If DMMACS.TALX.FieldByName('APLICJUR').AsString='2'
          Then Begin
               //CORRIGE VLR ATRAVÉZ DE JUROS COMPOSTOS

//               XVLRCORR:=DMMACS.TALX.FieldByName('VALOR').AsCurrency+XMULTA;
               XVLRCORR:=DMMACS.TALX.FieldByName('VALOR').AsCurrency+XVLRMULTA;

               For I:=1 To XQTDDIAS DO
               Begin
                    XVLRJUROS:=XVLRJUROS+((XJUROS*XVLRCORR)/100);
                    XVLRCORR:=XVLRCORR+((XJUROS*XVLRCORR)/100);
               End;
          End;
     end
     Else Begin
          XVLRJUROS:=0;
          XVLRCORR:=DMMACS.TALX.FieldByName('VALOR').AsCurrency;
     End;
     //ACUMULADORES
     XTOTCORR:=XTOTCORR+XVLRCORR;
     XTOTJUROS:=XTOTJUROS+XVLRJUROS;
     XVLR:=XVLR+DMMACS.TALX.FieldByName('VALOR').AsCurrency;
	  If XPARACONTA=DMCONTA.WParR.FieldByName('COD_PARCELACR').AsInteger Then
     	flag:=1
     Else
     	DMCONTA.WParR.Next;
   End;
   DBGridCadastroPadrao.DataSource.DataSet.EnableControls;
   LTotJurMultaCalc.Caption:='R$ '+FormatFloat('0.00', XTOTCORR);
   LTotSemJurMultaCalc.Caption:='R$ '+FormatFloat('0.00', XTOTACUMLADO);
   LTotMultaCalc.Caption:='R$ '+FormatFloat('0.00', XTOTMULTA);
   LTotJuroCalc.Caption:='R$ '+FormatFloat('0.00', XTOTJUROS);
   QRLabel85.Caption:=LTotJurMultaCalc.Caption;
   QRVLRSimples.Caption:='R$ '+FormatFloat('0.00', XTOTACUMLADO);
End;

//Seleciona Contatos para agendamento
Procedure TFCtaReceber.FiltraContatosCob;
Begin
   DMCONTA.Tcontato.Close;
   DMCONTA.Tcontato.SQL.Clear;
   DMCONTA.Tcontato.SQL.Add(' Select * from contato ');
   DMCONTA.Tcontato.SQL.Add(' Where contato.cod_agenda = :CODAGENDA ');
   DMCONTA.Tcontato.ParamByName('CODAGENDA').AsString:=DMCONTA.TAgenda.FieldByName('COD_PARCELACR').AsString;
   DMCONTA.Tcontato.SQL.Text;
   DMCONTA.Tcontato.Open;
End;

//Seleciona parcelas de acordo com filtro da edit. se valor em branco passado com o no inicio mostrar todas mas ordenado pelo valor
Procedure TFCtaReceber.FiltraParcelaEditCob(TipoCons: String);
Begin
	If XTipo='P'
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
   XViewRef.SQL.Add('Where (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+')');
   //XViewRef.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
	//TOTALIZA PARA LOJA
   DMFINANC.TAlx.SQL.Add('  WHERE (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') ');

   If XTipo='P'
   Then Begin // Realizará o filtro de pessoa para fornecedor de contas a pagar
	   If TCConsultContas.ActiveTab=3
      Then Begin
	       XViewRef.SQL.Add('  And (PREVISAO ='+#39+'1'+#39+')  ');
	       DMFINANC.TAlx.SQL.Add('  And (PREVISAO ='+#39+'1'+#39+')  ');
      End;
	End;

   If PSPC.Visible=True
   Then Begin
     //  XViewRef.SQL.Add(' And (SCPC = '+#39+'S'+#39+') ');
     // DMFINANC.TAlx.SQL.Add(' And (SCPC = '+#39+'S'+#39+') ');
       XViewRef.SQL.Add(' And (Fech <> '+#39+'S'+#39+') ');
	    DMFINANC.TAlx.SQL.Add(' And (Fech <> '+#39+'S'+#39+') ');
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
       XViewRef.SQL.Add(' And (DTLANC = :DTLANC) ORDER BY DTLANC, NOME');
       XViewRef.ParamByName('DTLANC').AsDate:=StrToDate(EDLANCAMENTO.TEXT);

       DMFINANC.TAlx.SQL.Add(' And (DTLANC = :DTLANC)');
       DMFINANC.TAlx.ParamByName('DTLANC').AsDate:=StrToDate(EDLANCAMENTO.TEXT);
   End;
   If TipoCons='ODTLANC'
   Then Begin//ordena pelo valor
       XViewRef.SQL.Add(' ORDER BY DTLANC, NOME');
   End;
   If TipoCons='DTVENC'
   Then Begin//filtrar pelo DTVENC Data de Vencimento da parcela e ordenar
		Try
       	StrToDate(EdVencimento2.TEXT);
       	XViewRef.SQL.Add(' And (DTVENC Between :Data1 and :Data2) ORDER BY DTVENC, NOME');
			XViewRef.ParamByName('Data1').AsString:=EdVencimento.TEXT;
			XViewRef.ParamByName('Data2').AsString:=EdVencimento2.TEXT;

       	DMFINANC.TAlx.SQL.Add(' And (DTVENC Between :Data1 and :Data2)');
			DMFINANC.TAlx.ParamByName('Data1').AsString:=EdVencimento.TEXT;
			DMFINANC.TAlx.ParamByName('Data2').AsString:=EdVencimento2.TEXT;

       Except
       	StrToDate(EdVencBaixa2.Text);
       	XViewRef.SQL.Add(' And (DTVENC = :DTVENC) ORDER BY DTVENC, NOME');
       	XViewRef.ParamByName('DTVENC').AsDate:=StrToDate(EdVencimento.TEXT);

       	DMFINANC.TAlx.SQL.Add(' And (DTVENC = :DTVENC)');
       	DMFINANC.TAlx.ParamByName('DTVENC').AsDate:=StrToDate(EdVencimento.TEXT);
		End;
   End;
   If TipoCons='ODTVENC'
   Then Begin//ordena pelo valor
       XViewRef.SQL.Add(' ORDER BY DTVENC, NOME');
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

   If XTipo='P'
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
   End;
   //abre sql com filtro
   XViewRef.SQL.Text;
   XViewRef.Open;
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
End;

//Procedure utilizada p/ imprimir um memo
Procedure TFCtaReceber.Memo_Print(Conteudo:TStrings);
Var
	MemoFile :TextFile;
	P :Integer;
Begin
	AssignPrn(MemoFile);
	Rewrite(MemoFile);
	For P := 0 to Conteudo.Count-1 do
		Writeln(MemoFile,Conteudo.Strings[P]);
	CloseFile(MemoFile);
end;

//procedure que seleciona e Insere boleto para remessa
Procedure TFctaReceber.InsertBoletoRemessa(CODCTA:INTEGER);
Var
  YearAtu, MonthAtu, DayAtu:word;
  XNumFisc: String;
Begin
{ Try
   //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   //PREPARA SQL
   DMFinanc.TAlx.Close;
   DMFinanc.TAlx.SQL.Clear;
   DMFinanc.TAlx.SQL.Add('SELECT distinct(parcelacr.cod_parcelacr), parcelacr.NUMBOLETO, parcelacr.dtvenc, parcelacr.NOSSONUMBLT, parcelacr.numboleto, parcelacr.numfisc, ctareceber.dtlanc, parcelacr.numparc, parcelacr.valExt, parcelacr.valor, ');
   DMFinanc.TAlx.SQL.Add('pessoa.bairro, pessoa.cep, Pessoa.Telrel, pessoa.cpfcnpj, pessoa.endnumero, pessoa.endereco, pessoa.nome AS SACADO, ');
   DMFinanc.TAlx.SQL.Add('CtaReceber.NumDoc, CtaReceber.TIPOGERADOR, CtaReceber.COD_GERADOR, CtaReceber.DTLanc, cidade.nome AS CIDADE, estado.uf_estado ');
   DMFinanc.TAlx.SQL.Add('FROM parcelacr join ctareceber ON parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
   DMFinanc.TAlx.SQL.Add('JOIN cliente on cliente.cod_cliente = ctareceber.cod_cliente ');
   DMFinanc.TAlx.SQL.Add('join pessoa ON pessoa.cod_pessoa = cliente.cod_pessoa ');
   DMFinanc.TAlx.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
   DMFinanc.TAlx.SQL.Add('left join estado ON estado.cod_estado = cidade.cod_estado ');
  	//Neste caso imprime boletos de forma individual
  	DMFinanc.TAlx.SQL.Add('Where parcelacr.COD_PARCELACR=:CODCTARECEBER ');
  	DMFinanc.TAlx.ParamByName('CODCTARECEBER').AsInteger:=XViewRef.FieldByName('COD_PARCELACR').AsInteger;
   DMFINANC.TAlx.Open;
   If Not DMFINANC.TAlx.IsEmpty
   Then Begin
   	//FILTRA CONTA CORRENTE DE ACORDO COM A SELECIONADA
       DMBANCO.TCtaCor.Close;
       DMBANCO.TCtaCor.SQL.Clear;
       DMBANCO.TCtaCor.SQL.Add(' select * from ctacor where ');
       DMBANCO.TCtaCor.SQL.Add(' ctacor.cod_ctacor=:CODCTACOR');
       DMBANCO.TCtaCor.ParamByName('CODCTACOR').AsInteger:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
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

       //VERIFICA SE A CTA CORRENTE EH DE PROTESTO\
       If DMBANCO.TCtaCor.FieldByName('PROTAUT').AsString='1'
       Then Begin
       	gbTitulo1.Protesta:=True;
			gbTitulo1.DiasProtesta:=DMBANCO.TCtaCor.FieldByName('DIASPROT').AsInteger;
       End
 		Else Begin
           gbTitulo1.Protesta:=False;
       End;
       gbTitulo1.ContRemessa:=DMBANCO.TCtaCor.FieldByName('CONTREMESSA').AsInteger;       
   	//PASSA VALORES PARA O COMPONENTE DE BOLETO
       gbTitulo1.SeuNumero:=DMBANCO.TCtaCor.FieldByName('CODEMPRESABLT').AsString;
   	gbTitulo1.Carteira:=DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString;
   	gbTitulo1.Cedente.Nome:=DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString;
       gbTitulo1.Cedente.NumeroCPFCGC:=DMMACS.TEmpresa.FieldByName('CNPJ').AsString;
       gbTitulo1.Cedente.CodigoCedente:=DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString;
       gbTitulo1.Cedente.DigitoCodigoCedente:=DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT').AsString;
       gbTitulo1.Cedente.ContaBancaria.CodigoAgencia:=DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString;
       gbTitulo1.Cedente.ContaBancaria.DigitoAgencia:=DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
       gbTitulo1.Cedente.ContaBancaria.NumeroConta:=DMBANCO.TCtaCor.FieldByName('NUMCTACOR').AsString;
       gbTitulo1.Cedente.ContaBancaria.DigitoConta:=DMBANCO.TCtaCor.FieldByName('DIGCTACOR').AsString;
       gbTitulo1.Cedente.ContaBancaria.Banco.Codigo:=DMBANCO.TAlx.FieldByName('NUMBANCO').AsString;
       gbTitulo1.DataDocumento:=DMFinanc.TAlx.FieldByName('DTLANC').AsDateTime;
       gbTitulo1.DataVencimento:=DMFinanc.TAlx.FieldByName('DTVENC').AsDateTime;
       gbTitulo1.NumeroDocumento:={DMFinanc.TAlx.FieldByName('NUMFISC').AsString+'-'+}DMFinanc.TAlx.FieldByName('NUMBOLETO').AsString{+':'+DMFinanc.TAlx.FieldByName('NUMPARC').AsString};
{		gbTitulo1.NossoNumero:=DMFinanc.TAlx.FieldByName('NOSSONUMBLT').AsString;
		gbTitulo1.EspecieDocumento:=edDuplicataMercantil;
       gbTitulo1.Instrucoes.Clear;
       gbTitulo1.Instrucoes.Add(DMBANCO.TCtaCor.FieldByName('INSTRUBOLETO').AsString);
       //Montar Nosso Numero para BB e cedente de 7 digitos
       If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger=1) And (Length(DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString)=7)
       Then Begin
			gbTitulo1.NossoNumero:=ConcatZero(DMFinanc.TAlx.FieldByName('NUMBOLETO').AsString, 10);
			gbTitulo1.NossoNumero:=DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString+gbTitulo1.NossoNumero;
       End;
       //Montar Nosso Numero para SICOOB
       If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='756')
       Then Begin
  			//extratifica data Atual
           DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
			gbTitulo1.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+ConcatZero(DMBANCO.TAlx.FieldByName('NUMBOLETO').AsString, 6);
       End;
       //Montar Nosso Numero para SICREDI
       If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='748')
       Then Begin
  			//extratifica data Atual
           DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
           gbTitulo1.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+'2'+ConcatZero(DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString, 5);
       End;
       gbTitulo1.DataProcessamento:=Date();
       gbTitulo1.Sacado.Endereco.Numero:='';
       gbTitulo1.Sacado.Endereco.Complemento:='';
		//sacado
       gbTitulo1.Sacado.Endereco.Bairro:=DMFinanc.TAlx.FieldByName('Bairro').AsString;
       gbTitulo1.Sacado.Endereco.CEP:=TiraCaracter(DMFinanc.TAlx.FieldByName('CEP').AsString, '-');
		gbTitulo1.Sacado.NumeroCPFCGC:=DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString;
       gbTitulo1.Sacado.Endereco.Cidade:=DMFinanc.TAlx.FieldByName('CIDADE').AsString;
       gbTitulo1.Sacado.Endereco.Estado:=DMFinanc.TAlx.FieldByName('UF_ESTADO').AsString;
       gbTitulo1.Sacado.Endereco.Rua:=DMFinanc.TAlx.FieldByName('ENDERECO').AsString;
       gbTitulo1.Sacado.Nome:=DMFinanc.TAlx.FieldByName('SACADO').AsString;
       If ValidCPF(DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString)=True
       Then Begin
       	gbTitulo1.Sacado.TipoInscricao:=tiPessoaFisica;
       End
       Else Begin
       	gbTitulo1.Sacado.TipoInscricao:=tiPessoaJuridica;
       End;
       gbTitulo1.Sacado.NumeroCPFCGC:=DMFinanc.TAlx.FieldByName('CPFCNPJ').AsString;
       gbTitulo1.ValorDocumento:=DMFinanc.TAlx.FieldByName('valor').AsCurrency;
		If DMMACS.TLoja.FieldByName('JUROS').AsString<>''
       Then Begin
       	gbTitulo1.ValorMoraJuros:=(((DMMACS.TLoja.FieldByName('JUROS').AsCurrency)/30)*DMFinanc.TAlx.FieldByName('valor').AsCurrency)/100;
       End;
		If DMMACS.TLoja.FieldByName('MULTA').AsString<>''
       Then Begin
       	gbTitulo1.ValorOutrasDespesas:=((DMMACS.TLoja.FieldByName('MULTA').AsCurrency)*DMFinanc.TAlx.FieldByName('valor').AsCurrency)/100;
       End;

       DMCONTA.TParcCR.Close;
       DMCONTA.TParcCR.SQL.Clear;
       DMCONTA.TParcCR.SQL.Add('SELECT * FROM PARCELACR WHERE PARCELACR.COD_PARCELACR=:CODPAR');
       DMCONTA.TParcCR.ParamByName('CODPAR').AsInteger:=DMFINANC.TAlx.FieldByName('COD_PARCELACR').AsInteger;
		DMCONTA.TParcCR.Open;
       If Not DMCONTA.TParcCR.IsEmpty
       Then Begin
       	Try
           	DMCONTA.TParcCR.Edit;
           	DMCONTA.TParcCR.FieldByName('REMESSA').AsString:='PARC';
           	DMCONTA.TParcCR.Post;
           Except
           End;
       End;
   End;
 Except
 End;
}
End;

// função utilizada para filtrar as parcelas de ctas receber de acordo com o banco selecionado
Function TFCtaReceber.FiltraRemessa: Boolean;
Begin
	Try
       DMCONTA.TAlx.Close;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add('select count(vwparcr.cod_parcelacr) AS NUMPARC from vwparcr');
       DMCONTA.TAlx.SQL.Add(' where (vwparcr.cod_loja = '+#39+FMenu.LCODLOJA.Caption+#39+')  AND (vwparcr.tipoboleto='+#39+'R'+#39+') AND ((FECH<>'+#39+'S'+#39+') OR (FECH IS NULL))  AND ((REMESSA IS NULL) OR (REMESSA<>'+#39+'ENVIADO'+#39+') AND (REMESSA<>'+#39+'RECUSADO'+#39+') ) AND (vwparcr.cod_ctacor=:COD_CTACOR)');
       DMCONTA.TAlx.ParamByName('COD_CTACOR').AsInteger:=DMBANCO.WCtaCor.FieldByName('cod_ctacor').AsInteger;
		DMCONTA.TAlx.Open;
       LNumRemessa.Caption:=DMCONTA.TAlx.FieldByName('NUMPARC').AsString+' Registros selecionados';
		//
		{DMCONTA.TAlx.Close;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add(' SELECT CTACOR.USACOBREBEMX FROM CTACOR WHERE CTACOR.COD_CTACOR = :COD_CTACOR ');
       DMCONTA.TAlx.ParamByName('COD_CTACOR').AsInteger := DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
		DMCONTA.TAlx.Open;

       DMCONTA.WParR.Close;
       DMCONTA.WParR.SQL.Clear;
       if DMCONTA.TAlx.FieldByName('USACOBREBEMX').AsString = '1' then
       	DMCONTA.WParR.SQL.Add('select FIRST 30 * from vwparcr ')
       else }
       DMCONTA.WParR.Close;
       DMCONTA.WParR.SQL.Clear;       
       DMCONTA.WParR.SQL.Add('select * from vwparcr ');       
       DMCONTA.WParR.SQL.Add(' where (vwparcr.cod_loja = '+#39+FMenu.LCODLOJA.Caption+#39+')  AND (vwparcr.tipoboleto='+#39+'R'+#39+') AND ((FECH<>'+#39+'S'+#39+') OR (FECH IS NULL))  AND ((REMESSA IS NULL) OR (REMESSA<>'+#39+'ENVIADO'+#39+') AND (REMESSA<>'+#39+'RECUSADO'+#39+') ) AND (vwparcr.cod_ctacor=:COD_CTACOR) ORDER BY  vwparcr.dtvenc, VWPARCR.NUMPARC');
       DMCONTA.WParR.ParamByName('COD_CTACOR').AsInteger:=DMBANCO.WCtaCor.FieldByName('cod_ctacor').AsInteger;
		DMCONTA.WParR.Open;
   Except
       DMCONTA.TAlx.Close;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add('select count(vwparcr.cod_parcelacr) AS NUMPARC from vwparcr');
       DMCONTA.TAlx.SQL.Add(' where (vwparcr.cod_loja = '+#39+FMenu.LCODLOJA.Caption+#39+')  AND (vwparcr.tipoboleto='+#39+'R'+#39+') AND ((FECH<>'+#39+'S'+#39+') OR (FECH IS NULL))  AND ((REMESSA IS NULL) AND (REMESSA<>'+#39+'RECUSADO'+#39+'))');
       DMCONTA.TAlx.ParamByName('COD_CTACOR').AsInteger:=DMBANCO.WCtaCor.FieldByName('cod_ctacor').AsInteger;
		DMCONTA.TAlx.Open;
       LNumRemessa.Caption:=DMCONTA.TAlx.FieldByName('NUMPARC').AsString+' Registros selecionados';

       DMCONTA.WParR.Close;
       DMCONTA.WParR.SQL.Clear;
       DMCONTA.WParR.SQL.Add('select * from vwparcr ');
       DMCONTA.WParR.SQL.Add(' where (vwparcr.cod_loja = '+#39+FMenu.LCODLOJA.Caption+#39+')  AND (vwparcr.tipoboleto='+#39+'R'+#39+') AND ((FECH<>'+#39+'S'+#39+') OR (FECH IS NULL))  AND ((REMESSA IS NULL) AND (REMESSA<>'+#39+'RECUSADO'+#39+')) ORDER BY vwparcr.dtvenc, VWPARCR.NUMPARC');
       DMCONTA.WParR.ParamByName('COD_CTACOR').AsInteger:=DMBANCO.WCtaCor.FieldByName('cod_ctacor').AsInteger;
		DMCONTA.WParR.Open;
   End;
End;

procedure TFCtaReceber.FormActivate(Sender: TObject);
begin
	Caption:='Cadastro de Contas a Receber';
   XTipo:='R';
   XSQLTABELA:='CTARECEBER';
  inherited;


   If PCADASTRO.Visible=False
   Then Begin
    TCConsultContas.OnTabChanged(Sender);
    //LINKA DB GRIDS
    DBGridCadastroPadrao.DataSource:= DMCONTA.DWParR;
    DBGMestre.DataSource:=DMCONTA.DWCTAR;
    DBGSLAVE.DataSource:=DMCONTA.DWParR;
    DBGBAIXADAS.DataSource:=DMCONTA.DWParR;
    DBGRemessa.DataSource:=DMCONTA.DWParR;
    //INSERE OU REMOVE AS COLUNAS DE VALOR DE PRODUTO OU SERVIÇO
    If ((DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE')) and (DMMACS.TLoja.FieldByName('SERVNFE').AsString='1')
    Then Begin
		DBGrid3.Columns[6].Visible:=True;
       DBGrid3.Columns[5].Visible:=True;
    End
    Else Begin
		DBGrid3.Columns[6].Visible:=False;
       DBGrid3.Columns[5].Visible:=False;
    End;

   End;

   // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\ctasReceber.lgm') Then
       DBGridCadastroPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ctasReceber.lgm');

   If FileExists('C:\MZR\Arquivos\LayoutGrid\ParcelasctasReceber.lgm') Then
       DBGrid3.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ParcelasctasReceber.lgm');

   If FileExists('C:\MZR\Arquivos\LayoutGrid\ctasReceberBaixadas.lgm') Then
       DBGBAIXADAS.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ctasReceberBaixadas.lgm');

   If FileExists('C:\MZR\Arquivos\LayoutGrid\ctasReceberPrevisao.lgm') Then
       DBGRemessa.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ctasReceberRemessas.lgm');

   If FileExists('C:\MZR\Arquivos\LayoutGrid\ctasReceberMestre.lgm') Then
       DBGMestre.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ctasReceberMestre.lgm');

   If FileExists('C:\MZR\Arquivos\LayoutGrid\ctasReceberSlave.lgm') Then
       DBGSLAVE.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ctasReceberSlave.lgm');

   If FileExists('C:\MZR\Arquivos\LayoutGrid\PctasReceber.lgm') Then
       DBGridCadastroPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\PctasReceber.lgm');

	If FMenu.XTIPOBOLTO='LANCACARTÃO' Then
   	FaturaCartoes;

   //Edmar - 07/01/2014 - Monta e atribui o hint ao componente de escolha do layout da remessa
   rdgLayoutArquivoRemessa.Hint := 'SIGCB240 (Caixa)'+#13+'FEBRABAN240 (Sicredi, Sicoob e Itaú)'+#13+'CNAB400 (Bradesco)'+#13+'CBR454';
   XSqlFiltro := DMCONTA.WParR.sql.Text;
   

end;

procedure TFCtaReceber.FormShow(Sender: TObject);
begin
  inherited;
    XTabela:=DMCONTA.TCtaR;
    XTabREf:=DMCONTA.TParcCR;
    XView:=DMCONTA.WCtaR;
    XViewRef:=DMCONTA.WParR;
    XPK:='COD_CTARECEBER';
    XTipoPR:='R';
    XSQLTABELA:='CTARECEBER';
    XTransaction:=DMCONTA.IBT;
end;

procedure TFCtaReceber.BtnNovoClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CAD_CR', 'M')=False Then
  		Exit;
   RbBoleto.Checked:=False;
   //RBDuplicata.Checked:=True;



  inherited;

end;

procedure TFCtaReceber.BtnBaixarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('BAIXAR_CR', 'M')=False Then
  		Exit;

  inherited;  
end;

procedure TFCtaReceber.BtnApagarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ALTEXC_CR', 'M')=False Then
  		Exit;

  inherited;

end;

procedure TFCtaReceber.BtnConsultarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ALTEXC_CR', 'M')=False Then
  		Exit;

   inherited;
   //sql que seleciona o nome da conta pra visualizar no documento
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('select * from VWCTACOR');
   DMCONTA.TAlx.SQL.Add('where cod_ctacor = :CODIGO');
   DMCONTA.TAlx.ParamByName('CODIGO').AsInteger:= DMCONTA.TParcCR.FieldByName('COD_CTACOR').AsInteger;
   DMCONTA.TAlx.Open;

   //passa o nome da conta para a edit
   ENomeConta.Text:=DMCONTA.TAlx.FieldByName('DESCBANCO').AsString;

end;


procedure TFCtaReceber.BitBtn3Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CANCELBAIXA_CR', 'M')=False Then
  		Exit;

  inherited;

end;

procedure TFCtaReceber.Duplicata1Click(Sender: TObject);
begin
  inherited;
  ImpDuplicata(XViewRef.FieldByName('COD_CTARECEBER').AsInteger, 0);
end;

procedure TFCtaReceber.TCConsultContasTabChanged(Sender: TObject);
begin
   Painel.Enabled:=True;
   PConfere.Visible:=False;
   PRemessa.Visible:=False;
   PCartao.Visible:=False;
   PSPC.Visible:=False;
   inherited;
   If TCConsultContas.ActiveTab=3
   Then Begin
       BtnFiltrar.Visible := False;
       Painel.Enabled:=False;
       PConfere.Visible:=True;
       PConfere.BringToFront;
   End;
   If TCConsultContas.ActiveTab=4
   Then Begin
       BtnFiltrar.Visible := False;
       Painel.Enabled:=False;
       PRemessa.Visible:=True;
       PRemessa.BringToFront;
       FiltraRemessa;
   End;
   If TCConsultContas.ActiveTab=5
   Then Begin
       BtnFiltrar.Visible := False;
       Painel.Enabled:=True;
       PSPC.Visible:=True;
       PSPC.BringToFront;
	    FiltraSPC('ONUMPARC');
   End;
   If TCConsultContas.ActiveTab=6
   Then Begin
       BtnFiltrar.Visible := False;
       Painel.Enabled:=True;
       PCartao.Visible:=True;
       PCartao.BringToFront;
       If CBCobrancaCartao.Text='' Then
           CBCobrancaCartao.Text:='C - Cartão';
       If CBBandeira.Text='' Then
           CBCobrancaCartao.Text:='Visa';  
       FiltraContasCartao('');
   End;
   // se nao tiver no painel baixadas a opção de Grande com Valor Pago
   If TCConsultContas.ActiveTab<>2
   Then Begin
		GrandeComValorPago1.Visible := False;
//       RecibodeFatura1.Visible := False;
       // se estiver valendo 1 eh pq o campo de referencia do relatorio QRRecibo está liberado para modificações
       XLIBERA_CAMPO := '';
   End
   Else Begin
       GrandeComValorPago1.Visible := true;
       RecibodeFatura1.Visible := True;
       // se estiver valendo 1 eh pq o campo de referencia do relatorio QRRecibo está liberado para modificações
       XLIBERA_CAMPO := '1';
   End;


end;

procedure TFCtaReceber.BtnFiltraMarkClick(Sender: TObject);
begin
  inherited;
   DMCONTA.TParcCR.Close;
   DMCONTA.TParcCR.SQL.Clear;
   DMCONTA.TParcCR.SQL.Add(' select * from parcelacr left join ctareceber ON parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
   DMCONTA.TParcCR.SQL.Add(' left join plncta on ctareceber.cod_plncta = plncta.cod_plncta ');
   DMCONTA.TParcCR.SQL.Add(' left join formpag ON ctareceber.cod_formpag = formpag.cod_formpag ');
   DMCONTA.TParcCR.SQL.Add(' left join cliente ON ctareceber.cod_cliente = cliente.cod_cliente ');
   DMCONTA.TParcCR.SQL.Add(' left join pessoa ON pessoa.cod_pessoa = cliente.cod_pessoa ');
   DMCONTA.TParcCR.SQL.Add(' WHERE (COD_LOJA = :CODLOJA) ');
   DMCONTA.TParcCR.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   Case RGFiltroDt.ItemIndex of
   	0: DMCONTA.TParcCR.SQL.Add(' AND ((parcelacr.dtvenc>=:DATA1) AND (parcelacr.dtvenc<=:DATA2)) ');
   	1: DMCONTA.TParcCR.SQL.Add(' AND ((parcelacr.dtdebito>=:DATA1) AND (parcelacr.dtdebito<=:DATA2)) ');
   End;
   If (RGFiltroDt.ItemIndex<>-1) And (RGFiltroDt.ItemIndex<>2)
   Then Begin
       DMCONTA.TParcCR.ParamByName('DATA1').AsDate:=StrToDate(EdDtConfere1.Text);
       DMCONTA.TParcCR.ParamByName('DATA2').AsDate:=StrToDate(EdDtConfere2.Text);
   end;
   Case RGFiltroCtas.ItemIndex of
   	0: DMCONTA.TParcCR.SQL.Add(' AND (parcelacr.fech='+#39+'S'+#39+')');
   	1: DMCONTA.TParcCR.SQL.Add(' AND ((parcelacr.fech<>'+#39+'S'+#39+') OR (parcelacr.fech is null))');
   End;
   Case RgOrdem.ItemIndex of
   	0: DMCONTA.TParcCR.SQL.Add(' order by parcelacr.numparc ');
   	1: DMCONTA.TParcCR.SQL.Add(' order by parcelacr.dtvenc ');
   	2: DMCONTA.TParcCR.SQL.Add(' order by vwparcr.dtdebito ');
   	3: DMCONTA.TParcCR.SQL.Add(' order by vwparcr.Historico ');
   End;
   DMCONTA.TParcCR.SQL.Text;
   DMCONTA.TParcCR.Open;
end;

procedure TFCtaReceber.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   DMCONTA.TParcCR.Edit;
	If DMCONTA.TParcCR.FieldByName('MARK').AsString='X'
   Then Begin
       DMCONTA.TParcCR.FieldByName('MARK').AsString:='';
   End
   Else Begin
       DMCONTA.TParcCR.FieldByName('MARK').AsString:='X';
   End;
   DMCONTA.TParcCR.Post;
end;

procedure TFCtaReceber.BitBtn5Click(Sender: TObject);
begin
  inherited;
   If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente Desmarcar todos os registros?', '', 2, 3, False, 'c')=2
   Then Begin
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('  update parcelacr set parcelacr.mark='+#39+' '+#39);
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.ExecSQL;
       DMCONTA.IBT.CommitRetaining;
       BtnFiltraMark.Click;
   End;
end;

procedure TFCtaReceber.BitBtn6Click(Sender: TObject);
begin
  inherited;
   If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente marcar todos os registros?', '', 2, 3, False, 'c')=2
   Then Begin
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add(' update parcelacr set parcelacr.mark='+#39+'X'+#39);
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.ExecSQL;
       DMCONTA.IBT.CommitRetaining;
       BtnFiltraMark.Click;
   End;

end;

procedure TFCtaReceber.BitBtn4Click(Sender: TObject);
begin
  inherited;
   DMCONTA.IBT.CommitRetaining;
   DMCONTA.TRel.Close;
   DMCONTA.TRel.SQL.Clear;
   DMCONTA.TRel.SQL.Add(' select * From vwparcr ');
   DMCONTA.TRel.SQL.Add(' left join ctareceber ON ctareceber.cod_ctareceber=vwparcr.cod_ctareceber ');
   DMCONTA.TRel.SQL.Add(' Left Join Cliente on Cliente.Cod_Cliente=VWParcr.COD_CLIENTE ');
   DMCONTA.TRel.SQL.Add(' left join pessoa on pessoa.cod_pessoa=cliente.cod_pessoa ');
   DMCONTA.TRel.SQL.Add(' Where (vwparcr.cod_loja=:CODLOJA) AND (vwparcr.cod_cliente IS NOT NULL) AND (vwparcr.mark='+#39+'X'+#39+')');
   DMCONTA.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   Case RGFiltroDt.ItemIndex of
   	0: DMCONTA.TRel.SQL.Add(' AND ((vwparcr.dtvenc>=:DATA1) AND (vwparcr.dtvenc<=:DATA2)) ');
   	1: DMCONTA.TRel.SQL.Add(' AND ((vwparcr.dtdebito>=:DATA1) AND (vwparcr.dtdebito<=:DATA2)) ');
   End;
   If (RGFiltroDt.ItemIndex<>-1) And (RGFiltroDt.ItemIndex<>2)
   Then Begin
       DMCONTA.TRel.ParamByName('DATA1').AsDate:=StrToDate(EdDtConfere1.Text);
       DMCONTA.TRel.ParamByName('DATA2').AsDate:=StrToDate(EdDtConfere2.Text);
   end;
   Case RGFiltroCtas.ItemIndex of
   	0: DMCONTA.TRel.SQL.Add(' AND (vwparcr.fech='+#39+'S'+#39+')');
   	1: DMCONTA.TRel.SQL.Add(' AND ((vwparcr.fech<>'+#39+'S'+#39+') OR (vwparcr.fech is null))');
   End;
   Case RgOrdem.ItemIndex of
   	0: DMCONTA.TRel.SQL.Add(' order by vwparcr.numparc ');
   	1: DMCONTA.TRel.SQL.Add(' order by vwparcr.dtvenc ');
   	2: DMCONTA.TRel.SQL.Add(' order by vwparcr.dtdebito ');
   	3: DMCONTA.TRel.SQL.Add(' order by vwparcr.historico ');
   End;
   DMCONTA.TRel.SQL.Text;
   DMCONTA.TRel.Open;
   QuickRep1.Preview
end;

procedure TFCtaReceber.BitBtn7Click(Sender: TObject);
begin
  inherited;
   DMCONTA.IBT.CommitRetaining;
   DMCONTA.TRel.Close;
   DMCONTA.TRel.SQL.Clear;
   DMCONTA.TRel.SQL.Add(' select * From vwparcr ');
   DMCONTA.TRel.SQL.Add(' left join ctareceber ON ctareceber.cod_ctareceber=vwparcr.cod_ctareceber ');
   DMCONTA.TRel.SQL.Add(' Left Join Cliente on Cliente.Cod_Cliente=VWParcr.COD_CLIENTE ');
   DMCONTA.TRel.SQL.Add(' left join pessoa on pessoa.cod_pessoa=cliente.cod_pessoa ');
   DMCONTA.TRel.SQL.Add(' Where (vwparcr.cod_loja=:CODLOJA) AND (vwparcr.cod_cliente IS NOT NULL) AND (vwparcr.mark<>'+#39+'X'+#39+')');
   DMCONTA.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   Case RGFiltroDt.ItemIndex of
   	0: DMCONTA.TRel.SQL.Add(' AND ((vwparcr.dtvenc>=:DATA1) AND (vwparcr.dtvenc<=:DATA2)) ');
   	1: DMCONTA.TRel.SQL.Add(' AND ((vwparcr.dtdebito>=:DATA1) AND (vwparcr.dtdebito<=:DATA2)) ');
   End;
   If (RGFiltroDt.ItemIndex<>-1) And (RGFiltroDt.ItemIndex<>2)
   Then Begin
       DMCONTA.TRel.ParamByName('DATA1').AsDate:=StrToDate(EdDtConfere1.Text);
       DMCONTA.TRel.ParamByName('DATA2').AsDate:=StrToDate(EdDtConfere2.Text);
   end;
   Case RGFiltroCtas.ItemIndex of
   	0: DMCONTA.TRel.SQL.Add(' AND (vwparcr.fech='+#39+'S'+#39+')');
   	1: DMCONTA.TRel.SQL.Add(' AND ((vwparcr.fech<>'+#39+'S'+#39+') OR (vwparcr.fech is null))');
   End;
   Case RgOrdem.ItemIndex of
   	0: DMCONTA.TRel.SQL.Add(' order by vwparcr.numparc ');
   	1: DMCONTA.TRel.SQL.Add(' order by vwparcr.dtvenc ');
   	2: DMCONTA.TRel.SQL.Add(' order by vwparcr.dtdebito ');
   	3: DMCONTA.TRel.SQL.Add(' order by vwparcr.historico ');
   End;
   DMCONTA.TRel.SQL.Text;
   DMCONTA.TRel.Open;
   QuickRep1.Preview;
end;

procedure TFCtaReceber.EdNumParcMarkKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
   	DMCONTA.TParcCR.Close;
   	DMCONTA.TParcCR.SQL.Clear;
   	DMCONTA.TParcCR.SQL.Add(' select * from parcelacr left join ctareceber ON parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
   	DMCONTA.TParcCR.SQL.Add(' left join plncta on ctareceber.cod_plncta = plncta.cod_plncta ');
   	DMCONTA.TParcCR.SQL.Add(' left join formpag ON ctareceber.cod_formpag = formpag.cod_formpag ');
   	DMCONTA.TParcCR.SQL.Add(' left join cliente ON ctareceber.cod_cliente = cliente.cod_cliente ');
   	DMCONTA.TParcCR.SQL.Add(' left join pessoa ON pessoa.cod_pessoa = cliente.cod_pessoa ');
   	DMCONTA.TParcCR.SQL.Add(' WHERE (COD_LOJA = :CODLOJA) ');
	    DMCONTA.TParcCR.SQL.Add(' And (upper(parcelacr.numparc) like upper('+#39+EdNumParcMark.Text+'%'+#39+')) ');
   	DMCONTA.TParcCR.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	Case RGFiltroDt.ItemIndex of
   		0: DMCONTA.TParcCR.SQL.Add(' AND ((parcelacr.dtvenc>=:DATA1) AND (parcelacr.dtvenc<=:DATA2)) ');
   		1: DMCONTA.TParcCR.SQL.Add(' AND ((parcelacr.dtdebito>=:DATA1) AND (parcelacr.dtdebito<=:DATA2)) ');
   	End;
   	If (RGFiltroDt.ItemIndex<>-1) And (RGFiltroDt.ItemIndex<>2)
   	Then Begin
       	DMCONTA.TParcCR.ParamByName('DATA1').AsDate:=StrToDate(EdDtConfere1.Text);
       	DMCONTA.TParcCR.ParamByName('DATA2').AsDate:=StrToDate(EdDtConfere2.Text);
   	end;
   	Case RGFiltroCtas.ItemIndex of
   		0: DMCONTA.TParcCR.SQL.Add(' AND (parcelacr.fech='+#39+'S'+#39+')');
   		1: DMCONTA.TParcCR.SQL.Add(' AND ((parcelacr.fech<>'+#39+'S'+#39+') OR (parcelacr.fech is null))');
   	End;
   	Case RgOrdem.ItemIndex of
   		0: DMCONTA.TParcCR.SQL.Add(' order by parcelacr.numparc ');
   		1: DMCONTA.TParcCR.SQL.Add(' order by parcelacr.dtvenc ');
   		2: DMCONTA.TParcCR.SQL.Add(' order by vwparcr.dtdebito ');
   		3: DMCONTA.TParcCR.SQL.Add(' order by vwparcr.Historico ');
   	End;
   	DMCONTA.TParcCR.SQL.Text;
   	DMCONTA.TParcCR.Open;
   End;
end;

procedure TFCtaReceber.PShow(Sender: TObject);
begin
  inherited;
  	iF P.PrintToFile=True Then
	  MessageDlg('IMPRESSORA ATIVA', mtWarning, [], 0);
end;

procedure TFCtaReceber.BtnGravarClick(Sender: TObject);
begin
   If DBCOBRANCA.Text = 'Cartão'
   Then Begin
		If Mensagem('ATENÇÃO', FMenu.EdUsuario.Text+', Deseja imprimir Boleto para esta conta?', '', 2, 3, false, 'c')=2
   	Then Begin
           XCOD_CTACORBLT:=DMCONTA.TAlx.FieldByName('COD_CTACOR').AsInteger;
  			ImpBoleto(XViewRef.FieldByName('COD_CTARECEBER').AsInteger, 0, false);
   	end;
   End;

   If XTipo='R'
    Then Begin
      XTabela.Edit;
    	XTabela.FieldByName('NUMCARTAO').AsString := edNumeroCartao.Text;
      XNUMCARTAO := edNumeroCartao.Text;
    End
    Else Begin
      XNUMCARTAO := '';
    End;

  inherited;
    If PCADASTRO.Visible=False
    Then Begin
  	 	if RBDuplicata.Checked=True then
       begin
       	ImpDuplicata(XCODCTA, 1);
   	end;

   	if RdCarne.Checked = True then
       begin
			FiltraTabela(XViewRef, 'VWPARCR', 'COD_CTARECEBER', IntToStr(XCODCTA), '');
			NovoCarn1Click(sender);
			CbDefineQuant.Checked := True;
   	end;

  		if RBBoleto.Checked = True then
       begin
			FiltraTabela(XViewRef, 'VWPARCR', 'COD_CTARECEBER', IntToStr(XCODCTA), '');
			NovoBoleto1Click(sender);
			CbDefineQuant.Checked := True;
		end;
    End;
end;

procedure TFCtaReceber.RBBoletoExit(Sender: TObject);
begin
  inherited;
	{If RBBoleto.Checked=True
   Then Begin
   	FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
		if AbrirForm(TFCadCtacor, FCadCtaCor, 1) = 'Selected' then
       	XCOD_CTACORBLT:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger
   	else
       	XCOD_CTACORBLT:=-1;
   End;}
end;

procedure TFCtaReceber.DBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
   DMBANCO.WCtaCor.Close;
   DMBANCO.WCtaCor.SQL.Clear;
   DMBANCO.WCtaCor.SQL.Add('SELECT * FROM vwctacor');
   DMBANCO.WCtaCor.Open;
end;

procedure TFCtaReceber.DBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
   DMGEOGRAFIA.TAlx.close;
   DMGEOGRAFIA.TAlx.SQL.Clear;
   DMGEOGRAFIA.TAlx.SQL.Add(' Select vwagencia.numbanc as NUMERO from vwctacor ');
   DMGEOGRAFIA.TAlx.SQL.Add(' Left join vwagencia on vwctacor.cod_agencia = vwagencia.cod_agencia ');
   DMGEOGRAFIA.TAlx.SQL.Add(' Where vwctacor.cod_ctacor = :codigo ');
   DMGEOGRAFIA.TAlx.ParamByName('codigo').AsInteger:= DMBANCO.WCtaCor.FieldByName('cod_ctacor').AsInteger;
   DMGEOGRAFIA.TAlx.Open;
   
  	If DMGEOGRAFIA.TAlx.FieldByName('NUMERO').AsString='748' Then
       rdgLayoutArquivoRemessa.ItemIndex:=2;  
	FiltraRemessa;
end;

procedure TFCtaReceber.DBLookupComboBox1Click(Sender: TObject);
begin
  inherited;
	FiltraRemessa;
end;
//Gerar remessa
procedure TFCtaReceber.BtnGeraRemessaClick(Sender: TObject);
{VAR
	XNomeRemessa, xCodCedente, xCaminhoRemessa, xConcBltVencidos: String;
   Data: Integer;
   Mes:String;
   xDados1, xDados2: Variant;
   Year, Month, Day:word;  }
begin
  inherited;
   try
  	    If  DBLookupComboBox1.Text=''
       Then Begin
   	    MessageDlg('Informe a Conta Corrente', mtWarning, [mbOK], 0);
           DBLookupComboBox1.SetFocus;
           Exit;
       End;

       FiltraTabela(DMBANCO.WAgencia, 'VWAGENCIA', 'COD_AGENCIA', DMBANCO.WCtaCor.FieldByName('COD_AGENCIA').AsString, '');
       FiltraTabela(DMBANCO.TCtaCor, 'CTACOR', 'COD_CTACOR', DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString, '');

       //Edmar - 31/10/2013 - Testa se o diretório existe, se não existir ele cria
       if not DirectoryExists('C:\MZR\Arquivos\Remessa') then
  		    ForceDirectories('C:\MZR\Arquivos\Remessa');

       if  DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString='1' Then
   	    GeraRemessaCobreBemX
       else
  		    GeraRemessaAcbr;

       Mensagem('A V I S O', 'Arquivo de remessa gerado com sucesso no diretório '+xCaminhoRemessa,'', 1, 1, true, 'I');

  	Except
       On E : Exception do
       begin
	        Mensagem(' A V I S O ', 'Não foi possivel criar o arquivo de remessa.' + #13 + E.Message,'', 1, 1, true, 'I');
       end;
  	end;
End;


Function TFCtaReceber.GeraRemessaCobreBemX: Boolean;
var
   //xRemessaCaixa: TextFile;
   xRemessaCaixa: TStrings;
   xLinhaRemessa, xLinhaAtualizada: String;
   xI: Integer;
Begin
	Try
		CobreBemXCtaReceber := CreateOleObject('CobreBemX.ContaCorrente');
   Except
   	MessageDlg('Falha 1985 ao iniciar CobreBemX. Reinstale o componente.', mtWarning, [mbOK], 0);
       Exit;
   End;

   CobreBemXCtaReceber.ArquivoLicenca := DMBANCO.TCtaCor.FieldByName('LICENSACOBREBEM').AsString;

   //Edmar - 26/08/2014 - Se foi cadastrado algum caminho para remessa, atribui
   if (DMBANCO.TCtaCor.FieldByName('CAMINHO_REMESSA').AsString <> '') then
   	xCaminhoRemessa := DMBANCO.TCtaCor.FieldByName('CAMINHO_REMESSA').AsString
   else
   	//Edmar - 26/08/2014 - Senão, usa o caminho padrão
		xCaminhoRemessa := 'C:\MZR\Arquivos\Remessa\';

 	CobreBemXCtaReceber.ArquivoRemessa.Diretorio := xCaminhoRemessa;

   DecodeDate(Date(), Year, Month, Day);
   //Edmar - 09/12/2013 - Testa qual banco que deseja emitir a remessa
   if DMBANCO.WAgencia.FieldByName('NUMBANC').AsString = '748' then//SICREDI
   begin
	    CobreBemXCtaReceber.CodigoCedente := DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString;
       CobreBemXCtaReceber.CodigoAgencia := DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString+'.'+DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
       CobreBemXCtaReceber.NumeroContaCorrente := DMBANCO.TCtaCor.FieldByName('numctacor').AsString+'-'+DMBANCO.TCtaCor.FieldByName('DIGCTACOR').AsString;
	    xCodCedente := DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString;
       XNomeRemessa :=xCodCedente+''+IntToStr(Day)+''+IntToStr(Month)+''+IntToStr(DMBANCO.TCtaCor.FieldByName('CONTREMESSA').AsInteger)+'.REM';
       CobreBemXCtaReceber.ArquivoRemessa.Arquivo := XNomeRemessa;
   end;

   if DMBANCO.WAgencia.FieldByName('NUMBANC').AsString = '756' then//SICOOB
   begin
   	CobreBemXCtaReceber.CodigoCedente := DMBANCO.TCtaCor.FieldByName('nossonumblt').AsString;
       CobreBemXCtaReceber.CodigoAgencia := DMBANCO.WAgencia.FieldByName('numagencia').AsString;//+'-'+DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
       CobreBemXCtaReceber.NumeroContaCorrente := DMBANCO.TCtaCor.FieldByName('numctacor').AsString;
       CobreBemXCtaReceber.OutroDadoConfiguracao2 := ConcatZero(DMBANCO.TCtaCor.FieldByName('codempresablt').AsString, 7);
		XNomeRemessa := 'CBR'+IntToStr(Year)+''+ConcatZero(IntToStr(Month), 2)+''+ConcatZero(IntToStr(Day), 2)+''+DMBANCO.TCtaCor.FieldByName('CONTREMESSA').AsString+'.REM';
       CobreBemXCtaReceber.ArquivoRemessa.Arquivo := XNomeRemessa;
       xDados1 := CobreBemXCtaReceber.MeusDados.Add;
	   	xDados1.Nome := 'AgenciaSicoob';
   	xDados1.Valor := DMBANCO.WAgencia.FieldByName('numagencia').AsString;
   	xDados2 := CobreBemXCtaReceber.MeusDados.Add;
   	xDados2.Nome := 'ContaCorrenteSicoob';
   	xDados2.Valor := DMBANCO.TCtaCor.FieldByName('numctacor').AsString;
   end; 

   if DMBANCO.WAgencia.FieldByName('NUMBANC').AsString = '104' then//CAIXA
   begin
       if DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT').AsString <> '' then
           CobreBemXCtaReceber.CodigoCedente := DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString+'-'+DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT').AsString
       else
       	CobreBemXCtaReceber.CodigoCedente := DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString;

       CobreBemXCtaReceber.CodigoAgencia := DMBANCO.WAgencia.FieldByName('numagencia').AsString;
       CobreBemXCtaReceber.NumeroContaCorrente := DMBANCO.TCtaCor.FieldByName('numctacor').AsString+DMBANCO.TCtaCor.FieldByName('DIGCTACOR').AsString;
	end;

   if DMBANCO.WAgencia.FieldByName('NUMBANC').AsString = '237' then//Bradesco
   begin
		CobreBemXCtaReceber.CodigoCedente := ConcatZero(DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString, 15);
       CobreBemXCtaReceber.CodigoAgencia := DMBANCO.WAgencia.FieldByName('numagencia').AsString+'-'+DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
       CobreBemXCtaReceber.NumeroContaCorrente := ConcatZero(DMBANCO.TCtaCor.FieldByName('numctacor').AsString, 7)+'-'+DMBANCO.TCtaCor.FieldByName('DIGCTACOR').AsString;
	end;

   //Edmar - 26/08/2014 - Se foi cadastrado algum nome para remessa, atribui
   if DMBANCO.TCtaCor.FieldByName('NOME_REMESSA').AsString <> '' then
       XNomeRemessa := DMBANCO.TCtaCor.FieldByName('NOME_REMESSA').AsString+'.txt'
   else
   	//Edmar - 15/12/2014 - Se o banco for SICOOB
   	if DMBANCO.WAgencia.FieldByName('NUMBANC').AsString = '756' then//monta o nome da remessa personalizada
			XNomeRemessa := 'CBR'+IntToStr(Year)+IntToStr(Month)+IntToStr(Day)+ ConcatZero(DMBANCO.TCtaCor.FieldByName('CONTREMESSA').AsString, 2)+'.REM'
       else
       	if DMBANCO.WAgencia.FieldByName('NUMBANC').AsString = '237' then//Bradesco
				XNomeRemessa := 'CB'+ConcatZero(IntToStr(Day), 2)+ConcatZero(IntToStr(Month), 2)+ConcatZero(DMBANCO.TCtaCor.FieldByName('CONTREMESSA').AsString, 2)+'.REM'
           else
           	if DMBANCO.WAgencia.FieldByName('NUMBANC').AsString = '104' then//caixa
					XNomeRemessa := 'E'+ConcatZero(IntToStr(Day), 2)+ConcatZero(DMBANCO.TCtaCor.FieldByName('CONTREMESSA').AsString, 4)+'.REM'
               else
       			//Edmar - 26/08/2014 - Senão, monta a nome padrão para remessa
       			XNomeRemessa := '1'+IntToStr(Day)+ConcatZero(DMBANCO.TCtaCor.FieldByName('CONTREMESSA').AsString, 4)+'.REM';

   //Edmar - 26/08/2014 - Se o arquivo já existir
   if FileExists(xCaminhoRemessa+XNomeRemessa) then
   	//Edmar - 26/08/2014 - Renomeia, colocando a data e a hora de modificação
		RenameFile(xCaminhoRemessa+XNomeRemessa, xCaminhoRemessa+XNomeRemessa+'_'+(FormatDateTime('dd-MM-yy', Date()))+'_'+(FormatDateTime('hh.MM', Now()))+'.txt');

   CobreBemXCtaReceber.ArquivoRemessa.Arquivo := XNomeRemessa;

	CobreBemXCtaReceber.ArquivoRemessa.DataGravacao := Date();

   //Edmar - 31/10/2013 - Seleciona o layout que o usuario escolheu antes de gerar a remessa
   case rdgLayoutArquivoRemessa.ItemIndex of
      0 : CobreBemXCtaReceber.ArquivoRemessa.Layout := 'SIGCB240';
      1 : CobreBemXCtaReceber.ArquivoRemessa.Layout := 'FEBRABAN240';
      2 : CobreBemXCtaReceber.ArquivoRemessa.Layout := 'CNAB400';
   else
      CobreBemXCtaReceber.ArquivoRemessa.Layout := 'CBR454';
   end;

   CobreBemXCtaReceber.ArquivoRemessa.Sequencia := DMBANCO.TCtaCor.FieldByName('CONTREMESSA').AsInteger;

   xConcBltVencidos := '';

   DMCONTA.WParR.First;
   CobreBemXCtaReceber.DocumentosCobranca.Clear;
   While not DMCONTA.WParR.Eof Do
   Begin
   	if DMCONTA.WParR.FieldByName('DTVENC').AsDateTime > Date() then
       	InsertBoletoRemessaCobreBem(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger)
		else
       	xConcBltVencidos := xConcBltVencidos + DMCONTA.WParR.FieldByName('NUMBOLETO').AsString+', ';

       DMCONTA.WParR.Next;
   End;

   if xConcBltVencidos <> '' then
   	Mensagem('A V I S O', 'Os boletos '+xConcBltVencidos+'não foram incluídos na remessa por já estarem vencidos.','', 1, 1, true, 'I');

   try
   	CobreBemXCtaReceber.GravaArquivoRemessa;

       //após gerar a remessa, vamos ler o arquivo recém criado
       //copiar da primeira linha o texto presente na posição 164-165-166 e verificar se é igual a 050
       //sendo, alteramos nesse mesmo campo para o texto 101
       //campo referente à versão do layout da remessa
       if FileExists(xCaminhoRemessa+XNomeRemessa) then
       begin
           try
               xRemessaCaixa := TStringList.Create;
               xRemessaCaixa.LoadFromFile(xCaminhoRemessa+XNomeRemessa);
               xLinhaRemessa := xRemessaCaixa[0];

               //verifica a versão do layout
               if xLinhaRemessa[164]+xLinhaRemessa[165]+xLinhaRemessa[166] = '050' then
               begin
                   xLinhaAtualizada := '';
                   //percorre a linha, caracter por caracter, adicionando o texto à uma variavel auxiliar
                   //para montarmos a linha atualizada. percorre até o ultimo caracter antes da versão
                   for xI := 1 To 163 do
                   begin
                       xLinhaAtualizada := xLinhaAtualizada + xLinhaRemessa[xI];
                   end;
                   //insere a versão atualizada
                   xLinhaAtualizada := xLinhaAtualizada + '101';

                   //segue preenchendo a linha até o final do filler
                   for xI := 167 To Length(xLinhaRemessa) do
                   begin
                       xLinhaAtualizada := xLinhaAtualizada + xLinhaRemessa[xI];
                   end;

                   xRemessaCaixa[0] := xLinhaAtualizada;//atualiza a linha com a versão nova
               end;
               
               xRemessaCaixa.SaveToFile(xCaminhoRemessa+XNomeRemessa);//salva o arquivo atualizado
           finally
               xRemessaCaixa.Free;//limpa da memoria
           end;
       end;       
   except
   	On E : Exception do
       begin
          raise Exception.Create('Não foi possível gerar a remessa. ' + #13 + E.Message);
       end;
   end;
   
   DMCONTA.IBT.CommitRetaining;
   
   txtRelatorioRetorno.Clear;
   txtRelatorioRetorno.Lines.Add('Nome do arquivo: '+XNomeRemessa);
   
  	//Edmar - 31/10/2013 - Seleciona o layout que o usuario escolheu e escreve para informação
  	case rdgLayoutArquivoRemessa.ItemIndex of
  		0 : txtRelatorioRetorno.Lines.Add('Layout: SIGCB240');
  		1 : txtRelatorioRetorno.Lines.Add('Layout: FEBRABAN240');
  		2 : txtRelatorioRetorno.Lines.Add('Layout: CNAB400');
  	else
  		txtRelatorioRetorno.Lines.Add('Layout: CBR454');
  	end;
   
   txtRelatorioRetorno.Lines.Add('Sequência: '+DMBANCO.TCtaCor.FieldByName('CONTREMESSA').AsString);

   txtRelatorioRetorno.Lines.Add('Data da remessa: '+IntToStr(Day)+'/'+IntToStr(Month)+'/'+IntToStr(Year));

   DMBANCO.TCtaCor.Edit;

   If DMBANCO.TCtaCor.FieldByName('CONTREMESSA').AsInteger<=0 Then
   	DMBANCO.TCtaCor.FieldByName('CONTREMESSA').AsInteger:=1
   Else
   	DMBANCO.TCtaCor.FieldByName('CONTREMESSA').AsInteger:=DMBANCO.TCtaCor.FieldByName('CONTREMESSA').AsInteger+1;

	DMBANCO.TCtaCor.Post;
   DMBANCO.IBT.CommitRetaining;
   FiltraRemessa;
end;

//Matheus - 15/01/2016 - Gera Remessa utilizando Acbr
Function TFCtaReceber.GeraRemessaAcbr: Boolean;
var
   xPrefixoNossoNum, xModalidade, xNumAgenciaBlt, xDigAgenciaBlt: String;
	xCodCedenteBlt, xDigCedenteBlt, xCodCarteiraBlt, xNossoNumBlt, xProxRemessa: String;
   xCpfCnpjExibicao, xNomeExibicao: String;
Begin
	xCodCtaCor := DMBANCO.TCtaCor.FieldByName('COD_CTACOR').AsInteger;
   FiltraTabela(DMBANCO.TAgencia, 'AGENCIA', 'COD_AGENCIA', DMBANCO.TCtaCor.FieldByName('COD_AGENCIA').AsString, '');
   
	// Edmar - 07/06/2016 - Verifica se a conta está configurada da nova forma.
   if (DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT_REG').AsString <> '') then
   begin
   	xPrefixoNossoNum := DMBANCO.TCtaCor.FieldByName('PREFIXO_NOSSONUM_REG').AsString;
       xModalidade := DMBANCO.TCtaCor.FieldByName('CODMODALIDADE_REG').AsString;
       xNumAgenciaBlt := DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT_REG').AsString;
       xDigAgenciaBlt := DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT_REG').AsString;
       xCodCedenteBlt := DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT_REG').AsString;
       xDigCedenteBlt := DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT_REG').AsString;
       xCodCarteiraBlt := DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT_REG').AsString;
       xNossoNumBlt := DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT_REG').AsString;
       xProxRemessa := DMBANCO.TCtaCor.FieldByName('contremessa_reg').AsString;
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
       xProxRemessa := DMBANCO.TCtaCor.FieldByName('contremessa').AsString;
   end;
       
   //Edmar - 26/08/2014 - Se foi cadastrado algum caminho para remessa, atribui
   if (DMBANCO.TCtaCor.FieldByName('CAMINHO_REMESSA').AsString <> '') then
   	xCaminhoRemessa := DMBANCO.TCtaCor.FieldByName('CAMINHO_REMESSA').AsString
   else
   	//Edmar - 26/08/2014 - Senão, usa o caminho padrão
		xCaminhoRemessa := 'C:\MZR\Arquivos\Remessa';

  	ACBrBoleto.DirArqRemessa := xCaminhoRemessa;

   DecodeDate(Date(), Year, Month, Day);
   //Edmar - 09/12/2013 - Testa qual banco que deseja emitir a remessa
   if DMBANCO.WAgencia.FieldByName('NUMBANC').AsString = '748' then//SICREDI
   begin
   	ACBrBoleto.Cedente.CodigoCedente := xCodCedenteBlt;// DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString;
      	ACBrBoleto.Cedente.Agencia := xNumAgenciaBlt; // DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString+'.'+DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
      	ACBrBoleto.Cedente.Conta := DMBANCO.TCtaCor.FieldByName('numctacor').AsString+'-'+DMBANCO.TCtaCor.FieldByName('DIGCTACOR').AsString;
	    xCodCedente := xCodCedenteBlt; // DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString;
      	XNomeRemessa :=xCodCedente+''+IntToStr(Day)+''+IntToStr(Month)+''+xProxRemessa+'.REM';
      	ACBrBoleto.NomeArqRemessa := XNomeRemessa;
   end;

   if DMBANCO.WAgencia.FieldByName('NUMBANC').AsString = '756' then
   begin // SICOOB
   	{
       case (DMBANCO.WAgencia.FieldByName('NUMBANC').AsInteger) of
      		//756: ACBrBoleto.Banco.TipoCobranca := cobBancoDoBrasilSicoob;
           756: ACBrBoleto.Banco.TipoCobranca := cobBancoob;
    		else
           	ShowMessage('Banco não encontrado!');
    	end;
       }
       if DMBANCO.TCtaCor.FieldByName('COBRANCA_BANCOOB').AsString = '1' then
       begin
           ACBrBoleto.Banco.TipoCobranca := cobBancoob;
           ACBrBoleto.LayoutRemessa := c240;
       end
       else begin
           ACBrBoleto.Banco.TipoCobranca := cobBancoDoBrasilSicoob;
           ACBrBoleto.LayoutRemessa := c240;
       end;

    	ACBrBoleto.Banco.Digito := 0;
    	ACBrBoleto.Banco.Numero;
       
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

       ACBrBoleto.Cedente.CNPJCPF := xCpfCnpjExibicao;
       ACBrBoleto.Cedente.Nome := xNomeExibicao;

       {if DMBANCO.TCtaCor.FieldByName('CPFCNPJ_BOLETO').AsString <> '' then
           ACBrBoleto.Cedente.CNPJCPF := DMBANCO.TCtaCor.FieldByName('CPFCNPJ_BOLETO').AsString
       else
           ACBrBoleto.Cedente.CNPJCPF := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;

       if DMBANCO.TCtaCor.FieldByName('NOME_EXIBICAO_BOLETO').AsString <> '' then
           ACBrBoleto.Cedente.Nome := DMBANCO.TCtaCor.FieldByName('NOME_EXIBICAO_BOLETO').AsString
       else
   	    ACBrBoleto.Cedente.Nome := DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString;}
       
    	ACBrBoleto.Cedente.Modalidade := xModalidade; // DMBANCO.TCtaCor.FieldByName('CODEMPRESABLT').AsString;
       if DMBANCO.TCtaCor.FieldByName('COBRANCA_BANCOOB').AsString = '1' then
       begin
           ACBrBoleto.Cedente.CodigoCedente := xCodCedenteBlt+xDigCedenteBlt;
           ACBrBoleto.Cedente.Agencia := xNumAgenciaBlt;
    	    ACBrBoleto.Cedente.AgenciaDigito := xDigAgenciaBlt;
       end
       else begin
           ACBrBoleto.Cedente.CodigoCedente := xCodCedenteBlt;
           ACBrBoleto.Cedente.Agencia := DMBANCO.TAgencia.FieldByName('NUMAGENCIA').AsString;
    	    ACBrBoleto.Cedente.AgenciaDigito := xDigAgenciaBlt;
       end;
    	ACBrBoleto.Cedente.Conta := DMBANCO.TCtaCor.FieldByName('NUMCTACOR').AsString;
    	ACBrBoleto.Cedente.ContaDigito := DMBANCO.TCtaCor.FieldByName('DIGCTACOR').AsString;
    	ACBrBoleto.Cedente.UF := 'PR';
	 	XNomeRemessa := 'CBR'+IntToStr(Year)+''+ConcatZero(IntToStr(Month), 2)+''+ConcatZero(IntToStr(Day), 2)+''+ConcatZero(xProxRemessa, 2)+'.REM';
    	ACBrBoleto.NomeArqRemessa := XNomeRemessa;
   end;

   if DMBANCO.WAgencia.FieldByName('NUMBANC').AsString = '104' then//CAIXA
   begin
       case (DMBANCO.WAgencia.FieldByName('NUMBANC').AsInteger) of
       	104 : ACBrBoleto.Banco.TipoCobranca := cobCaixaEconomica;
       	else
           	ShowMessage('Banco não encontrado!');
       end;

   	//Edmar - 26/08/2014 - Se foi cadastrado algum caminho para remessa, atribui
   	if (DMBANCO.TCtaCor.FieldByName('CAMINHO_REMESSA').AsString <> '') then
   		xCaminhoRemessa := DMBANCO.TCtaCor.FieldByName('CAMINHO_REMESSA').AsString
   	else
   		//Edmar - 26/08/2014 - Senão, usa o caminho padrão
			xCaminhoRemessa := 'C:\MZR\Arquivos\Remessa';

       ACBrBoleto.Banco.Digito := 0;
       ACBrBoleto.Banco.Numero;
   	ACBrBoleto.Cedente.Nome := DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString;
    	ACBrBoleto.Cedente.Modalidade := xModalidade; // DMBANCO.TCtaCor.FieldByName('CODEMPRESABLT').AsString;

       if xDigCedenteBlt {DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT').AsString} <> '' then
           ACBrBoleto.Cedente.CodigoCedente := xCodCedenteBlt+'-'+xDigCedenteBlt // DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString+'-'+DMBANCO.TCtaCor.FieldByName('DIGCODCEDENTEBLT').AsString
       else
       	ACBrBoleto.Cedente.CodigoCedente := xCodCedenteBlt; // DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString;

       ACBrBoleto.Cedente.Agencia := DMBANCO.WAgencia.FieldByName('numagencia').AsString;
		ACBrBoleto.Cedente.AgenciaDigito := '0';
    	ACBrBoleto.Cedente.Conta := DMBANCO.TCtaCor.FieldByName('NUMCTACOR').AsString;
    	ACBrBoleto.Cedente.ContaDigito := DMBANCO.TCtaCor.FieldByName('DIGCTACOR').AsString;
		ACBrBoleto.Cedente.UF := 'PR';       
		XNomeRemessa := 'E'+ConcatZero(IntToStr(Day), 2)+ConcatZero(xProxRemessa, 4)+'.REM' ;
    	ACBrBoleto.NomeArqRemessa := XNomeRemessa;
  	end;

   if DMBANCO.WAgencia.FieldByName('NUMBANC').AsString = '237' then//Bradesco
   begin
		ACBrBoleto.Cedente.CodigoCedente := ConcatZero(DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString, 15);
       ACBrBoleto.Cedente.Agencia := DMBANCO.WAgencia.FieldByName('numagencia').AsString+'-'+DMBANCO.TCtaCor.FieldByName('DIGAGENCBLT').AsString;
       ACBrBoleto.Cedente.Conta := ConcatZero(DMBANCO.TCtaCor.FieldByName('numctacor').AsString, 7)+'-'+DMBANCO.TCtaCor.FieldByName('DIGCTACOR').AsString;
	end;

   //Edmar - 26/08/2014 - Se foi cadastrado algum nome para remessa, atribui
   if DMBANCO.TCtaCor.FieldByName('NOME_REMESSA').AsString <> '' then
       XNomeRemessa := DMBANCO.TCtaCor.FieldByName('NOME_REMESSA').AsString+'.txt'
   else
   	//Edmar - 15/12/2014 - Se o banco for SICOOB
   	if DMBANCO.WAgencia.FieldByName('NUMBANC').AsString = '756' then//monta o nome da remessa personalizada
				XNomeRemessa := 'CBR'+IntToStr(Year)+''+ConcatZero(IntToStr(Month), 2)+''+ConcatZero(IntToStr(Day), 2)+''+ConcatZero(xProxRemessa, 2)+'.REM'
       else
       	if DMBANCO.WAgencia.FieldByName('NUMBANC').AsString = '237' then//Bradesco
				XNomeRemessa := 'CB'+ConcatZero(IntToStr(Day), 2)+ConcatZero(IntToStr(Month), 2)+ConcatZero(xProxRemessa, 2)+'.REM'
           else
           	if DMBANCO.WAgencia.FieldByName('NUMBANC').AsString = '104' then//caixa
					XNomeRemessa := 'E'+ConcatZero(IntToStr(Day), 2)+ConcatZero(xProxRemessa, 4)+'.REM'
               else
       			//Edmar - 26/08/2014 - Senão, monta a nome padrão para remessa
       			XNomeRemessa := '1'+IntToStr(Day)+ConcatZero(xProxRemessa, 4)+'.REM';

   //Edmar - 26/08/2014 - Se o arquivo já existir
   if FileExists(xCaminhoRemessa+XNomeRemessa) then
   	//Edmar - 26/08/2014 - Renomeia, colocando a data e a hora de modificação
		RenameFile(xCaminhoRemessa+XNomeRemessa, xCaminhoRemessa+XNomeRemessa+'_'+(FormatDateTime('dd-MM-yy', Date()))+'_'+(FormatDateTime('hh.MM', Now()))+'.txt');

   ACBrBoleto.NomeArqRemessa := XNomeRemessa;

   ACBrBoleto.DataArquivo := Date();
   xConcBltVencidos := '';
   ACBrBoleto.NumeroArquivo := StrToInt(xProxRemessa); // DMBANCO.TCtaCor.FieldByName('CONTREMESSA').AsInteger;
   DMCONTA.WParR.First;
   ACBrBoleto.ListadeBoletos.Clear;
   While not DMCONTA.WParR.Eof Do
   Begin
   	if DMCONTA.WParR.FieldByName('DTVENC').AsDateTime > Date() then
    	begin
       	GeraRemessaAcbrAdicionaTitulo(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger);
    	End
		else
       	xConcBltVencidos := xConcBltVencidos + DMCONTA.WParR.FieldByName('NUMBOLETO').AsString+', ';

    	DMCONTA.WParR.Next;
   End;

   if xConcBltVencidos <> '' then
   	Mensagem('A V I S O', 'Os boletos '+xConcBltVencidos+'não foram incluídos na remessa por já estarem vencidos.','', 1, 1, true, 'I');

   try
   	 ACBrBoleto.GerarRemessa(0);
   except
   end;

   DMCONTA.IBT.CommitRetaining;
   
   txtRelatorioRetorno.Clear;
   txtRelatorioRetorno.Lines.Add('Nome do arquivo: '+XNomeRemessa);
   
  	//Edmar - 31/10/2013 - Seleciona o layout que o usuario escolheu e escreve para informação
  	case rdgLayoutArquivoRemessa.ItemIndex of
  		0 : txtRelatorioRetorno.Lines.Add('Layout: SIGCB240');
  		1 : txtRelatorioRetorno.Lines.Add('Layout: FEBRABAN240');
  		2 : txtRelatorioRetorno.Lines.Add('Layout: CNAB400');
  	else
  		txtRelatorioRetorno.Lines.Add('Layout: CBR454');
  	end;
   
   txtRelatorioRetorno.Lines.Add('Sequência: '+xProxRemessa);

   txtRelatorioRetorno.Lines.Add('Data da remessa: '+IntToStr(Day)+'/'+IntToStr(Month)+'/'+IntToStr(Year));

   if StrToInt(xProxRemessa) <=0 Then
   	xProxRemessa := '1'
   else
   	if StrToInt(xProxRemessa) >= 99 then
   		xProxRemessa := '1'
   	else
    		xProxRemessa := IntToStr(StrToInt(xProxRemessa) + 1);

   try
   	MDO.Query.Close;
   	MDO.Query.SQL.Clear;
   	MDO.Query.SQL.Add(' UPDATE CTACOR SET ');
		if (DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT_REG').AsString <> '') then
   		MDO.Query.SQL.Add(' CTACOR.CONTREMESSA_REG = :REMESSA ')
   	else
   		MDO.Query.SQL.Add(' CTACOR.CONTREMESSA = :REMESSA ');
   	MDO.Query.SQL.Add(' WHERE CTACOR.COD_CTACOR = :CTACOR ');
   	MDO.Query.ParamByName('REMESSA').AsString := xProxRemessa;
   	MDO.Query.ParamByName('CTACOR').AsInteger := DMBANCO.TCtaCor.FieldByName('COD_CTACOR').AsInteger;
   	MDO.Query.ExecSQL;

   	MDO.Transac.CommitRetaining;
   except
   	MDO.Transac.RollbackRetaining;
       ShowMessage('Não foi possível atualizar a contagem da remessa.');
   end;
   FiltraRemessa;
End;

//Matheus - 15/01/2016 - Adiciona um Título a remessa utilizando ACBR
Procedure TFCtaReceber.GeraRemessaAcbrAdicionaTitulo(CODCTA : Integer);
var
   xNum, xNumFisc, diDias: String;
   XNUM_DOCUMENTO, NrTitulosStr : String;
   Year, Month, Day: word;
   xDados4, xDados1, xDados2: variant;
   xVlMulta, xVlJuros: Real;
   xEnderecoCompletoAux : String;
   Titulo : TACBrTitulo;
   I, NrTitulos : Integer;
   Convertido: Boolean;
   xCarteiraBlt: String;
begin
	try
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   DMFinanc.TAlx.Close;
   DMFinanc.TAlx.SQL.Clear;
   DMFinanc.TAlx.SQL.Add(' SELECT DISTINCT(PARCELACR.COD_PARCELACR), PARCELACR.NUMBOLETO, PARCELACR.DTVENC, PARCELACR.NOSSONUMBLT, PARCELACR.NUMBOLETO, PARCELACR.NUMFISC, ');
   DMFinanc.TAlx.SQL.Add(' CTARECEBER.DTLANC, PARCELACR.NUMPARC, PARCELACR.VALEXT, PARCELACR.VALOR, PARCELACR.DIAS_PROTESTO, PESSOA.BAIRRO, PESSOA.CEP, PESSOA.TELREL, PARCELACR.TEXTOBLT, ');
   DMFinanc.TAlx.SQL.Add(' PESSOA.CPFCNPJ, PESSOA.ENDNUMERO, PESSOA.ENDERECO, PESSOA.NOME AS SACADO, CTARECEBER.NUMDOC, CTARECEBER.TIPOGERADOR, CTARECEBER.COD_GERADOR, ');
   DMFinanc.TAlx.SQL.Add(' CTARECEBER.DTLANC, CIDADE.NOME AS CIDADE, ESTADO.UF_ESTADO, PARCELACR.MULTA, PARCELACR.JUROS, PARCELACR.VALOR_JUROSBOLETO, PARCELACR.VALOR_MULTABOLETO ');
   DMFinanc.TAlx.SQL.Add(' FROM PARCELACR ');
   DMFinanc.TAlx.SQL.Add(' JOIN CTARECEBER ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
   DMFinanc.TAlx.SQL.Add(' JOIN CLIENTE ON CLIENTE.COD_CLIENTE = CTARECEBER.COD_CLIENTE ');
   DMFinanc.TAlx.SQL.Add(' JOIN PESSOA ON PESSOA.COD_PESSOA = CLIENTE.COD_PESSOA ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CIDADE ON CIDADE.COD_CIDADE = PESSOA.COD_CIDADE ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN ESTADO ON ESTADO.COD_ESTADO = CIDADE.COD_ESTADO ');
   DMFinanc.TAlx.SQL.Add(' WHERE PARCELACR.COD_PARCELACR=:CODCTARECEBER ');
  	DMFinanc.TAlx.ParamByName('CODCTARECEBER').AsInteger:=XViewRef.FieldByName('COD_PARCELACR').AsInteger;
   DMFINANC.TAlx.Open;

	if not DMFINANC.TAlx.IsEmpty then
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

   	   //Edmar - 29/10/2013 - Filtra conta corrente
       DMBANCO.TCtaCor.Close;
       DMBANCO.TCtaCor.SQL.Clear;
       DMBANCO.TCtaCor.SQL.Add(' select * from ctacor where ');
       DMBANCO.TCtaCor.SQL.Add(' ctacor.cod_ctacor=:CODCTACOR');
       DMBANCO.TCtaCor.ParamByName('CODCTACOR').AsInteger:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
       DMBANCO.TCtaCor.Open;

   	   //Edmar - 29/10/2013 - Filtra agencia
       DMCONTA.TAlx.Close;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add(' select * from agencia where agencia.cod_agencia=:CODAGENCIA ');
       DMCONTA.TAlx.ParamByName('CODAGENCIA').AsInteger:=DMBANCO.TCtaCor.FieldByName('COD_AGENCIA').AsInteger;
       DMCONTA.TAlx.Open;

       //Edmar - 29/10/2013 - Filtra banco
       DMBANCO.TAlx.Close;
       DMBANCO.TAlx.SQL.Clear;
       DMBANCO.TAlx.SQL.Add(' select * from banco where banco.cod_banc=:CODBANCO ');
       DMBANCO.TAlx.ParamByName('CODBANCO').AsInteger:=DMCONTA.TAlx.FieldByName('COD_BANCO').AsInteger;
       DMBANCO.TAlx.Open;
       
		if DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT_REG').AsString <> '' then
       	xCarteiraBlt := DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT_REG').AsString
       else
       	xCarteiraBlt := DMBANCO.TCtaCor.FieldByName('CODCARTEIRABLT').AsString;
           
       //Matheus - 15/01/2016 - Cria um novo Título
       Titulo := ACBrBoleto.CriarTituloNaLista;
       XNUM_DOCUMENTO := TiraCaracter(TiraCaracter(Copy(TiraCaracter(xNumFisc+DMFinanc.TAlx.FieldByName('numboleto').AsString +':'+DMFINANC.TAlx.FieldByName('numparc').AsString, ':'), 0,11),'-'), '/');
       Titulo.NumeroDocumento := XNUM_DOCUMENTO;
       Titulo.Sacado.NomeSacado := AnsiUpperCase(TiraAcentos(DMFINANC.TAlx.fieldbyname('sacado').AsString));
         
       if (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger = 104) then
       begin
       	if (xCarteiraBlt = '01') then
           	Titulo.Carteira := 'SR' //SEM Registro
          	else
           	Titulo.Carteira := 'RG'; //COM Registro
          	end
		else
			Titulo.Carteira := xCarteiraBlt;

       Titulo.NossoNumero := DMFINANC.TAlx.FieldByName('NOSSONUMBLT').AsString;

       if Length(DMFINANC.TAlx.FieldByName('cpfcnpj').AsString) > 11 then
           Titulo.Sacado.Pessoa := pJuridica
       else
           Titulo.Sacado.Pessoa := pFisica; 
       Titulo.Sacado.CNPJCPF := DMFINANC.TAlx.FieldByName('cpfcnpj').AsString;

       if dmbanco.TAlx.FieldByName('numbanco').AsString = '104' then
       begin//caixa
           Titulo.EspecieDoc := 'DM';
           if (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '-1')
               AND (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '') then
           begin
               Titulo.DataProtesto := DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsDateTime;
           end
       end;
       xEnderecoCompletoAux := Copy(TiraAcentos(DMFINANC.TAlx.FieldByName('endereco').AsString), 0, 36-Length(Trim(DMFINANC.TAlx.FieldByName('ENDNUMERO').AsString)))+' N.'+DMFINANC.TAlx.FieldByName('ENDNUMERO').AsString;
       Titulo.Sacado.Logradouro := xEnderecoCompletoAux;
       Titulo.Sacado.Bairro := TiraAcentos(DMFINANC.talx.FieldByName('bairro').AsString);
       Titulo.Sacado.Cidade := TiraAcentos(dmfinanc.TAlx.FieldByName('cidade').AsString);
       Titulo.Sacado.UF := dmfinanc.TAlx.FieldByName('uf_estado').AsString;
       Titulo.Sacado.CEP := TiraCaracter(dmfinanc.TAlx.FieldByName('cep').AsString, '-');
       Titulo.DataDocumento := Date();
       Titulo.Vencimento := DMFinanc.TAlx.FieldByName('DTVENC').AsDateTime;
       Titulo.ValorDocumento := DMFinanc.TAlx.FieldByName('valor').AsCurrency;

       if DMFINANC.TAlx.FieldByName('JUROS').AsCurrency > 0 then
       begin
           Titulo.CodigoMora := '1';
           Titulo.DataMoraJuros := DMFinanc.TAlx.FieldByName('DTVENC').AsDateTime;
           Titulo.ValorMoraJuros := DMFinanc.TAlx.FieldByName('VALOR_JUROSBOLETO').AsCurrency;
       end
       else begin
           Titulo.CodigoMora := '0';
       end;

       if DMFinanc.TAlx.FieldByName('MULTA').AsCurrency > 0 then
       begin
           Titulo.CodigoMulta := cmValorFixo;
           Titulo.DataMulta := DMFinanc.TAlx.FieldByName('DTVENC').AsDateTime;
           Titulo.MultaValorFixo := true;
           Titulo.PercentualMulta := DMFinanc.TAlx.FieldByName('VALOR_MULTABOLETO').AsCurrency;
       end
       else begin
           Titulo.CodigoMulta := cmValorFixo;
       end;
       
       if (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '-1')
           and (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '') then
       begin
           Titulo.DataProtesto := IncDay(Titulo.Vencimento, DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsInteger);
           Titulo.TipoDiasProtesto := diCorridos;
       end;
       Titulo.TipoDesconto := tdNaoConcederDesconto;
       Titulo.TipoDesconto2 := tdNaoConcederDesconto; 

       DMCONTA.TParcCR.Close;
       DMCONTA.TParcCR.SQL.Clear;
       DMCONTA.TParcCR.SQL.Add('SELECT * FROM PARCELACR WHERE PARCELACR.COD_PARCELACR=:CODPAR');
       DMCONTA.TParcCR.ParamByName('CODPAR').AsInteger:=DMFINANC.TAlx.FieldByName('COD_PARCELACR').AsInteger;
		DMCONTA.TParcCR.Open;

       If Not DMCONTA.TParcCR.IsEmpty
       Then Begin
       	Try
           	DMCONTA.TParcCR.Edit;
           	DMCONTA.TParcCR.FieldByName('REMESSA').AsString:='PARC';
           	DMCONTA.TParcCR.Post;
           Except
           End;
       End;
   end;
   except

   end;
end;


Function TFCtaReceber.ProcessaRetornoAcbr: Boolean;
begin
	if OpenDialog1.Execute then
   begin

       case (DMBANCO.WAgencia.FieldByName('NUMBANC').AsInteger) of
        756 : ACBrBoleto.Banco.TipoCobranca := cobBancoob;
       else  ShowMessage('Banco não encontrado!');
       end;

       ACBrBoleto.Banco.Digito := 0;
       ACBrBoleto.Banco.Numero;
   	   ACBrBoleto.Cedente.CodigoCedente := DMBANCO.TCtaCor.FieldByName('nossonumblt').AsString;
       ACBrBoleto.Cedente.Nome := DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString;
       ACBrBoleto.Cedente.Agencia := DMBANCO.WAgencia.FieldByName('numagencia').AsString;
       ACBrBoleto.Cedente.Conta := DMBANCO.TCtaCor.FieldByName('numctacor').AsString;
       ACBrBoleto.Cedente.CodigoCedente := DMBANCO.TCtaCor.FieldByName('CODCEDENTEBLT').AsString;
       ACBrBoleto.Cedente.Agencia := DMBANCO.TCtaCor.FieldByName('NUMAGENCBLT').AsString;
       ACBrBoleto.Cedente.AgenciaDigito := '0';
       ACBrBoleto.Cedente.Conta := DMBANCO.TCtaCor.FieldByName('NUMCTACOR').AsString;
       ACBrBoleto.Cedente.ContaDigito := DMBANCO.TCtaCor.FieldByName('DIGCTACOR').AsString;
       ACBrBoleto.Cedente.UF := 'PR';

       ACBrBoleto.NomeArqRetorno := OpenDialog1.FileName;
       ACBrBoleto.LerRetorno;
   end;
end;

procedure TFCtaReceber.BitBtn9Click(Sender: TObject);
begin
  inherited;
	If Mensagem('Confirmação do usuário', 'Deseja realmente confirmar a entrega do arquivo remessa? ', '', 2, 3, False, 'c')=2
   Then Begin
       {
       DMCONTA.TAlx.Close;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add('Update ParcelaCr Set ParcelaCr.Remessa='+#39+'ENVIADO'+#39+' Where ParcelaCR.Remessa='+#39+'PARC'+#39);
       DMCONTA.TAlx.ExecSQL;
       DMCONTA.IBT.CommitRetaining;

       DMCONTA.TAlx.Close;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add('Update ParcelaCr Set ParcelaCr.Remessa='+#39+''+#39+' Where ParcelaCR.Remessa<>'+#39+'ENVIADO'+#39);
       DMCONTA.TAlx.ExecSQL;
       DMCONTA.IBT.CommitRetaining;
       }

       try
       	DMCONTA.WParR.First;
       	while not DMCONTA.WParR.Eof do
       	begin
           	MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' UPDATE PARCELACR SET PARCELACR.REMESSA = ''ENVIADO'' ');
               MDO.Query.SQL.Add(' WHERE (PARCELACR.COD_PARCELACR = :COD_PARCELA) ');
               MDO.Query.SQL.Add(' AND (PARCELACR.REMESSA = ''PARC'') ');
               MDO.Query.ParamByName('COD_PARCELA').AsInteger := DMCONTA.WParR.FieldByName('COD_PARCELACR').AsInteger;
               MDO.Query.ExecSQL;

       		DMCONTA.WParR.Next;
       	end;
			MDO.Transac.CommitRetaining;

       	FiltraRemessa;
       except
         On E : Exception do
         begin
         	ShowMessage('Não foi possível confirmar a remessa: '+E.Message);
         end;
       end;
   End;
end;

procedure TFCtaReceber.BitBtn12Click(Sender: TObject);
begin
  inherited;
   PRetorno.Visible:=False;
end;

procedure TFCtaReceber.BitBtn11Click(Sender: TObject);
begin
	Memo_Print(MRetorno.Lines);
End;

procedure TFCtaReceber.DBGRemessaDblClick(Sender: TObject);
begin
  inherited;
	If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMCONTA.WParR.FieldByName('COD_PARCELACR').AsString, '')=True
   Then Begin                   
   	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente recusar o envio da parcela '+ DMCONTA.WParR.FieldByName('NUMPARC').AsString+ '?' , '', 2, 3, False, 'c')=2
    	Then Begin
           DMCONTA.TParcCR.Edit;
           DMCONTA.TParcCR.FieldByName('REMESSA').AsString:='RECUSADO';
           DMCONTA.TParcCR.Post;
           DMCONTA.IBT.CommitRetaining;
           FiltraRemessa;
   	End;
   End;
end;

procedure TFCtaReceber.OutraVia1Click(Sender: TObject);
var
	xCodigoParcela: String;
begin
  inherited;
   If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMCONTA.WParR.FieldByName('cod_parcelacr').AsString, '')=True
   Then Begin
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add('select ctacor.usacobrebemx, parcelacr.cod_ctacor, parcelacr.tipoblt from ctacor ');
           DMFINANC.TAlx.SQL.Add(' left join parcelacr on parcelacr.cod_ctacor = ctacor.cod_ctacor ');
           DMFINANC.TAlx.SQL.Add(' where parcelacr.cod_parcelacr = :codparcela ');
           DMFINANC.TAlx.ParamByName('codparcela').AsString := DMCONTA.WParR.FieldByName('cod_parcelacr').AsString;
           DMFINANC.TAlx.Open;

           XCOD_CTACORBLT:= DMFINANC.TAlx.FieldByName('COD_CTACOR').AsInteger;

           //Edmar - 25/10/2013 - Imprimir segunda via pelo Zion
           if  (DMFINANC.TAlx.FieldByName('USACOBREBEMX').AsString ='0') or  (DMFINANC.TAlx.FieldByName('USACOBREBEMX').AsString = Null) or (DMFINANC.TAlx.FieldByName('USACOBREBEMX').AsString ='')
           then
           if (DMFINANC.TAlx.FieldByName('tipoblt').AsString) = 'R' then
            ImpBoletoRegistrado(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger, 2, false)
           else
           	ImpBoleto(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger, 2, false)
           else
           	//Edmar - 25/10/2013 - Imprimir segunda via pelo cobre bem
           	ImpBoletoCobreBem(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger, 2, false, false);
       
   End
   {Else Begin
       FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
	    If AbrirForm(TFCadCtacor, FCadCtaCor, 1) = 'Selected'
       Then Begin
           XCOD_CTACORBLT:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
           //Edmar - 25/10/2013 - Imprimir segunda via pelo Zion
           if  DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString ='0'
           then
           	ImpBoleto(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger, 2, false)
           else
           //Edmar - 25/10/2013 - Imprimir segunda via pelo cobre bem
           ImpBoletoCobreBem(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger, 2, false, false);
       End}
    	Else Begin
       	XCOD_CTACORBLT:=-1;
		end;
    CBJUROS.Checked := false;
end;

//painel para gravar texto complementar do boleto fica visível
procedure TFCtaReceber.NovoBoleto1Click(Sender: TObject);
var
	xVlMulta: Real;
   xVlJuros: Real;
begin
  inherited;
	XCarne:=False;
	FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
	if AbrirForm(TFCadCtacor, FCadCtaCor, 1) = 'Selected' then
   begin
		PTextoBlt.Visible:=True;
       CbDefineQuant.Checked := False;
       cbProtesto.Checked := False;
       edDiasProtesto.Text := '';
       edDiasProtesto.Enabled := False;
       FiltraTabela(DMBANCO.TCtaCor, 'CTACOR', 'COD_CTACOR', DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString, '');

       //if DMBANCO.TCtaCor.FieldByName('BLT_REGISTRADO').AsString = '1' then
       CBBoletoRegistrado.Checked := True;
       {else
       	CBBoletoRegistrado.Checked := False;}

       //Alimenta variaveis auxiliares para montar o texto de instruções ao caixa
       XInstrucPadraoBlt := DMBANCO.TCtaCor.FieldByName('INSTRUBOLETO').AsString;

       //Repassa o texto para o memo
       TMTextoBlt.Text := XInstrucPadraoBlt;

		//Edmar - 20/05/2015 - Se na conta corrente estiver protesto automatico, check a caixa de seleção
       if DMBANCO.TCtaCor.FieldByName('PROTAUT').AsString = '1' then
       	cbProtesto.Checked := True;             
       edDiasProtesto.Text := DMBANCO.TCtaCor.FieldByName('DIASPROT').AsString;

       //Edmar - 08/06/2015 - Filtra buscando a parcela
       FiltraTabela(DMFINANC.TAlx, 'PARCELACR', 'COD_PARCELACR', XViewRef.FieldByName('COD_PARCELACR').AsString, '');
       //realiza o calculo de multa e juros
       if DMMACS.TLoja.FieldByName('MULTA').AsCurrency > 0 then//Edmar - 11/05/2015 - Calcula o valor da multa para o boleto
       	xVlMulta := DMFinanc.TAlx.FieldByName('VALOR').AsCurrency * (DMMACS.TLoja.FieldByName('MULTA').AsCurrency / 100)
       else
			xVlMulta := 0;

       if DMMACS.TLoja.FieldByName('JUROS').AsCurrency > 0 then//Calcula o valor diario de juros
          xVlJuros := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency + xVlMulta) * (DMMACS.TLoja.FieldByName('JUROS').AsCurrency / 100)) / 30
       else
			  xVlJuros := 0;

          MMJurosMultas.Text := 'Cobrar juros de R$ '+FormatFloat('0.00', xVlJuros)+' por dia de atraso'+#13#10+'Cobrar multa de R$ '+FormatFloat('0.00', xVlMulta)+' após o vencimento.';

      EdValorMulta.ValueNumeric := DMMACS.TLoja.FieldByName('MULTA').AsFloat;
      EdValorJuros.ValueNumeric := DMMACS.TLoja.FieldByName('JUROS').AsFloat; 

		  PTextoBlt.BringToFront;
  	end
	else begin
       XCOD_CTACORBLT:=-1;
	end;
end;

//grava texto complementar do boleto e chama a impressão do mesmo
procedure TFCtaReceber.BtnGravaTextoBltClick(Sender: TObject);
begin
  inherited;
  	//Edmar - 19/05/2015 - valida de está protestando e foi informado a qtde de dias
  	if (cbProtesto.Checked) AND (edDiasProtesto.Text = '') then
   begin
   	MessageDlg('Por favor informe a quantidade de dias para o protesto.', mtWarning, [mbOK], 0);
       Exit;
   end;

   FMenu.XVALORMULTA := EdValorMulta.ValueNumeric;
   FMenu.XVALORJUROS := EdValorJuros.ValueNumeric;

   if CBBoletoRegistrado.Checked then
       FMenu.XTIPOBOLTO:='R'
   else
       FMenu.XTIPOBOLTO:='N';

   if CBJUROS.Checked then
   begin
      FMenu.XAPLICAMULTA := 'N';
      FMenu.XVALORMULTA := 0;
      FMenu.XVALORJUROS := 0;            
   end
   else
      FMenu.XAPLICAMULTA := 'S';

   {if (EdValorMulta.ValueNumeric = DMMACS.TLoja.FieldByName('MULTA').AsFloat) then
      FMenu.XVALORMULTA := 0;
   if (EdValorJuros.ValueNumeric = DMMACS.TLoja.FieldByName('JUROS').AsFloat) THEN
      FMenu.XVALORJUROS := 0;}

   MDO.QAlx1.Close;
   MDO.QAlx1.SQL.Clear;
   MDO.QAlx1.SQL.Add(' UPDATE PARCELACR SET PARCELACR.MULTA = :MULTA, PARCELACR.JUROS = :JUROS ');
   if CbDefineQuant.Checked = true then
   begin
       MDO.QAlx1.SQL.Add('WHERE PARCELACR.COD_CTARECEBER = :COD');
       MDO.QAlx1.ParamByName('COD').AsInteger := DMCONTA.WParR.FieldByName('COD_CTARECEBER').AsInteger;
   end
   else begin
       MDO.QAlx1.SQL.Add(' WHERE PARCELACR.COD_PARCELACR = :COD ');
       MDO.QAlx1.ParamByName('COD').AsInteger := DMCONTA.WParR.FieldByName('COD_PARCELACR').AsInteger;
   end;
   MDO.QAlx1.ParamByName('MULTA').AsString := FloatToString(FMenu.XVALORMULTA);
   MDO.QAlx1.ParamByName('JUROS').AsString := FloatToString(FMenu.XVALORJUROS);
   MDO.QAlx1.ExecSQL;
   try
       MDO.Transac.CommitRetaining;
   except
       MDO.Transac.RollbackRetaining;
   end;
   //Edmar - 19/05/2015 - Se estiver checkado significa que vai fazer impressão de vários boletos de uma vez.
   //neste caso, se for protestar os boletos, atualiza tudo que estiver ligado àquela Conta a Receber
   if CbDefineQuant.Checked then
   begin
   	try
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' UPDATE PARCELACR SET PARCELACR.DIAS_PROTESTO = :PROTESTO, PARCELACR.TEXTOBLT = :TXTBLT WHERE PARCELACR.COD_CTARECEBER = :CTARECEBER ');
           if cbProtesto.Checked then
           	MDO.Query.ParamByName('PROTESTO').AsString := edDiasProtesto.Text
           else
				MDO.Query.ParamByName('PROTESTO').AsString := '-1';
           MDO.Query.ParamByName('TXTBLT').AsString := TMTextoBlt.Text;
           MDO.Query.ParamByName('CTARECEBER').AsInteger := XViewRef.FieldByName('COD_CTARECEBER').AsInteger;
           MDO.Query.ExecSQL;

           MDO.Transac.CommitRetaining;
       except
           MDO.Transac.RollbackRetaining;
           MessageDlg('O boleto não foi atualizado com os dias do Protesto.', mtWarning, [mbOK], 0);
     end;
   end;

  	//filtra parcelas para editar o texto do boleto
	 DMBANCO.TCtaCor.Close;
   DMBANCO.TCtaCor.SQL.Clear;
   DMBANCO.TCtaCor.SQL.Add(' Select * from ctacor where ctacor.cod_ctacor=:codigo ');
   DMBANCO.TCtaCor.ParamByName('codigo').AsInteger:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
   DMBANCO.TCtaCor.Open;
   If CbDefineQuant.Checked=True
   Then Begin
       //Paulo 24/01/2011: VErifica se é boleto ou carnê e imprimi o solicitado
       if not XCarne then
       begin
           //Alex - 01/04/2009: Seleciona todas as parcelas relacionadas para enviar para impressão
           {If Mensagem('Confirmação do usuário', 'Os Boletos serão enviados diretamente para impressora padrão. Confirma?', '', 2, 3, False, 'c')=2
           Then Begin }
               If FiltraTabela(DMESTOQUE.Alx, 'vwparcr', 'cod_ctareceber', XViewRef.FieldByName('cod_ctareceber').AsString, 'AND (FECH <> ''S'') ')=True
               Then Begin
                   PTextoBlt.Visible:=False;
                   PTextoBlt.SendToBack;
                   XCOD_CTACORBLT:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;

                   DMESTOQUE.Alx.First;
                   If (DMESTOQUE.Alx.FieldByName('FECH').AsString<>'S') or (DMESTOQUE.Alx.FieldByName('FECH').AsString='')
                   Then Begin
                      FiltraTabela(XViewRef, 'vwparcr', 'cod_parcelacr', DMESTOQUE.Alx.FieldByName('cod_parcelacr').AsString, '');
                      FiltraTabela(DMCONTA.TParcCR, 'parcelacr', 'cod_parcelacr', XViewRef.FieldByName('cod_parcelacr').AsString, '');
                      
                      //Edmar - 25/10/2013 - Imprime boleto pelo sistema Zion
                      if  (DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString ='0')  or  (DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString = '')then
                      begin
                        if FMenu.XTIPOBOLTO = 'R' then
                           ImpBoletoRegistrado(XViewRef.FieldByName('cod_ctareceber').AsInteger, 1, true)
                        else
                           ImpBoleto(XViewRef.FieldByName('cod_ctareceber').AsInteger, 1, true);
                      end;

                      //Edmar - 25/10/2013 - Imprime boleto pelo Cobre Bem
                      if  DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString ='1' then
                      begin
                          if FMenu.XTIPOBOLTO = 'R' then
                              ImpBoletoCobreBem(XViewRef.FieldByName('cod_ctareceber').AsInteger, 1, true, true)
                          else
                              ImpBoletoCobreBem(XViewRef.FieldByName('cod_ctareceber').AsInteger, 1, true, false);
                      end;
                   End;
               End
               Else Begin
                   MessageDlg('NENHUMA PARCELA FOI ENCONTRADA', mtWarning, [mbOK], 0);
               End;
               XCarne:=False;
           //End;
       end
       else begin
			//GravaTextoCarne(Sender);
           PTextoBlt.Visible:=False;
           PTextoBlt.SendToBack;
           XCOD_CTACORBLT:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;

           FiltraTabela(DMCONTA.TParcCR, 'parcelacr', 'cod_parcelacr', XViewRef.FieldByName('cod_parcelacr').AsString, '');
           
			    if (DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString = '0') OR (DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString = '') then
            if FMenu.XTIPOBOLTO = 'R' then
           	  ImpCarneRegistrado(DMCONTA.WParR.FieldByName('cod_ctareceber').AsInteger, 1, 1)
            else
              ImpCarne(DMCONTA.WParR.FieldByName('cod_ctareceber').AsInteger, 1, 1);

       	    //Edmar - 25/10/2013 - Imprime carne pelo Cobre Bem
       	    if DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString = '1' then
       	    begin
       		    if FMenu.XTIPOBOLTO = 'R' then
           		  ImpCarneCobreBem(DMCONTA.WParR.FieldByName('cod_ctareceber').AsInteger, 1, 1, 1, false, true)
       		    else
           		  ImpCarneCobreBem(DMCONTA.WParR.FieldByName('cod_ctareceber').AsInteger, 1, 1, 1, false, false);
       	    end;
      end;
   End
   Else Begin
		  FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'cod_parcelacr',DMCONTA.WParR.FieldByName('COD_PARCELACR').AsString, '');

   	  DMCONTA.TParcCR.Edit;
		  DMCONTA.TParcCR.FieldByName('TEXTOBLT').AsString:=TMTextoBlt.Text;

      if not CbDefineQuant.Checked then
      begin
       	if cbProtesto.Checked then
          DMCONTA.TParcCR.FieldByName('DIAS_PROTESTO').AsString := edDiasProtesto.Text
        else
          DMCONTA.TParcCR.FieldByName('DIAS_PROTESTO').AsString := '-1';
      end;

    	DMCONTA.TParcCR.Post;
    	DMCONTA.IBT.CommitRetaining;

      PTextoBlt.Visible:=False;
      PTextoBlt.SendToBack;
      //chama impressão do boleto
    	XCOD_CTACORBLT:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
      //Paulo 24/01/2011: Verifica se é boleto ou carnê e imprimi o solicitado
    	if not XCarne then
    	begin
       	//Edmar - 25/10/2013 - Imprime boleto pelo sistema Zion
        if  (DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString ='0') or (DMBANCO.TCtaCor.FieldByName('usacobrebemx').AsString = '') then
        begin
          if FMenu.XTIPOBOLTO = 'R' then
            ImpBoletoRegistrado(XViewRef.FieldByName('cod_parcelacr').AsInteger, 0, true)
          else
            ImpBoleto(XViewRef.FieldByName('cod_parcelacr').AsInteger, 0, true);
        End;

        //Edmar - 25/10/2013 - Imprime boleto pelo Cobre Bem
        if  DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString ='1' then
        begin
          if FMenu.XTIPOBOLTO = 'R' then
            ImpBoletoCobreBem(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger, 0, false, true)
          else
            ImpBoletoCobreBem(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger, 0, false, false);
        end;
    	end
    	else begin
       	if  (DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString ='0')
           	or (DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString = '') then
           begin
           	if FMenu.XTIPOBOLTO = 'R' then
             		ImpCarneRegistrado(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger, 0, 1)
           	else
             		ImpCarne(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger, 0, 1);
           end;

      		//Edmar - 25/10/2013 - Imprime carne pelo Cobre Bem
      		if  DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString ='1' then
      		begin
        		if FMenu.XTIPOBOLTO = 'R' then
          			ImpCarneCobreBem(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger, 0, 1, 1, false, true)
        		else
          			ImpCarneCobreBem(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger, 0, 1, 1, false, false);
      		end;
      end;
   End;
   XCarne:=False;
   CBJUROS.Checked := false;
end;


procedure TFCtaReceber.EdCliCobKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key=VK_Down Then
        XViewRef.Next;
    If Key=VK_Up Then
        XViewRef.Prior;
end;

procedure TFCtaReceber.EdCliCobKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
      EdNumBoleto.Text:=EdNumBoletoB.Text;
	   FiltraParcelaEditcob('CLIENTECOB');
    End;
    If Key=#27 Then
	   FiltraParcelaEdit('CLIENTECOB');
end;

procedure TFCtaReceber.EdDocCobKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key=VK_Down Then
        XViewRef.Next;
    If Key=VK_Up Then
        XViewRef.Prior;
end;

procedure TFCtaReceber.EdLancCobKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key=VK_Down Then
        XViewRef.Next;
    If Key=VK_Up Then
        XViewRef.Prior;
end;

procedure TFCtaReceber.EdVencCobKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key=VK_Down Then
        XViewRef.Next;
    If Key=VK_Up Then
        XViewRef.Prior;
end;

procedure TFCtaReceber.EdDevCobKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key=VK_Down Then
        XViewRef.Next;
    If Key=VK_Up Then
        XViewRef.Prior;
end;

procedure TFCtaReceber.EdDocCobKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
	   FiltraParcelaEditCob('NUMPARC');
    End;
    If Key=#27 Then
	   FiltraParcelaEditCob('ONUMPARC');
end;

procedure TFCtaReceber.MarcarcomoSCPC1Click(Sender: TObject);
begin
  inherited;
  	//Edmar - 05/02/2015 - Se a aba de SCPC estiver ativa, muda a query que ele busca o codigo da parcela para desmarcar a conta
  	if TCConsultContas.ActiveTab = 5 then
   begin
		if FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR',  DMMACS.TALX.FieldByName('COD_PARCELACR').AsString, '') then
       begin
           DMCONTA.TParcCR.Edit;
           DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString;
           If DMCONTA.TParcCR.FieldByName('SCPC').AsString<>'1' Then
               DMCONTA.TParcCR.FieldByName('SCPC').AsString:='1'
           Else
               DMCONTA.TParcCR.FieldByName('SCPC').AsString:='0';
           DMCONTA.TParcCR.Post;
           DMCONTA.IBT.CommitRetaining;

           FiltraSPC('ONUMPARC');
       end;
   end
   else begin
   	//caso contrario, usa o metodo padrão
   	if FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMCONTA.WParR.FieldByName('COD_PARCELACR').AsString, '') then
       begin
           DMCONTA.TParcCR.Edit;
           DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString;
           If DMCONTA.TParcCR.FieldByName('SCPC').AsString<>'1' Then
               DMCONTA.TParcCR.FieldByName('SCPC').AsString:='1'
           Else
               DMCONTA.TParcCR.FieldByName('SCPC').AsString:='0';
           DMCONTA.TParcCR.Post;
           DMCONTA.IBT.CommitRetaining;

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
       end;
   end;
end;

procedure TFCtaReceber.EdCod_InternoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
      EDFornecedor.Text:=EdFornecBaixa.Text;
	   FiltraParcelaEdit('CODIGO');
    End;
    If Key=#27 Then
	   FiltraParcelaEdit('OCODIGO');
end;

procedure TFCtaReceber.DBGridCadastroPadraoCellClick(Column: TColumn);
begin
  inherited;
   CalcTotAcum;
end;

procedure TFCtaReceber.DBGridCadastroPadraoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   CalcTotAcum;
end;

procedure TFCtaReceber.EdNumBoletoBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key=VK_Down Then
        CalcTotAcum;
    If Key=VK_Up Then
        CalcTotAcum;
end;

procedure TFCtaReceber.EdNumFiscalBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key=VK_Down Then
		CalcTotAcum;
    If Key=VK_Up Then
       CalcTotAcum;
end;

procedure TFCtaReceber.EdHistoricoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
		CalcTotAcum;
    End;
    If Key=#27 Then
       CalcTotAcum;
end;

procedure TFCtaReceber.Declarao1Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('REIMPDUP', 'M')=False Then
  		Exit;
  	XCODCTA:=XViewRef.FieldByName('COD_CTARECEBER').AsInteger;
  	ImpDupDec(XViewRef.FieldByName('COD_CTARECEBER').AsInteger, 1);
end;

procedure TFCtaReceber.Selecionada1Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('REIMPDUP', 'M')=False Then
  		Exit;
  ImpDuplicata(XViewRef.FieldByName('COD_CTARECEBER').AsInteger, 0);
end;

procedure TFCtaReceber.odas1Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('REIMPDUP', 'M')=False Then
  		Exit;
  	XCODCTA:=XViewRef.FieldByName('COD_CTARECEBER').AsInteger;
  	ImpDuplicata(XViewRef.FieldByName('COD_CTARECEBER').AsInteger, 1);
end;

procedure TFCtaReceber.AtaDtdeVencimento1Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('REIMPDUP', 'M')=False Then
  		Exit;
  XCODCTA:=XViewRef.FieldByName('COD_CLIENTE').AsInteger;
  ImpDuplicata(XViewRef.FieldByName('COD_CLIENTE').AsInteger, 2);
end;

procedure TFCtaReceber.AtaSelecionada1Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('REIMPDUP', 'M')=False Then
  		Exit;
  XCODCTA:=XViewRef.FieldByName('COD_PARCELACR').AsInteger;
  ImpDuplicata(XViewRef.FieldByName('COD_PARCELACR').AsInteger, 3);
end;

procedure TFCtaReceber.DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
	if (DMCONTA.WParR.FieldByName('scpc').AsString='1') or (DMCONTA.WParR.FieldByName('ANTECIPADO').AsString='1')then
   begin
  		DBGridCadastroPadrao.Canvas.Font.Color := clNavy;
       DBGridCadastroPadrao.Canvas.Font.Style:= [fsBold]; //Rodrigo 18/03/2015 - seta negrito para a fonte
		DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;

  if State = [] then
  begin
    if DMCONTA.WParR.Recno mod 2 = 1 then
      DBGridCadastroPadrao.Canvas.Brush.Color := $00EEEEEE
   else
      DBGridCadastroPadrao.Canvas.Brush.Color := clWhite;
  end;
  If DMCONTA.WParR.FieldByName('MARK').AsString='X'  Then
      DBGridCadastroPadrao.Canvas.Brush.Color := clMaroon;
  DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFCtaReceber.GrandeComValorPago1Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('REIMPDUP', 'M')=False Then
  		Exit;
  FMenu.TIPOREL:='';
  ImpRecibo(XViewRef.FieldByName('COD_PARCELACR').AsInteger);
end;

procedure TFCtaReceber.GrandecomValorPagocomLogo1Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('REIMPDUP', 'M')=False Then
   	Exit;
   FMenu.TIPOREL:='RECIBOVALORLOGO';
   ImpReciboCR(XViewRef.FieldByName('COD_PARCELACR').AsInteger);
end;

procedure TFCtaReceber.GrandeComValorDevido1Click(Sender: TObject);
begin
  inherited;
  	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('REIMPDUP', 'M')=False Then
  		Exit;
  FMenu.TIPOREL:='RECIBOVALOR';
  ImpRecibo(XViewRef.FieldByName('COD_PARCELACR').AsInteger);
end;

procedure TFCtaReceber.Cupom1Coluna1Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('REIMPDUP', 'M')=False Then
  		Exit;
  ImpReciboExt(XViewRef.FieldByName('COD_PARCELACR').AsInteger);
end;

procedure TFCtaReceber.ValorPago1Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('REIMPDUP', 'M')=False Then
  		Exit;
  FMenu.TIPOREL:='';
  ImpReciboExtDuasVias(XViewRef.FieldByName('COD_PARCELACR').AsInteger);

end;

procedure TFCtaReceber.ValorDevido1Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('REIMPDUP', 'M')=False Then
  		Exit;
  FMenu.TIPOREL:='VALORDEVIDO';
  ImpReciboExtDuasVias(XViewRef.FieldByName('COD_PARCELACR').AsInteger);

end;

procedure TFCtaReceber.EDFornecedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If Key=#13
   Then Begin
       FiltraSPC('PESSOA');
   End;
   If Key=#27
   Then Begin
       FiltraSPC('OPESSOA');
   End;
  

end;

procedure TFCtaReceber.EDDTLancSCPCKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
	    FiltraSPC('DTLANC');
	 End;
    If Key=#27
    Then Begin
	    FiltraSPC('ODTLANC');
    End;        
end;

procedure TFCtaReceber.EdDocSCPCKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
      	EdNumParc.Text:=EdDocSCPC.Text;
	   	FiltraSPC('NUMPARC');
    End;
    If Key=#27
    Then Begin
	    FiltraSPC('ONUMPARC');
    End;
end;

procedure TFCtaReceber.EdBoletoSCPCKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
       EdNumBoleto.Text:=EdBoletoSCPC.Text;
	    FiltraParcelaEditCob('NUMBOLETO');
    End;
    If Key=#27
    Then Begin
	    FiltraParcelaEditCob('ONUMBOLETO');
    End;
end;

procedure TFCtaReceber.EdFiscSCPCKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
       //EdNumFiscal.Text:=EdFiscSCPC.Text;
	    FiltraParcelaEditCob('NUMFISCAL');
	 End;
    If Key=#27
    Then Begin
	    FiltraParcelaEditCob('ONUMFISCAL');
    End;
end;

procedure TFCtaReceber.EdDTVencSCPCKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
	   Try
      		StrToDate((EdDTVencSCPC.Text));
	   		FiltraSPC('DTVENC');
      Except
      End;
    End;
    If Key=#27 Then
	   FiltraSPC('ODTVENC');
end;

Procedure TFCtaReceber.ImpReciboCR(CODCTA:INTEGER);
Begin
   //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   FiltraTabela(DMMacs.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');

	//PREPARA SQL
   If XTipo='R'
   Then Begin
	   DMFinanc.TAlx.Close;
	   DMFinanc.TAlx.SQL.Clear;
	   DMFinanc.TAlx.SQL.Add('SELECT distinct(parcelacr.cod_parcelacr), parcelacr.dtvenc AS VENCIMENTO, parcelacr.valorpg, parcelacr.numparc, parcelacr.valExt, parcelacr.valor, ');
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
         		If FMenu.TIPOREL='RECIBOVALORLOGO' Then
                   QRReciboValor_LogoEmpresa.Preview;
         end;
      end;
   End;
End;

procedure TFCtaReceber.ComdadosdePessoaFsica1Click(Sender: TObject);
begin
  inherited;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   	DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP1').AsString:= 'Filtros:' + #13 + 'Sem intervalo de datas' + #13 + 'Cliente: ' + DMCONTA.WParR.FieldByname('nome').AsString + ' - Todas as contas pendentes';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

	   DMCONTA.TRel.Close;
	   DMCONTA.TRel.SQL.Clear;
	   DMCONTA.TRel.SQL.Add(' select pessoa.nome, vwparcr.dtvenc, vwparcr.numparc, cidade.nome as CIDADE, pessoa.bairro, pessoa.cep, pessoaf.rg, vwparcr.numfisc, pessoaf.emp_trab, pessoaf.emp_conj, pessoa.dtnasc AS NASCIMENTO, vwparcr.valor, vwparcr.dtdebito, vwparcr.fech, ');
	   DMCONTA.TRel.SQL.Add(' vwparcr.nome, parcelacr.aplicjur, pessoa.telrel, vwparcr.dtlanc, vwparcr.numdoc, cliente.multa AS MULTACLI, cliente.juro AS JUROCLI, pessoa.vlrcredito,');
	   DMCONTA.TRel.SQL.Add(' pessoaf.nome_pai, pessoaf.nome_mae, pessoaf.nome_conj, pessoa.endereco, pessoa.endnumero, cliente.cod_interno, ');
      DMCONTA.TRel.SQL.Add(' pessoa.cpfcnpj, pessoaj.razao_social, pessoaj.insc_est, cliente.informacao ');
	   DMCONTA.TRel.SQL.Add(' From vwparcr ');
	   DMCONTA.TRel.SQL.Add(' left join parcelacr on vwparcr.cod_parcelacr=parcelacr.cod_parcelacr ');
	   DMCONTA.TRel.SQL.Add(' left join ctareceber ON ctareceber.cod_ctareceber=vwparcr.cod_ctareceber ');
	   DMCONTA.TRel.SQL.Add(' Left Join Cliente on Cliente.Cod_Cliente=VWParcr.COD_CLIENTE ');
	   DMCONTA.TRel.SQL.Add(' left join pessoa on pessoa.cod_pessoa=cliente.cod_pessoa ');
	   DMCONTA.TRel.SQL.Add(' left join pessoaf on pessoaf.cod_pessoa=pessoa.cod_pessoa ');
      DMCONTA.TRel.SQL.Add(' left join pessoaj on pessoaj.cod_pessoa = pessoa.cod_pessoa ');
      DMCONTA.TRel.SQL.Add(' left join cidade on pessoa.cod_cidade = cidade.cod_cidade ');
	   DMCONTA.TRel.SQL.Add(' Where (vwparcr.cod_loja=:CODLOJA) And (vwparcr.COD_CLIENTE=:CODCLIENTE) ');
	   DMCONTA.TRel.SQL.Add(' And ((vwparcr.fech<>'+#39+'S'+#39+') OR (vwparcr.fech IS NULL)) ');
	   DMCONTA.TRel.SQL.Add(' order by vwparcr.DTVENC ');
	   DMCONTA.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
	   DMCONTA.TRel.ParamByName('CODCLIENTE').AsString:=DMCONTA.WParR.FieldByName('COD_CLIENTE').AsString;
	   DMCONTA.TRel.Open;
      If Not DMCONTA.TRel.IsEmpty
      Then Begin
      		DMMACS.TLoja.Edit;
      		DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Ctas Receber/Extrato de contas/Dados de Pessoa Física';
      		DMMACS.TLoja.Post;
      		DMMACS.Transaction.CommitRetaining;
      		FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
			FsRel02.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaRec_ExtCli.frf');
      		FsRel02.ShowReport;
  	   End;

end;

procedure TFCtaReceber.ComdadosdePessoaJurdica1Click(Sender: TObject);
begin
  inherited;
       Try
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add('update loja set loja.tmp1 = :tmp, loja.tmp2 = :tmp2 ');
           MDO.Query.ParamByName('tmp').AsString:= 'Filtros:' + #13 + 'Sem intervalo de datas' + #13 + 'Cliente: ' + DMCONTA.WParR.FieldByname('nome').AsString + ' - Todas as contas pendentes';
           MDO.Query.ParamByName('tmp2').AsString:= 'Financeiro/Ctas Receber/Extrato de contas/Dados de Pessoa Jurídica';
           MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;
           DMMACS.Transaction.CommitRetaining;
       Except
           MDO.Transac.RollbackRetaining;
           DMMACS.Transaction.RollbackRetaining;
       End;

      FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');       
	   DMCONTA.TRel.Close;
	   DMCONTA.TRel.SQL.Clear;
	   DMCONTA.TRel.SQL.Add(' select pessoa.nome, vwparcr.dtvenc, vwparcr.numparc, vwcidade.nome as CIDADE, vwcidade.uf AS UF_ESTADO, pessoa.bairro, pessoa.cep, ');
	   DMCONTA.TRel.SQL.Add(' pessoaf.rg, vwparcr.numfisc, pessoaf.emp_trab, pessoaf.emp_conj, pessoa.dtnasc AS NASCIMENTO, vwparcr.valor, vwparcr.dtdebito, vwparcr.fech, ');
	   DMCONTA.TRel.SQL.Add(' vwparcr.nome, parcelacr.aplicjur, pessoa.telrel, vwparcr.dtlanc, vwparcr.numdoc, cliente.multa AS MULTACLI, cliente.juro AS JUROCLI, pessoa.vlrcredito,');
	   DMCONTA.TRel.SQL.Add(' pessoaf.nome_pai, pessoaf.nome_mae, pessoaf.nome_conj, pessoa.endnumero, pessoa.endereco, cliente.cod_interno, ');
      DMCONTA.TRel.SQL.Add(' pessoa.cpfcnpj, pessoaj.razao_social, pessoaj.insc_est, cliente.informacao ');
	   DMCONTA.TRel.SQL.Add(' From vwparcr ');
	   DMCONTA.TRel.SQL.Add(' left join parcelacr on vwparcr.cod_parcelacr=parcelacr.cod_parcelacr ');
	   DMCONTA.TRel.SQL.Add(' left join ctareceber ON ctareceber.cod_ctareceber=vwparcr.cod_ctareceber ');
	   DMCONTA.TRel.SQL.Add(' Left Join Cliente on Cliente.Cod_Cliente=VWParcr.COD_CLIENTE ');
	   DMCONTA.TRel.SQL.Add(' left join pessoa on pessoa.cod_pessoa=cliente.cod_pessoa ');
	   DMCONTA.TRel.SQL.Add(' left join pessoaf on pessoaf.cod_pessoa=pessoa.cod_pessoa ');
      DMCONTA.TRel.SQL.Add(' left join pessoaj on pessoaj.cod_pessoa = pessoa.cod_pessoa ');
      DMCONTA.TRel.SQL.Add(' left join VWcidade on pessoa.cod_cidade = VWcidade.cod_cidade ');
	   DMCONTA.TRel.SQL.Add(' Where (vwparcr.cod_loja=:CODLOJA) And (vwparcr.COD_CLIENTE=:CODCLIENTE) ');
	   DMCONTA.TRel.SQL.Add(' And ((vwparcr.fech<>'+#39+'S'+#39+') OR (vwparcr.fech IS NULL)) ');
	   DMCONTA.TRel.SQL.Add(' order by vwparcr.DTVENC ');
	   DMCONTA.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
	   DMCONTA.TRel.ParamByName('CODCLIENTE').AsString:=DMCONTA.WParR.FieldByName('COD_CLIENTE').AsString;
	   DMCONTA.TRel.Open;
      If Not DMCONTA.TRel.IsEmpty
      Then Begin
			FsRel02.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaRec_PesJur.frf');
      		FsRel02.ShowReport;
  	   End;
end;

procedure TFCtaReceber.GrandeComValorFinal1Click(Sender: TObject);
begin
  inherited;
    //XCODPARC:=DMCONTA.TCtaR.fieldByName('NUMDOC').AsString;
    XCODPARC:=DMCONTA.WParR.FieldByName('COD_PARCELACR').AsString;
    XDOCPARC:='Dup';
    XDOCPARCSIM:=XCODPARC;
    XACUMULAVALOR:=0;
    DMCONTA.WParR.First;
    while XCODPARC <> DMCONTA.WParR.FieldByName('COD_PARCELACR').AsString do
    begin
       XDOCPARC:=(XDOCPARC +' ; Nº '+DMCONTA.WParR.FieldByName('NUMPARC').AsString+' Venc.: '+DMCONTA.WParR.FieldByName('DTVENC').AsString);
       DMCONTA.WParR.Next;
    end;
    XDOCPARC:=(XDOCPARC +' ; Nº '+DMCONTA.WParR.FieldByName('NUMPARC').AsString+' Venc.: '+DMCONTA.WParR.FieldByName('DTVENC').AsString);
    XACUMULAVALOR:=XTOTCORR;
  	 //EFETUA CONTROLE DE ACESSO
    If ControlAccess('REIMPDUP', 'M')=False Then
  		Exit;
    FMenu.TIPOREL:='RECIBOGFINAL';
    ImpRecibo(XViewRef.FieldByName('COD_PARCELACR').AsInteger);

end;

//passa o valor da label pra QRLabel do recibo
procedure TFCtaReceber.QRLabel85Print(sender: TObject; var Value: String);
begin
  inherited;
      QRLabel85.Caption:=LTotJurMultaCalc.Caption;
end;

procedure TFCtaReceber.QRBRecFinBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
       FMenu.Extenso.Numero:= FormatFloat('0.00', (XACUMULAVALOR));
       QRLabel85.Caption:=FMenu.Extenso.Numero;
       QRVLRSimples.Caption:=FMenu.Extenso.Numero;
       QrlImportanciaF.Caption:=UpperCase(FMenu.Extenso.Extenso);
       QrlVlrImportancia.Caption:=UpperCase(FMenu.Extenso.Extenso);
end;

procedure TFCtaReceber.MEBaixaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
       if key=13 then begin
           XViewRef.Close;
           XViewRef.SQL.Clear;
           XViewRef.SQL.Add('Select * From VWparCR  ');
           XViewRef.SQL.Add('Where (COD_LOJA = :CODLOJA) ');
           XViewRef.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
           XViewRef.SQL.Add(' And (DTDEBITO = :DTDEBITO) ORDER BY DTDEBITO, NOME');
           XViewRef.ParamByName('DTDEBITO').AsDate:=StrToDate(MEBAIXA.TEXT);
           XViewRef.SQL.Text;
           XViewRef.Open;
       end;
       if Key=27 then begin
           FiltraParcelaEdit('OCODIGO');
       end;
end;

//abre painel de seleção de conta e num de boleto, manual
procedure TFCtaReceber.Manual1Click(Sender: TObject);
begin
  inherited;
   //PASSA TODAS AS contas correntes existentes
   XCarne:=False;   
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('SELECT * from VWCTACOR');
   DMESTOQUE.Alx.Open;
	DMESTOQUE.Alx.First;

   CBContaCor.Items.Clear;
   While not DMESTOQUE.Alx.Eof do
   Begin
       CBContaCor.Items.Add(DMESTOQUE.Alx.FieldByName('DESCBANCO').AsString);
       DMESTOQUE.Alx.Next;
   End;

   PBoletoManual.BringToFront;
   PBoletoManual.Visible:=true;

end;

//controla pra que não possa fazer outra coisa antes de gravar ou cancelar a seleção de conta corrente
procedure TFCtaReceber.PBoletoManualExit(Sender: TObject);
begin
  inherited;
   if (PBoletoManual.Visible = true)
   then begin
       DBENumDoc.SetFocus;
   end;
end;

//fecha o painel de seleção manual de conta corrente
procedure TFCtaReceber.BitBtn14Click(Sender: TObject);
begin
  inherited;
   PBoletoManual.SendToBack;
   PBoletoManual.Visible:=False;
   DBENumDoc.Clear;
end;

//grava a conta corrente da parcela, sem a geração de boleto pelo sistema
procedure TFCtaReceber.BtnGravaClick(Sender: TObject);
begin
  inherited;
           //filtra view para selecionar conta corrente
           FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', 'cod_ctacor','', 'descbanco = ' +#39 +CBContaCor.Text+#39);

           //atribui a variavel xcodparc o registro no banco que sera alterado
           XCODPARC:=DMCONTA.WParR.FieldByName('COD_PARCELACR').AsString;

           if FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'numboleto','', '(numboleto = '+#39 +DBENumDoc.Text+#39+ ')and (cod_ctacor =' +#39 + DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+')') = false
           then begin
             //filtra tabela de parcelas a receber par achar o registro que sera alterado
             FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'cod_parcelacr','', 'cod_parcelacr = ' +#39 +XCODPARC+#39);

             //edita o registro selecionado, incluindo a ele um numero de boleto e uma conta corrente
             DMCONTA.TParcCR.Edit;
             DMCONTA.TParcCR.FieldByName('NUMBOLETO').AsCurrency := StrToFloat(DBENumDoc.Text);
             DMCONTA.TParcCR.FieldByName('COD_CTACOR').AsCurrency := DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsCurrency;
             DMCONTA.TParcCR.Post;
             DMCONTA.IBT.CommitRetaining;

             DBENumDoc.Clear;
             CBContaCor.Clear;

             PBoletoManual.SendToBack;
             PBoletoManual.Visible:=False;

             //atualizar grid 
             TCConsultContas.OnTabChanged(SENDER);

           end
           else begin
             Mensagem('   A T E N Ç Ã O   ', 'Já existe este numero de boleto nesta mesma conta corrente', '', 1, 1, false, 'A')
           end;


end;

procedure TFCtaReceber.DBCOBRANCAKeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;

end;



procedure TFCtaReceber.GrandeSemCorreo1Click(Sender: TObject);
begin
  inherited;
    XCODPARC:=DMCONTA.WParR.FieldByName('COD_PARCELACR').AsString;
    XDOCPARC:='Dup';
    XDOCPARCSIM:=XCODPARC;
    XACUMULAVALOR:=0;
    DMCONTA.WParR.First;
    while XCODPARC <> DMCONTA.WParR.FieldByName('COD_PARCELACR').AsString do
    begin
       XDOCPARC:=(XDOCPARC +' ; Nº '+DMCONTA.WParR.FieldByName('NUMPARC').AsString+' Venc.: '+DMCONTA.WParR.FieldByName('DTVENC').AsString);
       XACUMULAVALOR:=XACUMULAVALOR + StrToFloat(DMCONTA.WParR.FieldByName('VALOR').AsString);
       DMCONTA.WParR.Next;
    end;
    XDOCPARC:=(XDOCPARC +' ; Nº '+DMCONTA.WParR.FieldByName('NUMPARC').AsString+' Venc.: '+DMCONTA.WParR.FieldByName('DTVENC').AsString);
    XACUMULAVALOR:=XACUMULAVALOR + StrToFloat(DMCONTA.WParR.FieldByName('VALOR').AsString);
  	 //EFETUA CONTROLE DE ACESSO
    If ControlAccess('REIMPDUP', 'M')=False Then
  		Exit;
    FMenu.TIPOREL:='RECIBOGSEMCORRECAO';
    ImpRecibo(XViewRef.FieldByName('COD_PARCELACR').AsInteger);
end;


procedure TFCtaReceber.DBCOBRANCAExit(Sender: TObject);
begin
  inherited;
   If DBCOBRANCA.Text = 'Cartão'
   Then Begin
        RBDuplicata.Checked := False;
        RBBoleto.Checked := False;    
   End;

  If DBCOBRANCA.Text = 'Cartão'
  Then Begin
      edNumeroCartao.Visible := True;
      lbNumeroCartao.Visible := True;
  End
  Else begin
      edNumeroCartao.Visible := False;
      lbNumeroCartao.Visible := False;
      edNumeroCartao.Text := '';
  End;
end;

procedure TFCtaReceber.DBGSLAVEDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // GRID ZEBRADA
  if State = [] then
  begin
    if DMCONTA.WParR.Recno mod 2 = 1 then
      DBGSLAVE.Canvas.Brush.Color := $00EEEEEE
   else
      DBGSLAVE.Canvas.Brush.Color := clWhite;
  end;
  DBGSLAVE.DefaultDrawColumnCell(Rect, DataCol, Column, State)
end;

procedure TFCtaReceber.DBGSLAVEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // CTRl+S salvar layout grid
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGSLAVE.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ctasReceberSlave.lgm');
       Mensagem('MZR Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('MZR Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFCtaReceber.DBGMestreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // CTRl+S salvar layout grid
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGMestre.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ctasReceberMestre.lgm');
       Mensagem('MZR Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('MZR Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFCtaReceber.DBGMestreDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // GRID ZEBRADA
  if State = [] then
  begin
    if DMCONTA.TCtaR.Recno mod 2 = 1 then
      DBGMestre.Canvas.Brush.Color := $00EEEEEE
   else
      DBGMestre.Canvas.Brush.Color := clWhite;
  end;
  DBGMestre.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFCtaReceber.DBGridCadastroPadraoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ctasReceber.lgm');
       Mensagem('MZR Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('MZR Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFCtaReceber.DBGRemessaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // GRID ZEBRADA
  if State = [] then
  begin
    if DMCONTA.WParR.Recno mod 2 = 1 then
      DBGRemessa.Canvas.Brush.Color := $00EEEEEE
   else
      DBGRemessa.Canvas.Brush.Color := clWhite;
  end;
  DBGRemessa.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFCtaReceber.DBGRemessaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGRemessa.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ctasReceberRemessas.lgm');
       Mensagem('MZR Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('MZR Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFCtaReceber.DBGBAIXADASDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // GRID ZEBRADA
  if State = [] then
  begin
    if DMCONTA.WParR.Recno mod 2 = 1 then
      DBGBAIXADAS.Canvas.Brush.Color := $00EEEEEE
   else
      DBGBAIXADAS.Canvas.Brush.Color := clWhite;
  end;
  DBGBAIXADAS.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFCtaReceber.DBGBAIXADASKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // CTRl+S salvar layout grid
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGBAIXADAS.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ctasReceberBaixadas.lgm');
       Mensagem('MZR Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('MZR Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

// jonathan - Dia 28/04/2009 - inclusao referente ao chamado 297

procedure TFCtaReceber.BtnRelatorioClick(Sender: TObject);
begin
  RelCtaReceber.Popup(BtnRelatorio.Left+BtnRelatorio.Width+10, BtnRelatorio.Top+177);
end;

procedure TFCtaReceber.Clientes1Click(Sender: TObject);
begin
  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';
   FMenu.TIPOREL:='RELCTARCLI';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0); 
end;

procedure TFCtaReceber.Documento1Click(Sender: TObject);
begin
  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';
   FMenu.TIPOREL:='RELCTARDOC';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFCtaReceber.DocumentoAgrupado1Click(Sender: TObject);
begin
  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';
   FMenu.TIPOREL:='RELCTARDOCAGRUPADO';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFCtaReceber.RelaodosRecebimentos1Click(Sender: TObject);
begin
  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';
   FMenu.TIPOREL:='RELCTARDOC_REC';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFCtaReceber.DocumentoCorreo1Click(Sender: TObject);
begin
  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;         
   FMenu.TIPOAUX:='CR';
   FMenu.TIPOREL:='RELCTARDOCCORR';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFCtaReceber.FichadeCorreo1Click(Sender: TObject);
begin
  ShowMessage('RELATÓRIO DESATIVADO PARA CORREÇÃO!');
   {
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';
   FMenu.TIPOREL:='RELCTARCORR';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);}
end;

procedure TFCtaReceber.SetordeVenda1Click(Sender: TObject);
begin
  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';
   FMenu.TIPOREL:='RELCTARSETOR';
   AbrirForm(TFRelCtasSetor, FRelCtasSetor, 0);
end;

procedure TFCtaReceber.ContasaReceberCliente1Click(Sender: TObject);
begin
   FMenu.TIPOREL:='RELCTA_CLIENTE';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFCtaReceber.BoletosEmitidos1Click(Sender: TObject);
begin
  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';
   FMenu.TIPOREL:='RELBOLETOS';
   AbrirForm(TFRelCtasSetor, FRelCtasSetor, 0);
end;

procedure TFCtaReceber.ComDadosdePessoaFsica2Click(Sender: TObject);
begin
  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';   // cta receber
   FMenu.TIPOREL:='RELEXTRACTCLI'; // cta receber cliente
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFCtaReceber.ComDadosdePessoaJurdica2Click(Sender: TObject);
begin
  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';   // cta receber
   FMenu.TIPOREL:='RELEXTRACTPES_JUR'; // cta receber cliente
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFCtaReceber.DBCOBRANCAChange(Sender: TObject);
begin
  inherited;
  If DBCOBRANCA.Text = 'Cartão'
  Then Begin
      edNumeroCartao.Visible := True;
      lbNumeroCartao.Visible := True;
  End
  Else begin
      edNumeroCartao.Visible := False;
      lbNumeroCartao.Visible := False;
      edNumeroCartao.Text := '';
  End;
end;

procedure TFCtaReceber.CartaCobrana1Click(Sender: TObject);
begin
  inherited;
      // - 27/05/2009: Imprime carta cobrança
      FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
      FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', '', '', '');
      FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');
      FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.fieldByName('COD_ESTADO').AsString,'');

      DMCONTA.TRel.Close;
      DMCONTA.TRel.SQL.Clear;
      DMCONTA.TRel.SQL.Add('select vwparcr.valor, vwparcr.dtvenc, pessoa.nome, pessoa.endnumero, pessoa.endereco, pessoa.bairro,');
      DMCONTA.TRel.SQL.Add('pessoa.endnumero, vwcliente.cidade, estado.uf_estado, plncta.descricao, vwparcr.numparc');
      DMCONTA.TRel.SQL.Add('from vwparcr');
      DMCONTA.TRel.SQL.Add('left join vwcliente on vwparcr.cod_cliente = vwcliente.cod_cliente');
      DMCONTA.TRel.SQL.Add('left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa');
      DMCONTA.TRel.SQL.Add('left join cidade on vwcliente.cod_cidade = cidade.cod_cidade');
      DMCONTA.TRel.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
      DMCONTA.TRel.SQL.Add('left join plncta on vwparcr.cod_plncta = plncta.cod_plncta');
      DMCONTA.TRel.SQL.Add('where vwparcr.cod_parcelacr = :COD');
      DMCONTA.TRel.ParamByName('COD').AsString:=DMCONTA.WParR.FieldByName('COD_PARCELACR').AsString;
	   DMCONTA.TRel.Open;  

      If Not DMCONTA.TRel.IsEmpty
      Then Begin
			FsRel02.LoadFromFile('C:\MZR\MACS\Rel\FrfCartaCobranca.frf');
      		FsRel02.ShowReport;
  	   End;

end;

procedure TFCtaReceber.EDLANCAMENTOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = vk_return)
    then begin
      FiltraParcelaEdit('CARTAO');
    end;
end;

procedure TFCtaReceber.DesmarcarTodas1Click(Sender: TObject);
begin
  inherited;
    if Mensagem('CONFIRMACAO','Desmarcar todas as parcelas selecionadas?','',2,3,false,'C')=2
    then begin
       DMFINANC.TAlx.Close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add(' update parcelacr set parcelacr.mark='+#39+#39);
       DMFINANC.TAlx.ExecSQL;
       DMFINANC.Transaction.CommitRetaining;
    	TCConsultContas.OnTabChanged(Sender);
    End;
end;

procedure TFCtaReceber.DBGridCadastroPadraoDblClick(Sender: TObject);
var
	xSqlFiltro:String;
begin
  inherited;
  	xSqlFiltro := XViewRef.SQL.Text;
	//selecionar a parcela para ser marcada
   If FiltraTabela(DMconta.TParcCR, 'PARCELACR', 'COD_PARCELACR', XViewRef.FieldByName('COD_PARCELACR').AsString, '')
   Then Begin
   	If TestaClientesAntesMarcar=True
       Then Begin
           DMCONTA.TParcCR.Edit;
           If DMCONTA.TParcCR.FieldByName('MARK').AsString='X' Then
               DMCONTA.TParcCR.FieldByName('MARK').AsString:=''
           Else
               DMCONTA.TParcCR.FieldByName('MARK').AsString:='X';
           DMCONTA.TParcCR.Post;
           DMCONTA.IBT.CommitRetaining;
   	End
       Else Begin
			MessageDlg('Somente parcelas com clientes iguais podem ser marcadas', mtWarning, [mbOK], 0);
       End;
		TCConsultContas.OnTabChanged(Sender);       
   End;

   if xSqlFiltro <> '' then
   begin
   	XViewRef.Close;
       XViewRef.SQL.Clear;
       XViewRef.SQL.Add(xSqlFiltro);
   	XViewRef.Open;
   end;
end;

procedure TFCtaReceber.AgruparContasSelecionadas1Click(Sender: TObject);
Var
	XCliente, XFlag: Integer;
begin
  inherited;
	//seleciona todas as contas marcadas
   DMCONTA.WParR.Close;
   DMCONTA.WParR.SQL.Clear;
   DMCONTA.WParR.SQL.Add('Select * From VWparCR  Where (VWparCR.COD_LOJA = :CODLOJA)  And (VWparCR.Fech <> '+#39+'S'+#39+')   And (VWparCR.MARK = '+#39+'X'+#39+')');
   DMCONTA.WParR.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   DMCONTA.WParR.Open;
   Xcliente:=DMCONTA.WParR.FieldByName('COD_CLIENTE').AsInteger;
   XFlag:=0;
   DMCONTA.WParR.First;
   While not DMCONTA.WParR.Eof do
   Begin
       If XCliente<>DMCONTA.WParR.FieldByName('COD_CLIENTE').AsInteger Then
           XFlag:=1;
       DMCONTA.WParR.Next;
   End;
   If XFlag=1
   Then Begin
   	MessageDlg('Para agrupar as contas, elas devem pertencer a um mesmo cliente.', mtWarning, [mbOK], 0);
   End
   Else Begin
		MessageDlg('Ao agrupar as contas marcadas, elas serão apagadas e uma nova conta será criada totalizando as contas. '+#13+#10+'A conta gerada não possuirá um relacionamento com venda, sendo assim, comandos executados nas vendas'+#13+#10+'que geraram estas contas provavelmente não serão refletidas na conta agrupada', mtWarning, [mbOK], 0);
       if Mensagem('C O N F I R M A Ç Ã O','Deseja realmente agrupar as contas?','',2,3,false,'c')=2
       then begin
           AgrupaContas;
    		TCConsultContas.OnTabChanged(Sender);           
       End;
   End;
end;

procedure TFCtaReceber.FiltrarContasMarcadas1Click(Sender: TObject);
begin
  inherited;
	//seleciona todas as contas marcadas
   DMCONTA.WParR.Close;
   DMCONTA.WParR.SQL.Clear;
   DMCONTA.WParR.SQL.Add('Select * From VWparCR  Where (VWparCR.COD_LOJA = :CODLOJA) And (VWparCR.Fech <> '+#39+'S'+#39+')   And (VWparCR.MARK = '+#39+'X'+#39+')');
   DMCONTA.WParR.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   DMCONTA.WParR.Open;
end;

procedure TFCtaReceber.EdNomeVendedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited; 
	If Key=#13
   Then Begin
      //SQL PARA FILTRO
      XViewRef.Close;
      XViewRef.SQL.Clear;
      XViewRef.SQL.Add('Select * From VWparCR  ');
      //SQL PARA TOTALIZAR
      DMFINANC.TAlx.Close;
      DMFINANC.TAlx.SQL.Clear;
      DMFINANC.TAlx.SQL.Add(' SELECT SUM(VWPARCR.VALOR) AS TOTAL, SUM(vwparcr.valorpg) AS TOTALPG  FROM VWPARCR ');

      //filtra para loja
      XViewRef.SQL.Add('Where (COD_LOJA = :CODLOJA) ');
      XViewRef.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
      //TOTALIZA PARA LOJA
      DMFINANC.TAlx.SQL.Add('  WHERE (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') ');

      If cbFiltroCobr.ItemIndex = 1
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

     //filtra para contas baixadas ou não
     If PIndividual.Visible=True
     Then Begin  //filtra contas em aberto
         XViewRef.SQL.Add(' And (Fech <> '+#39+'S'+#39+') ');
         DMFINANC.TAlx.SQL.Add(' And (Fech <> '+#39+'S'+#39+') ');
     End
     Else Begin
         XViewRef.SQL.Add(' And (Fech = '+#39+'S'+#39+') ');
         DMFINANC.TAlx.SQL.Add(' And (Fech = '+#39+'S'+#39+') ');
     End;

     //Continua sql com os valores para consulta
     XViewRef.SQL.Add(' And (upper(VENDEDOR) like upper('+#39+EdNomeVendedor.Text+'%'+#39+')) ORDER BY VENDEDOR, NUMFISC, DTVENC, vwparcr.nome');
     DMFINANC.TAlx.SQL.Add(' And (upper(VENDEDOR) like upper('+#39+EdNomeVendedor.Text+'%'+#39+'))');

     //abre sql com filtro
     XViewRef.SQL.Text;
     XViewRef.Open;
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
  	End;
end;

procedure TFCtaReceber.EdNomeVendedorBaixadaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
      //SQL PARA FILTRO
      XViewRef.Close;
      XViewRef.SQL.Clear;
      XViewRef.SQL.Add('Select * From VWparCR  ');
      //SQL PARA TOTALIZAR
      DMFINANC.TAlx.Close;
      DMFINANC.TAlx.SQL.Clear;
      DMFINANC.TAlx.SQL.Add(' SELECT SUM(VWPARCR.VALOR) AS TOTAL, SUM(vwparcr.valorpg) AS TOTALPG  FROM VWPARCR ');

      //filtra para loja
      XViewRef.SQL.Add('Where (COD_LOJA = :CODLOJA) ');
      XViewRef.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
      //TOTALIZA PARA LOJA
      DMFINANC.TAlx.SQL.Add('  WHERE (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') ');

      If cbFiltroCobr.ItemIndex = 1
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

     //filtra para contas baixadas ou não
     If PIndividual.Visible=True
     Then Begin  //filtra contas em aberto
         XViewRef.SQL.Add(' And (Fech <> '+#39+'S'+#39+') ');
         DMFINANC.TAlx.SQL.Add(' And (Fech <> '+#39+'S'+#39+') ');
     End
     Else Begin
         XViewRef.SQL.Add(' And (Fech = '+#39+'S'+#39+') ');
         DMFINANC.TAlx.SQL.Add(' And (Fech = '+#39+'S'+#39+') ');
     End;

     //Continua sql com os valores para consulta
     XViewRef.SQL.Add(' And (upper(VENDEDOR) like upper('+#39+EdNomeVendedorBaixada.Text+'%'+#39+')) ORDER BY VENDEDOR, NUMFISC, DTVENC, vwparcr.nome');
     DMFINANC.TAlx.SQL.Add(' And (upper(VENDEDOR) like upper('+#39+EdNomeVendedorBaixada.Text+'%'+#39+'))');

     //abre sql com filtro
     XViewRef.SQL.Text;
     XViewRef.Open;
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
  	End;

end;

procedure TFCtaReceber.RdCarneExit(Sender: TObject);
begin
  inherited;
	{If RdCarne.Checked=True
   Then Begin
   	FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
		If AbrirForm(TFCadCtacor, FCadCtaCor, 1) = 'Selected'
   	Then Begin
       	XCOD_CTACORBLT:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
   	End
   	Else Begin
       	XCOD_CTACORBLT:=-1;
   	end;
   End;}
end;

procedure TFCtaReceber.NovoCarn1Click(Sender: TObject);
var
	XVlExtMulta : string;
   XVlExtJuros: string;
   xVlJuros: double;
   xVlMulta: double;
begin
  inherited;
       XCarne:=True;
       FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
       If AbrirForm(TFCadCtacor, FCadCtaCor, 1) = 'Selected'
       Then Begin
           PTextoBlt.Visible:=True;
           PTextoBlt.BringToFront;
       	CbDefineQuant.Checked:=False;
       	cbProtesto.Checked := False;
       	edDiasProtesto.Text := '';
       	edDiasProtesto.Enabled := False;
           
       	FiltraTabela(DMBANCO.TCtaCor, 'CTACOR', 'COD_CTACOR', DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString, '');

       	//if DMBANCO.TCtaCor.FieldByName('BLT_REGISTRADO').AsString = '1' then
           CBBoletoRegistrado.Checked := True;
       	{else
       		CBBoletoRegistrado.Checked := False;}

           //Alimenta variaveis auxiliares para montar o texto de instruções ao caixa
           XInstrucPadraoBlt := DMBANCO.TCtaCor.FieldByName('INSTRUBOLETO').AsString;
       	//Edmar - 20/05/2015 - Se na conta corrente estiver protesto automatico, check a caixa de seleção
       	if DMBANCO.TCtaCor.FieldByName('PROTAUT').AsString = '1' then
       		cbProtesto.Checked := True;
			    edDiasProtesto.Text := DMBANCO.TCtaCor.FieldByName('DIASPROT').AsString;

           //Repassa o texto para o memo
           TMTextoBlt.Text := XInstrucPadraoBlt;

       	//Edmar - 08/06/2015 - Filtra buscando a parcela
       	FiltraTabela(DMFINANC.TAlx, 'PARCELACR', 'COD_PARCELACR', XViewRef.FieldByName('COD_PARCELACR').AsString, '');
       	//realiza o calculo de multa e juros
       	if DMMACS.TLoja.FieldByName('MULTA').AsCurrency > 0 then//Edmar - 11/05/2015 - Calcula o valor da multa para o boleto
       		xVlMulta := DMFinanc.TAlx.FieldByName('VALOR').AsCurrency * (DMMACS.TLoja.FieldByName('MULTA').AsCurrency / 100)
       	else
				xVlMulta := 0;

       	if DMMACS.TLoja.FieldByName('JUROS').AsCurrency > 0 then//Calcula o valor diario de juros
         	xVlJuros := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency + xVlMulta) * (DMMACS.TLoja.FieldByName('JUROS').AsCurrency / 100)) / 30
        else
          xVlJuros := 0;


          MMJurosMultas.Text := 'Cobrar juros de R$ '+FormatFloat('0.00', xVlJuros)+' por dia de atraso'+#13#10+'Cobrar multa de R$ '+FormatFloat('0.00', xVlMulta)+' após o vencimento.';

          EdValorMulta.ValueNumeric := DMMACS.TLoja.FieldByName('MULTA').AsFloat;
          EdValorJuros.ValueNumeric := DMMACS.TLoja.FieldByName('JUROS').AsFloat;

      end
      Else Begin
           XCOD_CTACORBLT:=-1;
      end;
end;

procedure TFCtaReceber.OutraVia2Click(Sender: TObject);
begin
  inherited;
     If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMCONTA.WParR.FieldByName('cod_parcelacr').AsString, '')=True
     Then Begin
       XCOD_CTACORBLT:=DMCONTA.TParcCR.FieldByName('cod_ctacor').AsInteger;
       if  (DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString ='0') or (DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString = Null) then begin
      	 if (DMCONTA.TParcCR.FieldByName('tipoblt').AsString) = 'R' then
           ImpCarneRegistrado(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger, 0, 2)
         else
           ImpCarne(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger, 0, 2);
       end
       else
      		ImpCarneCobreBem(DMCONTA.WParR.FieldByName('COD_PARCELACR').AsInteger, 0, 1, 2, true, false);
       end
     Else Begin
         XCOD_CTACORBLT:=-1;
     End;
     CBJUROS.Checked := false;
end;

//Paulo 09/02/2011: Para gerar o carne novo
procedure TFCtaReceber.GravaTextoCarne(Sender: TObject);
begin
  inherited; //filtra parcelas para editar o texto do boleto
   DMBANCO.TCtaCor.Close;
   DMBANCO.TCtaCor.SQL.Clear;
   DMBANCO.TCtaCor.SQL.Add(' Select * from ctacor where ctacor.cod_ctacor=:codigo ');
   DMBANCO.TCtaCor.ParamByName('codigo').AsInteger:=XViewRef.FieldByName('COD_CTACOR').AsInteger;
   DMBANCO.TCtaCor.Open;

   if (EdValorMulta.ValueNumeric = DMMACS.TLoja.FieldByName('MULTA').AsFloat) then
   begin
      FMenu.XVALORMULTA := 0;
      if CbDefineQuant.Checked = true then
      begin
        MDO.QAlx1.Close;
        MDO.QAlx1.SQL.Clear;
        MDO.QAlx1.SQL.Add(' UPDATE PARCELACR SET PARCELACR.MULTA ='+FloatToString(EdValorMulta.ValueNumeric)+' WHERE PARCELACR.COD_CTARECEBER = :CTARECEBER');
        MDO.QAlx1.ParamByName('CTARECEBER').AsInteger := DMCONTA.WParR.FieldByName('COD_CTARECEBER').AsInteger;
        MDO.QAlx1.ExecSQL;
        TRY
          MDO.Transac.CommitRetaining;
        EXCEPT
          MDO.Transac.RollbackRetaining;
        END;
      end
      else
      begin
        MDO.QAlx1.Close;
        MDO.QAlx1.SQL.Clear;
        MDO.QAlx1.SQL.Add(' UPDATE PARCELACR SET PARCELACR.MULTA ='+FloatToString(EdValorMulta.ValueNumeric)+' WHERE PARCELACR.COD_PARCELACR = :CTARECEBER');
        MDO.QAlx1.ParamByName('CTARECEBER').AsInteger := DMCONTA.WParR.FieldByName('COD_PARCELACR').AsInteger;
        MDO.QAlx1.ExecSQL;
        TRY
          MDO.Transac.CommitRetaining;
        EXCEPT
          MDO.Transac.RollbackRetaining;
        END;
      end;
   end;
   IF (EdValorJuros.ValueNumeric = DMMACS.TLoja.FieldByName('JUROS').AsFloat) THEN
   BEGIN
      FMenu.XVALORJUROS := 0;
   end;

   If FiltraTabela(DMESTOQUE.Alx, 'vwparcr', 'cod_ctareceber', XViewRef.FieldByName('cod_ctareceber').AsString, '')=True
   Then Begin
     PTextoBlt.Visible:=False;
     PTextoBlt.SendToBack;
     XCOD_CTACORBLT:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
     DMESTOQUE.Alx.First;
     WHILE NOT DMESTOQUE.Alx.Eof do
     Begin
       //Paulo 08/02/2011: Atualiza o texto do carne
       If (DMESTOQUE.Alx.FieldByName('FECH').AsString<>'S') or (DMESTOQUE.Alx.FieldByName('FECH').AsString='')
       Then Begin
         FiltraTabela(XViewRef, 'vwparcr', 'cod_parcelacr', DMESTOQUE.Alx.FieldByName('cod_parcelacr').AsString, '');
         FiltraTabela(DMCONTA.TParcCR, 'parcelacr', 'cod_parcelacr', XViewRef.FieldByName('cod_parcelacr').AsString, '');
         DMCONTA.TParcCR.Edit;
         if DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString = '1' then
           DMCONTA.TParcCR.FieldByName('TEXTOBLT').AsString:=TMTextoBlt.Text//XInstrucPadraoBlt+'<br/>'+XTextoMultaBlt+'<br/>'+XTextoJurosBlt
         else
           DMCONTA.TParcCR.FieldByName('TEXTOBLT').AsString:=TMTextoBlt.Text;//XInstrucPadraoBlt+#13#10+XTextoMultaBlt+#13#10+XTextoJurosBlt;
           DMCONTA.TParcCR.Post;
           DMCONTA.IBT.CommitRetaining;
       End;
       DMESTOQUE.Alx.Next;
     End;

     if  (DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString ='0') or (DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString = '') then
     begin
       if FMenu.XTIPOBOLTO = 'R' then
         ImpCarneRegistrado(DMCONTA.WParR.FieldByName('cod_ctareceber').AsInteger, 1, 1)
       else
         ImpCarne(DMCONTA.WParR.FieldByName('cod_ctareceber').AsInteger, 1, 1);
     end;

     //Edmar - 25/10/2013 - Imprime carne pelo Cobre Bem
     if  DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString ='1' then
     begin
       if CbDefineQuant.Checked then
       begin
         if FMenu.XTIPOBOLTO = 'R' then
		       ImpCarneCobreBem(XViewRef.FieldByName('cod_ctareceber').AsInteger, 1, 1, 1, true, true)
         else
					 ImpCarneCobreBem(XViewRef.FieldByName('cod_ctareceber').AsInteger, 1, 1, 1, true, false);
       end
       else
         if FMenu.XTIPOBOLTO = 'R' then
					 ImpCarneCobreBem(XViewRef.FieldByName('cod_ctareceber').AsInteger, 1, 1, 1, false, true)
         else
           ImpCarneCobreBem(XViewRef.FieldByName('cod_ctareceber').AsInteger, 1, 1, 1, false, false);
     end;
   End
   Else Begin
     MessageDlg('NENHUMA PARCELA FOI ENCONTRADA', mtWarning, [mbOK], 0);
   End;
   CBJUROS.Checked := false;
end;

procedure TFCtaReceber.OutraviadeTodas1Click(Sender: TObject);
begin
  inherited;
   If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMCONTA.WParR.FieldByName('cod_parcelacr').AsString, '')=True
   Then Begin
     XCOD_CTACORBLT:=DMCONTA.TParcCR.FieldByName('cod_ctacor').AsInteger;
     if(DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString ='0')  or  (DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString = Null)
     then begin
       if (DMCONTA.TParcCR.FieldByName('tipoblt').AsString) = 'R' then
         ImpCarneRegistrado(DMCONTA.WParR.FieldByName('cod_ctareceber').AsInteger, 1, 2)
       else
         ImpCarne(DMCONTA.WParR.FieldByName('cod_ctareceber').AsInteger, 1, 2);
     end
     else
       ImpCarneCobreBem(DMCONTA.WParR.FieldByName('cod_ctareceber').AsInteger, 1, 1, 2, true, false);
   End
   Else Begin
     XCOD_CTACORBLT:=-1;
     CBJUROS.Checked := false;
   End;
end;

procedure TFCtaReceber.CtasaReceberVencidaseBaixadas1Click(
  Sender: TObject);
begin
  inherited;
       FMenu.TIPOREL:='RELCTAVENCIDAREC';
      AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFCtaReceber.QRDUPLICATABeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
   If DMMACS.Tloja.FieldByName('TITULODUPLICATA').AsString<>'' Then
       QRLabel20.Caption:=DMMACS.Tloja.FieldByName('TITULODUPLICATA').AsString;
end;

procedure TFCtaReceber.DBColorEdit3Exit(Sender: TObject);
begin
  inherited;
    DMCONTA.TParcCR.Edit;
    DMCONTA.TParcCR.FieldByName('valorserv').AsCurrency:=DMCONTA.TParcCR.FieldByName('valor').AsCurrency-DMCONTA.TParcCR.FieldByName('valorprod').AsCurrency;
    DMCONTA.TParcCR.Post;
end;

procedure TFCtaReceber.QRBand7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR
  Data: Integer;
  Mes:String;
  Year, Month, Day:word;
begin
   inherited;
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

   If (DMMACS.TALX.FieldByName('NUMERO').AsString <> '') AND (DMMACS.TALX.FieldByName('TIPOGERADOR').AsString = 'ORD')
   then begin
      QROS.Caption := 'O.S.: '+ DMMACS.TALX.FieldByName('NUMERO').AsString;
   end
   else
      QROS.Caption := 'Documento: '+ DMFINANC.TAlx.FieldByName('NUMDOC').AsString;;

   If FiltraTabela(DMMACS.TExiste, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '')
   Then begin
    	QRDBDATA.Caption:=DMMACS.TExiste.FieldByName('NOME').AsString+', '+ IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year);
   end
   Else
   	QRDBDATA.Caption:=IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year);
       FMenu.Extenso.Numero:=FormatFloat('0.00', DMFINANC.TAlx.FieldByName('VALOR').AsCurrency);;
       QRDBVALOREXTENSO.Caption:=UpperCase(FMenu.Extenso.Extenso);
       QRENDERECO.Caption := 'ENDEREÇO: '+DMMACS.TEmpresa.FieldByName('ENDERECO').AsString+', '+ DMMACS.TEmpresa.FieldByName('NUMERO').AsString+ ', ' +DMMACS.TEmpresa.FieldByName('BAIRRO').AsString + ' - ' +DMMACS.TExiste.FieldByName('NOME').AsString;


end;

procedure TFCtaReceber.QRBandReciboValorBeforePrint(Sender: TQRCustomBand;
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

procedure TFCtaReceber.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGrid3.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ParcelasctasReceber.lgm');
       Mensagem('MZR Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('MZR Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFCtaReceber.CBCobrancaCartaoSelect(Sender: TObject);
begin
  inherited;
	FiltraContasCartao('COBRANCA');
end;

procedure TFCtaReceber.CBBandeiraSelect(Sender: TObject);
begin
  inherited;
   FiltraContasCartao('BADEIRA');
end;

procedure TFCtaReceber.EdVencCartao01KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
       If ((EdVencCartao01.Text<>'  /  /    ') and (EdVencCartao02.Text<>'  /  /    ')) Then
           FiltraContasCartao('VENCIMENTO');
   End;
	If Key=#27 Then
		FiltraContasCartao('');

end;

procedure TFCtaReceber.EdDtLancCartaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
       If ((EdDtLancCartao.Text<>'  /  /    ')) Then
           FiltraContasCartao('LANCAMENTO');
   End;
	If Key=#27 Then
		FiltraContasCartao('');  

end;

procedure TFCtaReceber.EdDocCartaoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
   	FiltraContasCartao('DOCUMENTO');
   End;
	If Key=#27 Then
		FiltraContasCartao('');   
end;

procedure TFCtaReceber.EdPessoaCartaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
   	FiltraContasCartao('PESSOA');
   End;
	If Key=#27 Then
		FiltraContasCartao('');   
end;

procedure TFCtaReceber.EdHistoricoCartaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
   	FiltraContasCartao('HISTORICO');
   End;
	If Key=#27 Then
		FiltraContasCartao('');   
end;

procedure TFCtaReceber.DbgCartoesDblClick(Sender: TObject);
begin
  inherited;
	//selecionar a parcela para ser marcada
   If FiltraTabela(DMconta.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMFINANC.TAlx.FieldByName('COD_PARCELACR').AsString, '')
   Then Begin
       DMCONTA.TParcCR.Edit;
       If DMCONTA.TParcCR.FieldByName('MARK').AsString='X' Then
           DMCONTA.TParcCR.FieldByName('MARK').AsString:=''
       Else
           DMCONTA.TParcCR.FieldByName('MARK').AsString:='X';
       DMCONTA.TParcCR.Post;
       DMCONTA.IBT.CommitRetaining;
		TCConsultContas.OnTabChanged(Sender);
   End;
end;

procedure TFCtaReceber.DbgCartoesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if State = [] then
  begin
    if DMFINANC.TAlx.Recno mod 2 = 1 then
      DbgCartoes.Canvas.Brush.Color := $00EEEEEE
   else
      DbgCartoes.Canvas.Brush.Color := clWhite;
  end;
  If DMFINANC.TAlx.FieldByName('MARK').AsString='X'  Then
      DbgCartoes.Canvas.Brush.Color := clMaroon;
  DbgCartoes.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFCtaReceber.BtnFaturaContasClick(Sender: TObject);
begin
  //inherited;
   xTipo := 'CR';
	xFlagCons:=0;
   If TCConsultContas.ActiveTab=0 Then
   	FFaturaContas.ConsultaClienteMark('NORMAL');
   If TCConsultContas.ActiveTab=6 Then
   	FFaturaContas.ConsultaClienteMark('CARTÃO');

	If xFlagCons = 1 then
		AbrirForm(TFFaturaContas, FFaturaContas , 0)
   Else
   	Mensagem('    A T E N Ç Ã O   ','Não existem parcelas marcadas para faturamento.','',1,1,false,'I');
   FiltraContasCartao('CR');
   OnActivate(Self);
end;

procedure TFCtaReceber.RecibodeFatura2Click(Sender: TObject);
begin
  inherited;
  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('REIMPDUP', 'M')=False Then
   	Exit;
   FMenu.TIPOREL:='COMPROVANTEFATCONTARESUMIDO';
	//Edmar - 04/06/2014 - Se entrar no primeira condição quer dizer que quem chamou o comprovante foi a aba baixados
   If FiltraTabela(DMMACS.TALX, 'itensfaturaconta', 'cod_parcela', XViewRef.FieldByName('cod_parcelacr').AsString, '')=True
   Then Begin
   	If FiltraTabela(DMMACS.TALX, 'faturaconta', 'cod_faturaconta', DMMACS.TALX.FieldByName('cod_faturaconta').AsString, '')=True
   	Then Begin
      ImpReciboFaturaContas(DMMACS.TALX.FieldByName('cod_faturaconta').AsInteger, 'CONTAS', 'CR');
   		FMenu.RvFaturas.SystemPreview.FormState := wsMaximized;
   		FMenu.RvFaturas.DefaultDest := rdPreview;  //- 19/02/2009: visualizar o relatório direto
   		FMenu.RvFaturas.SystemPrinter.Units := unMM; //- 19/02/2009: trabalha nos milimetros da página
   		FMenu.RvFaturas.SystemPReview.RulerType := rtBothCm; //- 19/02/2009: mostra régua superior e lateral
   		FMenu.RvFaturas.Execute;
       end;
   end
   else begin//Edmar - 04/06/2014 - Do contrario, foi da aba pendentes
		//Edmar - 04/06/2014 - Filtra ctareceber buscar o codigo gerador que é o codigo da fatura
       FiltraTabela(DMMACS.TALX, 'ctareceber', 'cod_ctareceber', XViewRef.FieldByName('cod_ctareceber').AsString, '');
       ImpReciboFaturaContas(DMMACS.TALX.FieldByName('cod_gerador').AsInteger, 'CONTAS', 'CR');
       FMenu.RvFaturas.SystemPreview.FormState := wsMaximized;
       FMenu.RvFaturas.DefaultDest := rdPreview;  //- 19/02/2009: visualizar o relatório direto
       FMenu.RvFaturas.SystemPrinter.Units := unMM; //- 19/02/2009: trabalha nos milimetros da página
       FMenu.RvFaturas.SystemPReview.RulerType := rtBothCm; //- 19/02/2009: mostra régua superior e lateral
       FMenu.RvFaturas.Execute;
   end;
end;

procedure TFCtaReceber.N06RecibodaFatura1Click(Sender: TObject);
begin
  inherited;
    FMenu.TIPOREL := 'RECIBOFATCONTA';
    If FiltraTabela(DMMACS.TALX, 'itensfaturaconta', 'cod_parcela', XViewRef.FieldByName('cod_parcelacr').AsString, '')=True
    Then Begin
        If FiltraTabela(DMMACS.TALX, 'faturaconta', 'cod_faturaconta', DMMACS.TALX.FieldByName('cod_faturaconta').AsString, '')=True
        Then Begin
            If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', XViewRef.FieldByName('COD_CLIENTE').AsString, '')=True
            Then Begin
                FMenu.Extenso.Numero:=FormatFloat('0.00', DMMACS.TALX.FieldByName('vlrtotfatura').AsCurrency);
                ImpReciboFatura(XViewRef.FieldByName('nome').AsString, DMPESSOA.WCliente.FieldByName('endereco').AsString, DMMACS.TALX.FieldByName('vlrtotfatura').AsString,UpperCase(FMenu.Extenso.Extenso),'', '', '');
                FMenu.RvFaturas.SystemPreview.FormState := wsMaximized;
                FMenu.RvFaturas.DefaultDest := rdPreview;  //- 19/02/2009: visualizar o relatório direto
                FMenu.RvFaturas.SystemPrinter.Units := unMM; //- 19/02/2009: trabalha nos milimetros da página
                FMenu.RvFaturas.SystemPReview.RulerType := rtBothCm; //- 19/02/2009: mostra régua superior e lateral
                FMenu.RvFaturas.Execute;
            End;
        End;
    End;
end;

procedure TFCtaReceber.InsertBoletoRemessaCobreBem(CODCTA: INTEGER);
var
   xNum, xNumFisc, diDias: String;
   XNUM_DOCUMENTO: String;
   Year, Month, Day: word;
   xDados4, xDados1, xDados2: variant;
   xVlMulta, xVlJuros: Real;
   xEnderecoCompletoAux: String;
begin
	try
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   DMFinanc.TAlx.Close;
   DMFinanc.TAlx.SQL.Clear;
   DMFinanc.TAlx.SQL.Add(' SELECT DISTINCT(PARCELACR.COD_PARCELACR), PARCELACR.NUMBOLETO, PARCELACR.DTVENC, PARCELACR.NOSSONUMBLT, PARCELACR.NUMBOLETO, PARCELACR.NUMFISC, ');
   DMFinanc.TAlx.SQL.Add(' CTARECEBER.DTLANC, PARCELACR.NUMPARC, PARCELACR.VALEXT, PARCELACR.VALOR, PARCELACR.DIAS_PROTESTO, PESSOA.BAIRRO, PESSOA.CEP, PESSOA.TELREL, ');
   DMFinanc.TAlx.SQL.Add(' PESSOA.CPFCNPJ, PESSOA.ENDNUMERO, PESSOA.ENDERECO, PESSOA.NOME AS SACADO, CTARECEBER.NUMDOC, CTARECEBER.TIPOGERADOR, CTARECEBER.COD_GERADOR, ');
   DMFinanc.TAlx.SQL.Add(' CTARECEBER.DTLANC, CIDADE.NOME AS CIDADE, ESTADO.UF_ESTADO ');
   DMFinanc.TAlx.SQL.Add(' FROM PARCELACR ');
   DMFinanc.TAlx.SQL.Add(' JOIN CTARECEBER ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
   DMFinanc.TAlx.SQL.Add(' JOIN CLIENTE ON CLIENTE.COD_CLIENTE = CTARECEBER.COD_CLIENTE ');
   DMFinanc.TAlx.SQL.Add(' JOIN PESSOA ON PESSOA.COD_PESSOA = CLIENTE.COD_PESSOA ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN CIDADE ON CIDADE.COD_CIDADE = PESSOA.COD_CIDADE ');
   DMFinanc.TAlx.SQL.Add(' LEFT JOIN ESTADO ON ESTADO.COD_ESTADO = CIDADE.COD_ESTADO ');
   DMFinanc.TAlx.SQL.Add(' WHERE PARCELACR.COD_PARCELACR=:CODCTARECEBER ');
  	DMFinanc.TAlx.ParamByName('CODCTARECEBER').AsInteger:=XViewRef.FieldByName('COD_PARCELACR').AsInteger;
   DMFINANC.TAlx.Open;

	if not DMFINANC.TAlx.IsEmpty then
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

   	//Edmar - 29/10/2013 - Filtra conta corrente
       DMBANCO.TCtaCor.Close;
       DMBANCO.TCtaCor.SQL.Clear;
       DMBANCO.TCtaCor.SQL.Add(' select * from ctacor where ');
       DMBANCO.TCtaCor.SQL.Add(' ctacor.cod_ctacor=:CODCTACOR');
       DMBANCO.TCtaCor.ParamByName('CODCTACOR').AsInteger:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
       DMBANCO.TCtaCor.Open;

   	//Edmar - 29/10/2013 - Filtra agencia
       DMCONTA.TAlx.Close;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add(' select * from agencia where agencia.cod_agencia=:CODAGENCIA ');
       DMCONTA.TAlx.ParamByName('CODAGENCIA').AsInteger:=DMBANCO.TCtaCor.FieldByName('COD_AGENCIA').AsInteger;
       DMCONTA.TAlx.Open;

   	//Edmar - 29/10/2013 - Filtra banco
       DMBANCO.TAlx.Close;
       DMBANCO.TAlx.SQL.Clear;
       DMBANCO.TAlx.SQL.Add(' select * from banco where banco.cod_banc=:CODBANCO ');
       DMBANCO.TAlx.ParamByName('CODBANCO').AsInteger:=DMCONTA.TAlx.FieldByName('COD_BANCO').AsInteger;
       DMBANCO.TAlx.Open;

       BoletoCtaReceber := CobreBemXCtaReceber.DocumentosCobranca.Add;
       XNUM_DOCUMENTO := Copy(TiraCaracter(xNumFisc+'-'+DMFinanc.TAlx.FieldByName('numboleto').AsString +':'+DMFINANC.TAlx.FieldByName('numparc').AsString, ':'), 0, 11);
       BoletoCtaReceber.NumeroDocumento := XNUM_DOCUMENTO;
       BoletoCtaReceber.NomeSacado := TiraAcentos(DMFINANC.TAlx.fieldbyname('sacado').AsString);
       BoletoCtaReceber.NumeroControle := XNUM_DOCUMENTO;
       
       {if dmbanco.TAlx.FieldByName('numbanco').AsString = '104' then//caixa
           BoletoCtaReceber.NossoNumero := Copy(DMFINANC.TAlx.FieldByName('nossonumblt').AsString, 0, 17)//XNossoNumero
       else}
           BoletoCtaReceber.NossoNumero := DMFINANC.TAlx.fieldbyname('nossonumblt').AsString;
                      
       if Length(DMFINANC.TAlx.FieldByName('cpfcnpj').AsString) > 11 then
       	BoletoCtaReceber.CNPJSacado := DMFINANC.TAlx.FieldByName('cpfcnpj').AsString
       else
       	BoletoCtaReceber.CPFSacado := DMFINANC.TAlx.FieldByName('cpfcnpj').AsString;

       if dmbanco.TAlx.FieldByName('numbanco').AsString = '104' then
       begin//caixa
           BoletoCtaReceber.TipoDocumentoCobranca := 'DM';
           if (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '-1') AND (DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString <> '') then
           begin
       		BoletoCtaReceber.DiasProtesto := DMFINANC.TAlx.FieldByName('DIAS_PROTESTO').AsString;
           	BoletoCtaReceber.InstrucaoCobranca3 := '2';//Codigo Baixa Devolução
           end
           else begin
				BoletoCtaReceber.InstrucaoCobranca3 := '1';//Codigo Baixa Devolução
				BoletoCtaReceber.ValorInstrucaoCobranca3 := 120;
           end;
       end;
       xEnderecoCompletoAux := Copy(TiraAcentos(DMFINANC.TAlx.FieldByName('endereco').AsString), 0, 36-Length(Trim(DMFINANC.TAlx.FieldByName('ENDNUMERO').AsString)))+' N.'+DMFINANC.TAlx.FieldByName('ENDNUMERO').AsString;
       //BoletoCtaReceber.EnderecoSacado := TiraAcentos(DMFINANC.TAlx.FieldByName('endereco').AsString);
       BoletoCtaReceber.EnderecoSacado := xEnderecoCompletoAux;
       BoletoCtaReceber.BairroSacado := TiraAcentos(DMFINANC.talx.FieldByName('bairro').AsString);
       BoletoCtaReceber.CidadeSacado := TiraAcentos(dmfinanc.TAlx.FieldByName('cidade').AsString);
       BoletoCtaReceber.EstadoSacado := dmfinanc.TAlx.FieldByName('uf_estado').AsString;
       BoletoCtaReceber.CepSacado :=  TiraCaracter(dmfinanc.TAlx.FieldByName('cep').AsString, '-');
       BoletoCtaReceber.DataDocumento := Date();
       BoletoCtaReceber.DataVencimento := DMFinanc.TAlx.FieldByName('DTVENC').AsString;
       BoletoCtaReceber.ValorDocumento := DMFinanc.TAlx.FieldByName('valor').AsCurrency;
       BoletoCtaReceber.PadroesBoleto.InstrucoesCaixa := TiraAcentos(DMCONTA.TParcCR.FieldByName('TEXTOBLT').AsString);

		if DMMACS.TLoja.FieldByName('MULTA').AsString <> '' then
       begin
       	xVlMulta := DMFinanc.TAlx.FieldByName('VALOR').AsCurrency * (DMMACS.TLoja.FieldByName('MULTA').AsCurrency / 100);
       	BoletoCtaReceber.ValorMultaAtraso := xVlMulta;
       end;

       if DMMACS.TLoja.FieldByName('JUROS').AsString <> '' then
       begin
       	xVlJuros := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency + xVlMulta) * (DMMACS.TLoja.FieldByName('JUROS').AsCurrency / 100)) / 30;
		    BoletoCtaReceber.ValorJurosDiaAtraso:= xVlJuros;
       end;

       {xDados4 := BoletoCtaReceber.MeusDados.Add;
       xDados4.Nome := 'SacadorAvalistaCNPJouCPF';
		xDados4.Valor := DMMACS.TEmpresa.FieldByName('cnpj').AsString;}

       xDados1 := BoletoCtaReceber.MeusDados.Add;
       xDados1.Nome := 'FormaCadastramento';
       xDados1.Valor := '1';

       xDados2 := BoletoCtaReceber.MeusDados.Add;
       xDados2.Nome := 'MovimentoRemessa';
       xDados2.Valor := '06';

		DMCONTA.TParcCR.Close;
       DMCONTA.TParcCR.SQL.Clear;
       DMCONTA.TParcCR.SQL.Add('SELECT * FROM PARCELACR WHERE PARCELACR.COD_PARCELACR=:CODPAR');
       DMCONTA.TParcCR.ParamByName('CODPAR').AsInteger:=DMFINANC.TAlx.FieldByName('COD_PARCELACR').AsInteger;
		DMCONTA.TParcCR.Open;

       If Not DMCONTA.TParcCR.IsEmpty
       Then Begin
       	Try
           	DMCONTA.TParcCR.Edit;
           	DMCONTA.TParcCR.FieldByName('REMESSA').AsString:='PARC';
           	DMCONTA.TParcCR.Post;
           Except
           End;
       End;
   end;
   except
   	On E : Exception do
       begin
          ShowMessage('InsertRemessa ' + E.Message + ' - ' + DMFinanc.TAlx.FieldByName('numboleto').AsString);
       end;
   end;
end;

procedure TFCtaReceber.ControleInterno1Click(Sender: TObject);
begin
  inherited;
   //Edmar - 20/06/2014 - Filtra cidade
  	FiltraTabela(DMGEOGRAFIA.TAlx, 'VWCIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');
   //Edmar - 20/06/2014 - Filtra cliente
   FiltraTabela(DMPESSOA.TALX, 'VWCLIENTE', 'COD_CLIENTE', XViewRef.FieldByName('COD_CLIENTE').AsString, '');

   //Edmar - 20/06/2014 - Filtra conta do cliente junto com a ordem
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add(' select ctareceber.dtlanc, parcelacr.dtvenc, parcelacr.valor, parcelacr.valext, parcelacr.numparc PARCELA, equipamento.cod_equipamento EQUIP, equipamento.descricao ');
   DMESTOQUE.TRel.SQL.Add(' from ctareceber ');
   DMESTOQUE.TRel.SQL.Add(' left join parcelacr on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
   DMESTOQUE.TRel.SQL.Add(' left join ordem on ordem.cod_ordem = ctareceber.cod_gerador ');
   DMESTOQUE.TRel.SQL.Add(' left join equipamento on equipamento.cod_equipamento = ordem.cod_equipamento ');
   DMESTOQUE.TRel.SQL.Add(' where parcelacr.cod_parcelacr = :cod ');
   DMESTOQUE.TRel.ParamByName('COD').AsString := XViewRef.FieldByName('COD_PARCELACR').AsString;
   DMESTOQUE.TRel.Open;

	FSDSRel.DataSet := DMESTOQUE.TRel;
   FSRel.Dataset := FSDSRel;

	FSRel.LoadFromFile('C:\MZR\Macs\Rel\FrfControleInterno.frf');
   FSRel.ShowReport;
end;

procedure TFCtaReceber.edvencimento2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
{  	if key = #13 then
		FiltraParcelaEditCob('DTVENC');

  	if key = #27 then
		FiltraParcelaEditCob('ODTVENC');  }     
end;

procedure TFCtaReceber.EdVencimentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
{  	if key = #13 then
		FiltraParcelaEditCob('DTVENC');

  	if key = #27 then
		FiltraParcelaEditCob('ODTVENC'); }
end;

procedure TFCtaReceber.btnVencidosClick(Sender: TObject);
begin
  inherited;
  EdVencimento.Text := '01/01/1900';
  edvencimento2.Text := DateToStr(Date());
  edvencimento2.SetFocus;
  keybd_event(VK_RETURN, 1, 0, 0);
//  edvencimento2KeyPress(sender,);
end;
//Alex: 13/04/2016 - Função para ler arquivo de retorno cnab 240 CAIXA
Function TFCtaReceber.RetornoCnab240Caixa: Boolean;
var
   xCodParcelaBanco, I: Integer;
   xErros, erro: String;
Begin
	Try
   	Result := True;
		while not Eof(xRetorno) do
       begin
           //Edmar - 04/11/2014 - Pula duas linhas para leitura
           Readln(xRetorno, xInfo);

           while not Eof(xRetorno) do
           begin
               Readln(xRetorno, xInfo);

               if (xInfo[14] = 'T') then
               begin
                   //recupera o status da entrada
                   xCodigoMovimentoRetorno := xInfo[16]+xInfo[17];
                   //extrai os possiveis erros existentes na remessa
                   xErros := Trim(xInfo[214]+xInfo[215]+xInfo[216]+xInfo[217]+xInfo[218]+xInfo[219]+xInfo[220]+xInfo[221]+xInfo[222]+xInfo[223]);
                   //num. conta corrente
                   xContaCorrente := xInfo[24]+xInfo[25]+xInfo[26]+xInfo[27]+xInfo[28]+xInfo[29];//+xInfo[30]+xInfo[31]+xInfo[32]+xInfo[33]+xInfo[34]+xInfo[35];
                   //seguimento responsavel pelo detalhes do titulo, especificamente o nosso número
                   xNossoNum := xInfo[40]+xInfo[41]+xInfo[42]+xInfo[43]+xInfo[44]+xInfo[45]+xInfo[46]+xInfo[47]+xInfo[48]+xInfo[49]+xInfo[50]+xInfo[51]+xInfo[52]+xInfo[53]+xInfo[54]+xInfo[55]+xInfo[56]+xInfo[57];
                   //número do boleto
                   xNumBoleto := xInfo[59]+xInfo[60]+xInfo[61]+xInfo[62]+xInfo[63]+xInfo[64]+xInfo[65]+xInfo[66]+xInfo[67]+xInfo[68]+xInfo[69]+xInfo[70]+xInfo[71]+xInfo[72]+xInfo[73];
                   
                   Readln(xRetorno, xInfo);//avança linha para leitura do seguemento U
                   if (xInfo[14] = 'U') AND (Trim(xNossoNum) <> '') then
                   begin
                       xValor := xInfo[93]+xInfo[94]+xInfo[95]+xInfo[96]+xInfo[97]+xInfo[98]+xInfo[99]+xInfo[100]+xInfo[101]+xInfo[102]+xInfo[103]+xInfo[104]+xInfo[105];
                       xDecimal := xInfo[106]+xInfo[107];
                       xDataPagamento := xInfo[138]+xInfo[139]+'/'+xInfo[140]+xInfo[141]+'/'+xInfo[142]+xInfo[143]+xInfo[144]+xInfo[145];//recupera também a data do pagamento
                       xValor := xValor+','+xDecimal;

                       Try
                           xCodParcelaBanco := -1;
                           //Alex - 25/04/2017 - Buscamos o codigo da parcela referente ao boleto no banco de dados
                           DMPESSOA.TALX.Close;
                           DMPESSOA.TALX.SQL.Clear;
                           DMPESSOA.TALX.SQL.Add('  select parcelacr.cod_parcelacr, parcelacr.numparc, vwctacor.numctacor, parcelacr.nossonumblt, parcelacr.valor, parcelacr.numboleto, parcelacr.nossonumblt from parcelacr ');
                           DMPESSOA.TALX.SQL.Add('  Left join vwctacor on parcelacr.cod_ctacor = vwctacor.cod_ctacor');
                           DMPESSOA.TALX.SQL.Add('  where (PARCELACR.nossonumblt = :NossoNumero) and (parcelacr.fech<>''S'')');
                           DMPESSOA.TALX.ParamByName('NossoNumero').AsString := xNossoNum;
                           DMPESSOA.TALX.Open;
							If not (DMPESSOA.TALX.IsEmpty)
							Then Begin
								xCodParcelaBanco := DMPESSOA.TALX.FieldByName('cod_parcelacr').AsInteger;
							end
							Else Begin
                               xCodParcelaBanco := -1;
							End;
					    Except
   					End;

                       //Edmar - 18/09/2014 - Insere o numero do boleto e o valor pago
                       //na tabela temporaria
                       DMMACS.TMP.Insert;
                       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=xcodtmp;
                       DMMACS.TMP.FieldByName('INT1').AsInteger := StrToInt(xContaCorrente);//converter para Int;
                       DMMACS.TMP.FieldByName('INT2').AsInteger := xCodParcelaBanco;
                       DMMACS.TMP.FieldByName('DESC1').AsString := xNossoNum;
                       DMMACS.TMP.FieldByName('VLR1').AsString := xValor;
                       DMMACS.TMP.FieldByName('DESC3').AsString := xCodigoMovimentoRetorno;
                       DMMACS.TMP.FieldByName('DATA1').AsDateTime := StrToDate(xDataPagamento);
                       //DMMACS.TMP.FieldByName('DESC2').AsString := xNumBoleto;                       
                       DMMACS.TMP.Post;

                       xTodosNossoNum := xTodosNossoNum + QuotedStr(xNossoNum)+', ';

                       xcodtmp := xcodtmp + 1;

                       //detalhamento do retorno agora!
                       if xCodigoMovimentoRetorno =  '02' then
                           mmStatusBoletos.Lines.Add('Retorno: 02 - Entrada confirmada')
                       else if xCodigoMovimentoRetorno = '03' then
                           mmStatusBoletos.Lines.Add('Retorno: 03 - Entrada rejeitada')
                       else if xCodigoMovimentoRetorno = '06' then
                           mmStatusBoletos.Lines.Add('Retorno: 06 - Liquidação')
                       else if xCodigoMovimentoRetorno = '09' then
                           mmStatusBoletos.Lines.Add('Retorno: 09 - Baixa')
                       else if xCodigoMovimentoRetorno = '17' then
                           mmStatusBoletos.Lines.Add('Retorno: 17 - Liquidação após baixa ou liquidação título não registrado')
                       else
                           mmStatusBoletos.Lines.Add('Retorno: '+xCodigoMovimentoRetorno+' - Outro movimento de retorno (conferir o manual junto ao banco)');

                       mmStatusBoletos.Lines.Add('Nº boleto: '+ Copy(xNossoNum, 14, 4) +'; Nº do documento: '+Trim(xNumBoleto)+'; Nosso número: '+Trim(xNossoNum)+'; Valor do título: '+ FormatFloat('#0.00', StrToFloat(xValor)));

                       if xCodigoMovimentoRetorno = '03' then
                       begin
                           //adiciona a causa do erro
                           //140000000000015980
                           if xErros <> '' then
                           begin
                               mmStatusBoletos.Lines.Add('               Motivo da rejeição:');
                               for I := 1 to Length(xErros) do
                               begin
                                   if I mod 2 <> 0 then
                                   begin
                                       erro := Copy(xErros, I, 2);
                                       if erro = '08' then
                                           mmStatusBoletos.Lines.Add('                    08 - Nosso número inválido. Verifique se o boleto já está registrado')
                                       else if erro = '38' then
                                           mmStatusBoletos.Lines.Add('                    38 - Prazo para protesto inválido. A atual é maior que a data prevista para o protesto');
                                   end;
                               end;
                           end;
                       end;

                       mmStatusBoletos.Lines.Add('');
                   end;
               end;
           end;
       end;
	Except
       Result:=False;
   End;
End;


//Alex: 13/04/2016 - Função para ler arquivo de retorno cnab 240 BANCOOB
Function TFCtaReceber.RetornoCnab240Bancoob: Boolean;
var
   xValorDocumentoFloat: Real;
	xCodParcelaBanco: Integer;
Begin
	Try
   	Result := True;
              
		while not Eof(xRetorno) do
       begin
           Readln(xRetorno, xInfo);
           //Edmar - 09/09/2014 - Verifica o segmento e se o titulo foi liquidado
           if (xInfo[14] = 'T') then
           begin
               //recupera o status da entrada
               xCodigoMovimentoRetorno := xInfo[16]+xInfo[17];
               //número do registro
               xNumeroRegistro := xInfo[9]+xInfo[10]+xInfo[11]+xInfo[12]+xInfo[13];
               //num. conta corrente
               xContaCorrente := xInfo[24]+xInfo[25]+xInfo[26]+xInfo[27]+xInfo[28]+xInfo[29]+xInfo[30]+xInfo[31]+xInfo[32]+xInfo[33]+xInfo[34]+xInfo[35];
               //nosso número do boleto
               xNossoNum := xInfo[40]+xInfo[41]+xInfo[42]+xInfo[43]+xInfo[44]+xInfo[45]+xInfo[46];
           	If (Trim(TiraZerosEsquerda(xNossoNum))='100') Then
               	xCodParcelaBanco := -1;
               //número do boleto/documento
               xNumBoleto := xInfo[59]+xInfo[60]+xInfo[61]+xInfo[62]+xInfo[63]+xInfo[64]+xInfo[65]+xInfo[66]+xInfo[67]+xInfo[68]+xInfo[69]+xInfo[70]+xInfo[71]+xInfo[72]+xInfo[73];
               //valor original do documento
               xValorDocumento := xInfo[82]+xInfo[83]+xInfo[84]+xInfo[85]+xInfo[86]+xInfo[87]+xInfo[88]+xInfo[89]+xInfo[90]+xInfo[91]+xInfo[92]+xInfo[93]+xInfo[94];
               //decimal do valor original
               xDecimal := xInfo[95]+xInfo[96];
               xValorDocumento := xValorDocumento+','+xDecimal;

               Readln(xRetorno, xInfo);//pula uma linha para pegar informações do segmento U
               //recupera data do pagamento
               xDataPagamento := xInfo[138]+xInfo[139]+'/'+xInfo[140]+xInfo[141]+'/'+xInfo[142]+xInfo[143]+xInfo[144]+xInfo[145];
               //recupera o valor pago
               xValor := xInfo[78]+xInfo[79]+xInfo[80]+xInfo[81]+xInfo[82]+xInfo[83]+xInfo[84]+xInfo[85]+xInfo[86]+xInfo[87]+xInfo[88]+xInfo[89]+xInfo[90];
               //e o valor decimal desse valor pago
               xDecimal := xInfo[91]+xInfo[92];
               //concatena os valores e armazena temporariamente
               xValor := xValor+','+xDecimal;

               if (xCodigoMovimentoRetorno = '06') OR (xCodigoMovimentoRetorno = '09') OR (xCodigoMovimentoRetorno = '17') then
               begin
					Try
							If (Trim(TiraZerosEsquerda(xNossoNum))='328') Then
                           	xCodParcelaBanco := -1;
                           xCodParcelaBanco := -1;
                           //Alex - 25/04/2017 - Buscamos o codigo da parcela referente ao boleto no banco de dados
                           DMPESSOA.TALX.Close;
                           DMPESSOA.TALX.SQL.Clear;
                           DMPESSOA.TALX.SQL.Add('  select parcelacr.cod_parcelacr, parcelacr.numparc, vwctacor.numctacor, parcelacr.nossonumblt, parcelacr.valor, parcelacr.numboleto, parcelacr.nossonumblt from parcelacr ');
                           DMPESSOA.TALX.SQL.Add('  Left join vwctacor on parcelacr.cod_ctacor = vwctacor.cod_ctacor');
                           DMPESSOA.TALX.SQL.Add('  where (PARCELACR.numboleto = :NossoNumero)   and (vwctacor.numctacor = :ContaCorrente) and (parcelacr.fech<>''S'')');
                           DMPESSOA.TALX.ParamByName('NossoNumero').AsString := Trim(TiraZerosEsquerda(xNossoNum));
                           DMPESSOA.TALX.ParamByName('ContaCorrente').AsString := Trim(TiraZerosEsquerda(xContaCorrente));
                           DMPESSOA.TALX.Open;
							If not (DMPESSOA.TALX.IsEmpty)
							Then Begin
								xCodParcelaBanco := DMPESSOA.TALX.FieldByName('cod_parcelacr').AsInteger;
							end
							Else Begin
                               xCodParcelaBanco := -1;
							End;
					Except
					End;

                   //Edmar - 18/09/2014 - Insere o numero do boleto e o valor pago
                   //na tabela temporaria
                   DMMACS.TMP.Insert;
                   DMMACS.TMP.FieldByName('COD_TMP').AsInteger:= xcodtmp;
                   DMMACS.TMP.FieldByName('INT1').AsString := xContaCorrente;
                   DMMACS.TMP.FieldByName('INT2').AsInteger := xCodParcelaBanco;
                   DMMACS.TMP.FieldByName('DESC1').AsString := xNossoNum;
                   DMMACS.TMP.FieldByName('DESC2').AsString := xNumBoleto;
                   DMMACS.TMP.FieldByName('DESC3').AsString := xCodigoMovimentoRetorno;
                   DMMACS.TMP.FieldByName('VLR1').AsString := xValor;
                   DMMACS.TMP.FieldByName('DATA1').AsDateTime := StrToDate(xDataPagamento);
                   DMMACS.TMP.Post;
                                      
                   xTodosNossoNum := xTodosNossoNum + QuotedStr(xNossoNum)+', ';

                   xcodtmp := xcodtmp + 1;
               end;

               //detalhamento do retorno agora!
               if xCodigoMovimentoRetorno =  '02' then
                   mmStatusBoletos.Lines.Add('Retorno: 02 - Entrada confirmada')
               else if xCodigoMovimentoRetorno = '03' then
                   mmStatusBoletos.Lines.Add('Retorno: 03 - Entrada rejeitada')
               else if xCodigoMovimentoRetorno = '06' then
                   mmStatusBoletos.Lines.Add('Retorno: 06 - Liquidação')
               else if xCodigoMovimentoRetorno = '09' then
                   mmStatusBoletos.Lines.Add('Retorno: 09 - Baixa')
               else if xCodigoMovimentoRetorno = '17' then
                   mmStatusBoletos.Lines.Add('Retorno: 17 - Liquidação após baixa ou liquidação título não registrado')
               else
                   mmStatusBoletos.Lines.Add('Retorno: '+xCodigoMovimentoRetorno+' - Outro movimento de retorno (conferir o manual junto ao banco)');

               xValorDocumentoFloat := StrToFloat(xValorDocumento);
               mmStatusBoletos.Lines.Add('Nº do registro: '+Trim(xNumeroRegistro)+'; Nº do documento: '+Trim(xNumBoleto)+'; Nosso número: '+Trim(xNossoNum)+'; Valor do título: '+ FormatFloat('#0.00', xValorDocumentoFloat));
               mmStatusBoletos.Lines.Add('');
           end;
       end;//final while leitura retorno

   except
       Result:=False;
   End;
End;
//Alex: 13/04/2016 - Função para ler arquivo de retorno cnab 400 BANCOOB
Function TFCtaReceber.RetornoCnab400Bancoob: Boolean;
Begin
	Try
   	Result := True;
       while not Eof(xRetorno) do
       begin
           Readln(xRetorno, xInfo);
           //Edmar - 09/09/2014 - Se a primeira letra da linha for 1 quer dizer que está no seguimento detalhes
           //seguimento responsavel por descrever todas as informações do boleto
           if xInfo[1] = '1' then
           begin//Edmar - 19/09/2014 - Layout CNAB 400
               //localiza o nosso numero presente no retorno
               xNossoNum := xInfo[71]+xInfo[72]+xInfo[73]+xInfo[74]+xInfo[75]+xInfo[76]+xInfo[77];{+xInfo[78];}
               //localiza o número do boleto
               xNumBoleto := xInfo[74]+xInfo[75]+xInfo[76]+xInfo[77];
               //recupera a data de pagamento do titulo
               xDataPagamento := xInfo[111]+xInfo[112]+'/'+xInfo[113]+xInfo[114]+'/20'+xInfo[115]+xInfo[116];
               //recupera o valor pago
               xValor := xInfo[254]+xInfo[255]+xInfo[256]+xInfo[257]+xInfo[258]+xInfo[259]+xInfo[260]+xInfo[261]+xInfo[262]+xInfo[263]+xInfo[264];
               //e o valor decimal desse valor pago
               xDecimal := xInfo[265]+xInfo[266];
               //concatena os valores para salvar temporariamente
               xValor := xValor+','+xDecimal;

               //Edmar - 18/09/2014 - Insere o numero do boleto e o valor pago
               //na tabela temporaria
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=xcodtmp;
               DMMACS.TMP.FieldByName('DESC1').AsString := xNossoNum;
               DMMACS.TMP.FieldByName('DESC2').AsString := xNumBoleto;
               DMMACS.TMP.FieldByName('VLR1').AsString := xValor;
               DMMACS.TMP.FieldByName('DATA1').AsDateTime := StrToDate(xDataPagamento);
               DMMACS.TMP.Post;

               xTodosNossoNum := xTodosNossoNum + QuotedStr(xNossoNum)+', ';

               xcodtmp := xcodtmp + 1;
           end;
       end;
   except
       Result:=False;
   End;
End;

procedure TFCtaReceber.btnLerRetornoClick(Sender: TObject);
begin
  inherited;
	try
       LConta.Caption:='';
       LArquivo.Caption:='';
		xCaminho := '';
     	OpenDialog1.InitialDir := 'C:/MZR';

     	if not OpenDialog1.Execute then
           Exit;

     	xCaminho := OpenDialog1.FileName;

     	AssignFile(xRetorno, xCaminho);
     	Reset(xRetorno);

       mmStatusBoletos.Lines.Clear;       
     	xTodosNossoNum := '';
     	try
       	DMMACS.TALX.Close;
         	DMMACS.TALX.SQL.Clear;
         	DMMACS.TALX.SQL.Add('DELETE FROM TMP');
         	DMMACS.TALX.ExecSQL;
         	DMMACS.Transaction.CommitRetaining;
     	except
         	DMMACS.Transaction.RollbackRetaining;
     	end;
     	xcodtmp := 1;
     	//Edmar - 09/09/2014 - Lê linha por linha do arquivo
     	//e joga toda a informação da linha para a variavel xInfo
     	Readln(xRetorno, xInfo);

     	if (xInfo[1] = '0') AND (xInfo[2] = '2') AND (xInfo[3] = 'R')
       Then Begin
       	xAuxBanco:=  xInfo[3] + xInfo[4] + xInfo[5] + xInfo[6] + xInfo[7] + xInfo[8] + xInfo[9] + xInfo[77] + xInfo[78] + xInfo[79];
           If xAuxBanco='RETORNO756'
           Then Begin
       		//SICOOB - Lay-out cnab 400
           	RetornoCnab400Bancoob;
			End;
       End;
     	if (xInfo[1] = '7') AND (xInfo[2] = '5') AND (xInfo[3] = '6')
       Then Begin
       	//SICOOB - Lay-out cnab 400
           RetornoCnab240Bancoob;
       End;
       if (xInfo[1] = '1') AND (xInfo[2] = '0') AND (xInfo[3] = '4')
       Then Begin
			//CAIXA - Lay-Out Cnab 240 da caixa
           RetornoCnab240Caixa;
      	end;
     	DMMACS.Transaction.CommitRetaining;

     	//Edmar - 17/09/2014 - Copy para tirar a ultima virgula
     	xTodosNossoNum := Copy(xTodosNossoNum, 0, Length(xTodosNossoNum)-2);
     	if xTodosNossoNum <> '' then
     	begin
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add(' UPDATE PARCELACR SET PARCELACR.MARK = ''V'' ');
           DMFINANC.TAlx.SQL.Add(' WHERE (PARCELACR.NOSSONUMBLT IN ('+xTodosNossoNum+')) ');
           DMFINANC.TAlx.SQL.Add(' AND (PARCELACR.FECH <> ''S'') ');
           DMFINANC.TAlx.SQL.Add(' AND (PARCELACR.COD_CTACOR IN (SELECT DISTINCT CTACOR.COD_CTACOR FROM CTACOR WHERE CTACOR.NUMCTACOR IN (SELECT TMP.INT1 FROM TMP)) ');
           DMFINANC.TAlx.SQL.Add(' OR (PARCELACR.COD_CTACOR IN (SELECT DISTINCT CTACOR.COD_CTACOR FROM CTACOR WHERE CTACOR.CODCEDENTEBLT IN (SELECT TMP.INT1 FROM TMP)))) ');
           //
           DMFINANC.TAlx.ExecSQL;
           try
               DMFINANC.Transaction.CommitRetaining;
           except
               DMFINANC.Transaction.RollbackRetaining;
           end;
       end;

       pListaRetorno.Visible := True;
       pListaRetorno.BringToFront;
       AtualizaListaDiferenca;
       AtualizaListaRetorno;
       PNEncontrados.Visible := True;
       PNEncontrados.BringToFront;
	except
  		on e : Exception do
   	begin
   		Mensagem('    A T E N Ç Ã O   ', 'Erro ao ler arquivo retorno '+e.Message, '', 1, 1, false, 'E');
			DMMACS.Transaction.RollbackRetaining;
   	end;
	end;
end;

procedure TFCtaReceber.btnCancelaRetornoClick(Sender: TObject);
begin
  inherited;
   //Edmar - 18/09/2014 - Ao cancelar esconde o painel e desmarca as contas
   try
       pListaRetorno.Visible := False;
       pListaRetorno.SendToBack;

       if xTodosNossoNum <> '' then
       begin
           DMFINANC.TAlx.First;

           while not DMFINANC.TAlx.Eof do
           begin
               if DMFINANC.TAlx.FieldByName('MARK').AsString = 'X' then
               begin
                 DMFINANC.TAlxMoeda.Close;
                 DMFINANC.TAlxMoeda.SQL.Clear;
                 DMFINANC.TAlxMoeda.SQL.Add('UPDATE PARCELACR SET PARCELACR.MARK = ''N'' WHERE PARCELACR.COD_PARCELACR = :PRC');
                 DMFINANC.TAlxMoeda.ParamByName('PRC').AsInteger := DMFINANC.TAlx.FieldByName('COD_PARCELACR').AsInteger;

                 DMFINANC.TAlxMoeda.ExecSQL;

                 DMFINANC.Transaction.CommitRetaining;
               end;

               DMFINANC.TAlx.Next;
           end;
       end;
  except
  	on E : Exception do
   begin
       DMFINANC.Transaction.RollbackRetaining;
   	Mensagem('    A T E N Ç Ã O  ', 'Erro ao cancelar '+e.Message, '', 1, 1, false, 'E');
   end;
  end;
end;

procedure TFCtaReceber.btnConfirmaRetornoClick(Sender: TObject);
var
   xFlag: Integer;
   xMovimentados, xRetiradoRemessa, xNadaFazer: String;
begin
  inherited;
	DMFINANC.TAlx.First;
   try
       xMovimentados := '';
       xRetiradoRemessa := '';
       xNadaFazer := '';
       
       //Edmar - 18/09/2014 - Percorre a lista de retorno
       while not DMFINANC.TAlx.Eof do
       begin
           //Edmar - 18/09/2014 - se não a conta não estiver marcada
           if DMFINANC.TAlx.FieldByName('MARK').AsString <> 'X' then
           begin//faz a baixa
               if FiltraTabela(DMCONTA.WParR, 'VWPARCR', 'COD_PARCELACR', DMFINANC.TAlx.FieldByName('COD_PARCELACR').AsString, '') then
               begin
                  if DMCONTA.WParR.FieldByName('COD_CTACOR').AsString = '' then
                    XCOD_CONTABANCO := -1
                   else
                    XCOD_CONTABANCO := DMCONTA.WParR.FieldByName('COD_CTACOR').AsInteger;

                   If FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR', IntToStr(XCOD_CONTABANCO), '')=True Then
                   Begin
                     if DMBANCO.VerifAbBanco = false Then
                     Begin
                        Mensagem('   A T E N Ç Ã O   ','BANCO FECHADO. O LANÇAMENTO NÃO PODE SER EFETUADO.','',1,1,false,'a');
                        Exit;
                     End;
                   End;

                   FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', DMCONTA.WParR.FieldByName('COD_CTARECEBER').AsString, '');
                   //busca o valor pago do boleto
                   DMMACS.TALX.Close;
                   DMMACS.TALX.SQL.Clear;
                   DMMACS.TALX.SQL.Add(' SELECT TMP.DESC1 NOSSONUMERO, TMP.VLR1 VALORPG, TMP.DATA1 DATABAIXA, TMP.DESC3 COD_MOVIMENTO ');
                   DMMACS.TALX.SQL.Add(' FROM TMP ');
                   DMMACS.TALX.SQL.Add(' WHERE tmp.int2 = :CODIGO ');
                   DMMACS.TALX.ParamByName('CODIGO').AsString := DMFINANC.TAlx.FieldByName('cod_parcelacr').AsString;
                   DMMACS.TALX.Open;

                   //verifica qual o status do boleto pra fazer a operação correta
                   if DMMACS.TAlx.FieldByName('COD_MOVIMENTO').AsString =  '02' then //só tira o boleto da proxima remessa
                   begin
                       //
                       xRetiradoRemessa := xRetiradoRemessa + DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString + ', ';

                       //atualiza a parcela recusando a remessa
                       MDO.Query.Close;
                       MDO.Query.SQL.Clear;
                       MDO.Query.SQL.Add(' UPDATE PARCELACR SET REMESSA = ''RECUSADO'' WHERE COD_PARCELACR = :COD_PARCELA ');
                       MDO.Query.ParamByName('COD_PARCELA').AsInteger := DMFINANC.TAlx.FieldByName('cod_parcelacr').AsInteger;
                       MDO.Query.ExecSQL;
                   end
                   else
                       if (DMMACS.TAlx.FieldByName('COD_MOVIMENTO').AsString = '06')
                       OR (DMMACS.TAlx.FieldByName('COD_MOVIMENTO').AsString = '09')
                       OR (DMMACS.TAlx.FieldByName('COD_MOVIMENTO').AsString = '17') then //movimenta
                   begin
                       xFlag := 1;
                       
                       FiltraTabela(DMCONTA.WParR, 'VWPARCR', 'COD_PARCELACR', DMFINANC.TAlx.FieldByName('COD_PARCELACR').AsString, '');
                       if not LanBanco(XCOD_CONTABANCO, DMCONTA.TCtaR.FieldByName('COD_PLNCTA').AsInteger, 'Boleto: '+DMCONTA.WParR.FIELDBYNAME('NUMBOLETO').AsString+' - Bx. C.R.-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,
                         DMMACS.TALX.FieldByName('VALORPG').AsCurrency, 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'Boleto', 'S', DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString, '', DMCONTA.WParR.FIELDBYNAME('DTLANC').AsString, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString) then
                         xFlag := 0;

                       //só baixa a conta se o lançamento ocorreu.
                       if xFlag = 1 then
                       begin
                           DMFINANC.TAlxMoeda.Close;
                           DMFINANC.TAlxMoeda.SQL.Clear;
                           DMFINANC.TAlxMoeda.SQL.Add('UPDATE PARCELACR SET PARCELACR.FECH = ''S'', PARCELACR.cobranca=''Boleto'', PARCELACR.VALORPG = :PG, PARCELACR.DTDEBITO = :DT WHERE PARCELACR.NOSSONUMBLT = :NOSSONUMERO');
                           DMFINANC.TAlxMoeda.ParamByName('PG').AsCurrency := DMMACS.TALX.FieldByName('VALORPG').AsCurrency;
                           DMFINANC.TAlxMoeda.ParamByName('NOSSONUMERO').AsString := DMFINANC.TAlx.FieldByName('NOSSONUMBLT').AsString;
                           //verifica se foi salvo uma data de pagamento anteriormente
                           if DMMACS.TAlx.FieldByName('DATABAIXA').AsString <> '' then
                               DMFINANC.TAlxMoeda.ParamByName('DT').AsDateTime := DMMACS.TAlx.FieldByName('DATABAIXA').AsDateTime
                           else//senão, informa a data atual
                               DMFINANC.TAlxMoeda.ParamByName('DT').AsDateTime := Date();

                           DMFINANC.TAlxMoeda.ExecSQL;

                           xMovimentados := xMovimentados + DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString + ', ';
                       end;
                   end
                   else //não faz nada
                   begin
                       //não possui codigo de movimento válido. nada será feito sobre tais boletos
                       xNadaFazer := xNadaFazer + DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString + ', ';
                   end;
               end;
           end;
           DMFINANC.TAlx.Next;
       end;

       MDO.Transac.CommitRetaining;
       DMFINANC.Transaction.CommitRetaining;
       DMBANCO.IBT.CommitRetaining;

       if (xMovimentados <> '') then
   	    Mensagem('    I N F O R M A Ç Ã O   ', 'Os boletos '+ xMovimentados + ' foram baixados com sucesso.', '', 1, 1, false, 'I');
       if (xRetiradoRemessa <> '') then
   	    Mensagem('    I N F O R M A Ç Ã O   ', 'Os boletos '+ xRetiradoRemessa + ' foram retirados da próxima remessa.', '', 1, 1, false, 'I');
       if (xNadaFazer <> '') then
   	    Mensagem('    I N F O R M A Ç Ã O   ', 'Nenhum ação foi realizada sobre os boletos '+ xNadaFazer, '', 1, 1, false, 'I');           

       //Edmar - 18/09/2014 - finalizando o processo, aciona o botão cancelar para esconder o painel
       //e desmarcar as contas
       btnCancelaRetornoClick(sender);
   except
   	on e : exception do
       begin
       	DMFINANC.Transaction.RollbackRetaining;
	    	Mensagem('    A T E N Ç Ã O    ', 'Erro ao confirmar baixa '+e.Message, '', 1, 1, false, 'E');
       end;
   end;
end;

function TFCtaReceber.AtualizaListaDiferenca:Boolean;
begin
   if xTodosNossoNum <> '' then
   begin
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add(' SELECT * FROM TMP ');
       DMMACS.TALX.SQL.Add(' WHERE  (tmp.int2<0) ');
       DMMACS.TALX.Open;

       while not DMMACS.TALX.Eof do
       begin
           DMCONTA.TAlx.Close;
           DMCONTA.TAlx.SQL.Clear;
           DMCONTA.TAlx.SQL.Add(' UPDATE TMP SET TMP.INT1 =''1'' WHERE TMP.DESC1 ='+DMMACS.TALX.FieldByName('DESC1').AsString);
           DMCONTA.TAlx.ExecSQL;
           DMMACS.TALX.Next;
       end;

       try
           DMCONTA.IBT.CommitRetaining;
       except
           DMCONTA.IBT.RollbackRetaining;
       end;

       if DMMACS.TALX.IsEmpty then
           Result := false
       else
           Result := true;
   end;
end;

function TFCtaReceber.AtualizaListaRetorno:Boolean;
var
 i, xConta: Integer;
begin
   Result := True;
   if xTodosNossoNum <> '' then
   begin
       {DMFINANC.TAlx.Close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add(' SELECT VWPARCR.COD_PARCELACR, VWPARCR.NUMPARC, VWPARCR.NOME, VWPARCR.VALOR, VWPARCR.TIPOBOLETO, PARCELACR.MARK, PARCELACR.NOSSONUMBLT, ');
       DMFINANC.TAlx.SQL.Add(' VWPARCR.DTVENC, TMP.DATA1 AS DTDEBITO, VWPARCR.NUMBOLETO, TMP.VLR1 AS VALORPG, TMP.DESC3 COD_MOVIMENTO FROM VWPARCR');
       DMFINANC.TAlx.SQL.Add(' LEFT JOIN PARCELACR ON PARCELACR.COD_PARCELACR = VWPARCR.COD_PARCELACR ');
       DMFINANC.TAlx.SQL.Add(' LEFT JOIN TMP ON PARCELACR.NOSSONUMBLT = TMP.DESC1');
       DMFINANC.TAlx.SQL.Add(' WHERE (PARCELACR.NOSSONUMBLT IN ('+xTodosNossoNum+')) AND (PARCELACR.FECH <> ''S'') ');
       DMFINANC.TAlx.SQL.Add(' AND (PARCELACR.COD_CTACOR IN (SELECT DISTINCT CTACOR.COD_CTACOR ');
       DMFINANC.TAlx.SQL.Add('      FROM CTACOR ');
       DMFINANC.TAlx.SQL.Add('      WHERE CTACOR.NUMCTACOR IN (SELECT TMP.INT1 FROM TMP))) ');
       DMFINANC.TAlx.SQL.Text;
       DMFINANC.TAlx.Open;}

       DMFINANC.TAlx.Close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add(' SELECT distinct(VWPARCR.COD_PARCELACR), tmp.int2, VWPARCR.NUMPARC, VWPARCR.NOME, VWPARCR.VALOR, VWPARCR.TIPOBOLETO, parcelacr.fech, PARCELACR.MARK, PARCELACR.NOSSONUMBLT, ');
       DMFINANC.TAlx.SQL.Add('  VWPARCR.DTVENC, TMP.DATA1 AS DTDEBITO, VWPARCR.NUMBOLETO, TMP.VLR1 AS VALORPG, TMP.DESC3 COD_MOVIMENTO FROM VWPARCR ');
       DMFINANC.TAlx.SQL.Add('  LEFT JOIN PARCELACR ON PARCELACR.COD_PARCELACR = VWPARCR.COD_PARCELACR ');
       DMFINANC.TAlx.SQL.Add('  LEFT JOIN TMP ON PARCELACR.cod_parcelacr = TMP.int2 ');
       DMFINANC.TAlx.SQL.Add('  WHERE (PARCELACR.mark=''V'') AND (PARCELACR.FECH <> ''S'') and (tmp.int2>0)  order by parcelacr.cod_parcelacr ');
       DMFINANC.TAlx.SQL.Text;
       DMFINANC.TAlx.Open;

       DMFINANC.TAlx.Last;
       DMFINANC.TAlx.RecordCount;

       LArquivo.Caption := xCaminho;
       
       if FiltraTabela(DMCONTA.WParR, 'VWPARCR', 'COD_PARCELACR', DMFINANC.TAlx.FieldByName('COD_PARCELACR').AsString, '') then
       Begin
           DMBANCO.TAlx.Close;
           DMBANCO.TAlx.SQL.Clear;
           DMBANCO.TAlx.SQL.Add('SELECT DESCBANCO FROM VWCTACOR WHERE VWCTACOR.COD_CTACOR = '+DMCONTA.WParR.FieldByName('COD_CTACOR').AsString);
           DMBANCO.TAlx.Open;

           LConta.Caption := DMBANCO.TAlx.FieldByName('DESCBANCO').AsString;
       end;

       if DMFINANC.TAlx.IsEmpty then
       begin
           //Mensagem('    A T E N Ç Ã O   ', 'Não foi localizado nenhuma conta com base no arquivo retorno','',1,1,false,'A');
           Result := False;
       end;
   end;
end;

procedure TFCtaReceber.DBGRIDRETORNODblClick(Sender: TObject);
begin
	try
       DMFINANC.TAlxMoeda.Close;
       DMFINANC.TAlxMoeda.SQL.Clear;
       DMFINANC.TAlxMoeda.SQL.Add('UPDATE PARCELACR SET PARCELACR.MARK = :MARK WHERE PARCELACR.COD_PARCELACR = :COD_PARC');

       if DMFINANC.TAlx.FieldByName('MARK').AsString = 'X' then
           DMFINANC.TAlxMoeda.ParamByName('MARK').AsString := 'V'
       else
           DMFINANC.TAlxMoeda.ParamByName('MARK').AsString := 'X';

       DMFINANC.TAlxMoeda.ParamByName('COD_PARC').AsInteger := DMFINANC.TAlx.FieldByName('COD_PARCELACR').AsInteger;

       DMFINANC.TAlxMoeda.ExecSQL;

       DMFINANC.Transaction.CommitRetaining;

       AtualizaListaRetorno;
   except
   	on E : Exception do
       begin
       	DMFINANC.Transaction.RollbackRetaining;
	    	Mensagem('    A T E N Ç Ã O   ', 'Erro ao marcar conta '+e.Message,'',1,1,false,'E');
       end;
   end;
end;

procedure TFCtaReceber.ma(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   try
       if (xTodosNossoNum <> '') AND not (DMFINANC.TAlx.IsEmpty) then
       begin
           if (DMFINANC.TAlx.FieldByName('COD_MOVIMENTO').AsString = '06') then
           begin
               DBGRIDRETORNO.Canvas.Brush.Color := clGradientActiveCaption;
               DBGRIDRETORNO.DefaultDrawColumnCell( Rect, DataCol, Column, State);
           end
           else begin
               if (DMFINANC.TAlx.FieldByName('COD_MOVIMENTO').AsString = '02') then
               begin
                   //foi recebido pelo banco
                   DBGRIDRETORNO.Canvas.Brush.Color := clTeal;
                   DBGRIDRETORNO.DefaultDrawColumnCell( Rect, DataCol, Column, State);
               end
               else if (DMFINANC.TAlx.FieldByName('COD_MOVIMENTO').AsString = '03') then
               begin
                   //boleto foi rejeitado (joga texto no edit proprio)
                   DBGRIDRETORNO.Canvas.Brush.Color := clOlive;
                   DBGRIDRETORNO.DefaultDrawColumnCell( Rect, DataCol, Column, State);
               end
               else begin
                   DBGRIDRETORNO.Canvas.Brush.Color := clMaroon;
                   DBGRIDRETORNO.DefaultDrawColumnCell( Rect, DataCol, Column, State);
               end;
           end;
                  
           if (DMFINANC.TAlx.FieldByName('MARK').AsString = 'X') then
           begin
               DBGRIDRETORNO.Canvas.Brush.Color := clSilver;
               DBGRIDRETORNO.DefaultDrawColumnCell( Rect, DataCol, Column, State);
           end;
       end;
   except
   end;
end;

procedure TFCtaReceber.RelatriodeBancosePlanodecontas1Click(
  Sender: TObject);
begin
  inherited;
	FMenu.XTipoRel := 'CTABCPLNCTA';
	AbrirForm(TFRelBancoPlanoContas, FRelBancoPlanoContas, 0);
end;

procedure TFCtaReceber.RadioSpcSimClick(Sender: TObject);
begin
  inherited;
	FiltraParcelaEdit('');
end;

procedure TFCtaReceber.RadioSpcNaoClick(Sender: TObject);
begin
  inherited;
	FiltraParcelaEdit('');
end;

procedure TFCtaReceber.ComprovantedeEntrega1Click(Sender: TObject);
begin
  inherited;
	FMenu.TIPOREL:='COMPROVANTEENTREGABOLETO';
   AbrirForm(TFRelData, FRelData, 0);
end;

procedure TFCtaReceber.N07ReciboDespachante1Click(Sender: TObject);
begin
  inherited;  
	DMFINANC.TAlx.Close;
   DMFINANC.TALx.SQL.Clear;
	DMFINANC.TALx.SQL.Add(' select vwsubservico.cod_subservico,parcelacr.numparc as nr_recibo, ordem.cod_ordem, pessoa.nome, pessoa.cpfcnpj, vwsubservico.descricao, ');
	DMFINANC.TALx.SQL.Add(' (case when itservord.vlrunit is null then 0 else itservord.vlrunit end) as vl_servico , parcelacr.valor, (case when parcelacr.valext is null then '''' else parcelacr.valext end) as vl_ext  from vwsubservico ');
	DMFINANC.TALx.SQL.Add(' left join itservord on itservord.cod_servico = vwsubservico.cod_subservico ');
  	DMFINANC.TALx.SQL.Add(' left join ordem on itservord.cod_ordem = ordem.cod_ordem ');
  	DMFINANC.TALx.SQL.Add(' left join cliente on ordem.cod_cliente = cliente.cod_cliente ');
   DMFINANC.TALx.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
	DMFINANC.TALx.SQL.Add(' left join ctareceber on ordem.cod_ordem = ctareceber.cod_gerador and ctareceber.tipogerador = ''ORD'' ');
	DMFINANC.TALx.SQL.Add(' left join parcelacr on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
   DMFINANC.TAlx.SQL.Add(' where parcelacr.cod_parcelacr = :CD_PARCR ');
   DMFINANC.TAlx.ParamByName('CD_PARCR').AsInteger := XViewRef.FieldByName('COD_PARCELACR').AsInteger;
	DMFINANC.TALx.SQL.Add('order by ordem.cod_cliente');     
   DMFINANC.TAlx.Open;
	DMFINANC.TAlx.First;

   DB_master_data.DataSource := DMFINANC.DSALX; 

	DMMACS.TEmpresa.Open;
   
   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfReciboDespachante.frf');
   FsRel.ShowReport();
end;

procedure TFCtaReceber.cbProtestoClick(Sender: TObject);
begin
  inherited;
	//Edmar - 19/05/2015 - Ativa ou desativa o campo de protesto conforme o que foi selecionado
   if cbProtesto.Checked then
   	edDiasProtesto.Enabled := True
   else
   	edDiasProtesto.Enabled := False;   
end;

procedure TFCtaReceber.N08Recibo1Click(Sender: TObject);
begin
  inherited;
   DMESTOQUE.TRel.Close;
	DMESTOQUE.TRel.SQL.Clear;

   //Edmar - 25/05/2015 - Cria o SQL verificando se a parcela em questão possui valor pago diferente do valor real da conta
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' SELECT PARCELACR.VALORPG FROM PARCELACR WHERE (PARCELACR.COD_PARCELACR = :PARCELA) AND (PARCELACR.VALOR <> PARCELACR.VALORPG) ');
   DMESTOQUE.Alx.ParamByName('PARCELA').AsInteger := XViewRef.FieldByName('COD_PARCELACR').AsInteger;
   DMESTOQUE.Alx.Open;

   //se possuir, adiciona no TMP o novo valor em extenso da conta
   if not DMESTOQUE.Alx.IsEmpty then
   begin
       FMenu.Extenso.Numero := DMESTOQUE.Alx.FieldByName('VALORPG').AsString;

       try
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' DELETE FROM TMP ');
           MDO.Query.ExecSQL;

           MDO.Transac.CommitRetaining;
       except
           MDO.Transac.RollbackRetaining;
       end;

       try
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' INSERT INTO TMP (TMP.COD_TMP, TMP.DESC500) VALUES (:PARCELA, :EXTENSO) ');
           MDO.Query.ParamByName('PARCELA').AsInteger := XViewRef.FieldByName('COD_PARCELACR').AsInteger;
           MDO.Query.ParamByName('EXTENSO').AsString  := FMenu.Extenso.Extenso;
           MDO.Query.ExecSQL;

           MDO.Transac.CommitRetaining;
       except
           MDO.Transac.RollbackRetaining;
       end;

       DMESTOQUE.TRel.SQL.Add(' SELECT EMPRESA.RAZAO_SOCIAL, EMPRESA.CNPJ, EMPRESA.FANTASIA, EMPRESA.ENDERECO RUA_EMP, EMPRESA.NUMERO NUM_EMP, CIDADE.NOME CIDADE, ESTADO.UF_ESTADO UF, ');
       DMESTOQUE.TRel.SQL.Add(' PARCELACR.NUMPARC, VWCLIENTE.NOME CLIENTE, VWCLIENTE.ENDERECO RUA_CLI, VWCLIENTE.ENDNUMERO NUM_CLI, TMP.DESC500 EXTENSO, ');
       DMESTOQUE.TRel.SQL.Add(' VWSIMILAR.DESCRICAO PRODUTO, PARCELACR.HISTORICO, PARCELACR.VALORPG VALOR ');
       DMESTOQUE.TRel.SQL.Add(' FROM PARCELACR ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN EMPRESA ON EMPRESA.COD_EMPRESA IS NOT NULL ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN CIDADE ON CIDADE.COD_CIDADE = EMPRESA.COD_CIDADE ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN ESTADO ON ESTADO.COD_ESTADO = CIDADE.COD_ESTADO ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN TMP ON TMP.COD_TMP = PARCELACR.COD_PARCELACR ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN CTARECEBER ON CTARECEBER.COD_CTARECEBER = PARCELACR.COD_CTARECEBER ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN VWCLIENTE ON VWCLIENTE.COD_CLIENTE = CTARECEBER.COD_CLIENTE ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN PEDVENDA ON PEDVENDA.COD_PEDVENDA = CTARECEBER.COD_GERADOR AND (CTARECEBER.TIPOGERADOR = ''PEDVENDA'') OR (CTARECEBER.TIPOGERADOR = ''ORD'') ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN ITENSPEDVEN ON ITENSPEDVEN.COD_PEDVEN = PEDVENDA.COD_PEDVENDA ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN VWSIMILAR ON VWSIMILAR.COD_ESTOQUE = ITENSPEDVEN.COD_ESTOQUE ');
       DMESTOQUE.TRel.SQL.Add(' WHERE (PARCELACR.COD_PARCELACR = :PARCELA) ORDER BY PRODUTO ');
       DMESTOQUE.TRel.ParamByName('PARCELA').AsInteger := XViewRef.FieldByName('COD_PARCELACR').AsInteger;
   end
   else begin//se o valor pago não for diferente, busca pela SQL normal
       DMESTOQUE.TRel.SQL.Add(' SELECT EMPRESA.RAZAO_SOCIAL, EMPRESA.CNPJ, EMPRESA.FANTASIA, EMPRESA.ENDERECO RUA_EMP, EMPRESA.NUMERO NUM_EMP, CIDADE.NOME CIDADE, ESTADO.UF_ESTADO UF, ');
       DMESTOQUE.TRel.SQL.Add(' PARCELACR.NUMPARC, VWCLIENTE.NOME CLIENTE, VWCLIENTE.ENDERECO RUA_CLI, VWCLIENTE.ENDNUMERO NUM_CLI, PARCELACR.VALEXT EXTENSO, ');
       DMESTOQUE.TRel.SQL.Add(' VWSIMILAR.DESCRICAO PRODUTO, PARCELACR.HISTORICO, PARCELACR.VALOR ');
       DMESTOQUE.TRel.SQL.Add(' FROM PARCELACR ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN EMPRESA ON EMPRESA.COD_EMPRESA IS NOT NULL ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN CIDADE ON CIDADE.COD_CIDADE = EMPRESA.COD_CIDADE ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN ESTADO ON ESTADO.COD_ESTADO = CIDADE.COD_ESTADO ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN CTARECEBER ON CTARECEBER.COD_CTARECEBER = PARCELACR.COD_CTARECEBER ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN VWCLIENTE ON VWCLIENTE.COD_CLIENTE = CTARECEBER.COD_CLIENTE ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN PEDVENDA ON PEDVENDA.COD_PEDVENDA = CTARECEBER.COD_GERADOR AND (CTARECEBER.TIPOGERADOR = ''PEDVENDA'') OR (CTARECEBER.TIPOGERADOR = ''ORD'')');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN ITENSPEDVEN ON ITENSPEDVEN.COD_PEDVEN = PEDVENDA.COD_PEDVENDA ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN VWSIMILAR ON VWSIMILAR.COD_ESTOQUE = ITENSPEDVEN.COD_ESTOQUE ');
       DMESTOQUE.TRel.SQL.Add(' WHERE (PARCELACR.COD_PARCELACR = :PARCELA) ORDER BY PRODUTO');
       DMESTOQUE.TRel.ParamByName('PARCELA').AsInteger := XViewRef.FieldByName('COD_PARCELACR').AsInteger;
   end;
   
   DMESTOQUE.TRel.Open;

   DB_master_data.DataSource := DMESTOQUE.DRel;

	FrxRelCtaR.LoadFromFile('C:\MZR\MACS\Rel\FrfReciboProdCtaR.fr3');
   
   if FileExists(ExtractFilePath(Application.ExeName)+'logorecibo.bmp') AND (FrxRelCtaR.FindObject('LogoRec') <> nil) then
		TfrxPictureView(FrxRelCtaR.FindObject('LogoRec')).Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'logorecibo.bmp');
       
   FrxRelCtaR.ShowReport();
end;

procedure TFCtaReceber.BitBtn8Click(Sender: TObject);
begin
  inherited;
	PTextoBlt.Visible := False;
	PTextoBlt.SendToBack;   
end;

procedure TFCtaReceber.PedidodeVenda1Click(Sender: TObject);
var
   XCodCtaReceber: Integer;
begin
  inherited;
   if not ControlAccess('SOMENTE_ADMINISTRADOR', 'M') then
       Exit;
       
   try
       //Edmar - 19/08/2015 - Verifica se a conta a receber seleciona
       //já não possui algum pedido ou ordem vinculado
       XCodCtaReceber := XViewRef.FieldByName('COD_CTARECEBER').AsInteger;
       //se achou cancela processamento
       if VerificaCtaReceberVinculada(XCodCtaReceber) then
           Exit;
              
       if AbrirForm(TFPedVenda, FPedVenda, 1) = 'Selected' then
       begin
           //verifica se o pedido de venda selecionado já não está vinculado a alguma conta a receber
           if VerificaVinculo(DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsInteger, 'PEDVENDA') then
           begin
               Mensagem(' OPÇÃO BLOQUEADA ', 'O Pedido de Venda número '+DMSAIDA.WPedV.FieldByName('NUMPED').AsString+' já se encontra vinculado a Conta a Receber número '+DMCONTA.TCtaR.FieldByName('NUMDOC').AsString+'.', '', 1, 1, False, 'A');
               Exit;
           end;

           //se não foi encontrado nenhum vinculo entre o pedido e a conta a receber
           //pede confirmação do usuário, pede senha, atualiza a conta a receber e salva na tabela registro
           if Mensagem(' C O N F I R M A Ç Ã O ', 'Depois do pedido ser atrelado, a operação não poderá mais ser desfeita. Deseja continuar?', '', 2, 3, False, 'C') = 2 then
           begin
       	    AbrirForm(TFSENHA, FSENHA, 0);

               if XAlxResult then
               begin
                   try
                       //vincula o pedido a conta a receber
                       MDO.Query.Close;
                       MDO.Query.SQL.Clear;
                       MDO.Query.SQL.Add(' UPDATE CTARECEBER SET CTARECEBER.COD_GERADOR = :COD_PV, CTARECEBER.TIPOGERADOR = :TIPO WHERE CTARECEBER.COD_CTARECEBER = :COD_CTARECEBER ');
                       MDO.Query.ParamByName('COD_PV').AsInteger := DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsInteger;
                       MDO.Query.ParamByName('TIPO').AsString := 'PEDVENDA';
                       MDO.Query.ParamByName('COD_CTARECEBER').AsInteger := XCodCtaReceber;
                       MDO.Query.ExecSQL;

                       MDO.Transac.CommitRetaining;

                       Registra('CONTAS A RECEBER',
                           'VINCULO PED/CTA_REC',
                           DateToStr(Date()),
                           'PEDIDO DE VENDA VINCULADO POR '+FMenu.EdUsuario.Text,
                           'P.V: '+DMSAIDA.WPedV.FieldByName('NUMPED').AsString+'/CTAR: '+DMCONTA.TCtaR.FieldByName('NUMDOC').AsString);

                       Mensagem(' INFORMAÇÃO ', 'Vínculo realizado com sucesso!', '', 1, 1, False, 'I');                           
                   except
                       MDO.Transac.RollbackRetaining;                   
                       ShowMessage('Não foi possível vincular o Pedido de Venda a Conta a Receber.');
                   end;
               end;               
           end;
       end;
   except
       On E : Exception do
       begin
           ShowMessage('Ocorreu um problema ao procurar vinculo da Conta a Receber.'+#10#13+E.Message);
       end;
   end;
end;

//Edmar - 19/08/2015 - função auxiliar para verificar se a ordem ou pedido já possui
//vinculo com alguma conta a receber
function TFCtaReceber.VerificaVinculo(XCodGerador: Integer; XTipoGerador: String): Boolean;
begin
   //
   try
       Result := False;
       if FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_GERADOR', IntToStr(XCodGerador), ' AND TIPOGERADOR = '+QuotedStr(XTipoGerador)) then
           Result := True;
   except
       On e : Exception do
       begin
           Result := True;
           Raise Exception.Create(e.Message);
       end;
   end;
end;

//Edmar - 19/08/2015 - função auxiliar para verificar se a conta a receber selecionada
//já não está vinculada a um pedido 
function TFCtaReceber.VerificaCtaReceberVinculada(XCodContaReceber: Integer): Boolean;
var
   XTextoAuxiliar: String;
begin
   Result := False;
   try
       FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', IntToStr(XCodContaReceber), '');

       if (DMCONTA.TCtaR.FieldByName('COD_GERADOR').AsString <> '') then
       begin
           XTextoAuxiliar := '';
           if DMCONTA.TCtaR.FieldByName('TIPOGERADOR').AsString = 'ORD' then
           begin
               if FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM', DMCONTA.TCtaR.FieldByName('COD_GERADOR').AsString, '') then
                   XTextoAuxiliar := ' já está vinculada a O.S número '+DMServ.WOrdem.FieldByName('NUMERO').AsString+' do cliente '+DMServ.WOrdem.FieldByName('CLIENTE').AsString+' e';
           end
               else if DMCONTA.TCtaR.FieldByName('TIPOGERADOR').AsString = 'PEDVENDA' then
               begin
                   if FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'COD_PEDVENDA', DMCONTA.TCtaR.FieldByName('COD_GERADOR').AsString, '') then
                       XTextoAuxiliar := ' já está vinculada a O.S número '+DMSAIDA.WPedV.FieldByName('NUMPED').AsString+' do cliente '+DMSAIDA.WPedV.FieldByName('NOMECLI').AsString+' e';
               end;

           Result := True;
           Mensagem(' OPÇÃO BLOQUEADA ', 'A Conta a Receber'+XTextoAuxiliar+' não poderá ser vinculada novamente.', '', 1, 1, false, 'A');
       end
       else
           Result := False;
   except
       on e : Exception do
       begin
           Result := True;
           Raise Exception.Create(e.Message);
       end;
   end;
end;

procedure TFCtaReceber.OrdemdeServio1Click(Sender: TObject);
var
   XCodCtaReceber: Integer;
begin
  inherited;
   if not ControlAccess('SOMENTE_ADMINISTRADOR', 'M') then
       Exit;
       
   try
       //Edmar - 19/08/2015 - Verifica se a conta a receber seleciona
       //já não possui algum pedido ou ordem vinculado
       XCodCtaReceber := XViewRef.FieldByName('COD_CTARECEBER').AsInteger;
       //se achou cancela processamento
       if VerificaCtaReceberVinculada(XCodCtaReceber) then
           Exit;

       //verifica qual o tipo de ordem está configurado na loja
       if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE' Then
           if AbrirForm(TFOrdemMec, FOrdemMec, 1) <> 'Selected' then
               Exit;

       if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'DESPACHANTE' Then
           if AbrirForm(TFOrdemDesp, FOrdemDesp, 1) <> 'Selected' then
               Exit;

       if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'PETSHOP' Then
           if AbrirForm(TFOrdemPet, FOrdemPet, 1) <> 'Selected' then
               Exit;

       if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'LOCAÇÃO' Then
           if AbrirForm(TFOrdemLoca, FOrdemLoca, 1) <> 'Selected' then
               Exit;

       if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'RETIFICA' Then
           if AbrirForm(TFOrdemRetifica, FOrdemRetifica, 1) <> 'Selected' then
               Exit;

       if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'GRAFICA' Then
           if AbrirForm(TFOrdemGrafica, FOrdemGrafica, 1) <> 'Selected' then
               Exit;

       if (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'MANUTENÇÃO') and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'DESPACHANTE')
           and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'EQUIPE') and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'INDUSTRIA')
               and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'PETSHOP') and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'RETIFICA')
                   and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'LOCAÇÃO') and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'GRAFICA') Then
           if AbrirForm(TFOrdem, FOrdem, 1) <> 'Selected' then
               Exit;

       //filtra a view VWORDEM buscando suas informações
       if not FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM', IntToStr(FMenu.XCodOrdemVinculo), '') then
           Exit;

       //verifica se o pedido de venda selecionado já não está vinculado a alguma conta a receber
       if VerificaVinculo(DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger, 'ORD') then
       begin
           Mensagem(' OPÇÃO BLOQUEADA ', 'A Ordem de Serviço número '+DMServ.WOrdem.FieldByName('NUMERO').AsString+' já se encontra vinculado a Conta a Receber número '+DMCONTA.TCtaR.FieldByName('NUMDOC').AsString+'.', '', 1, 1, False, 'A');
           Exit;
       end;

       //se não foi encontrado nenhum vinculo entre o pedido e a conta a receber
       //pede confirmação do usuário, pede senha, atualiza a conta a receber e salva na tabela registro
       if Mensagem(' C O N F I R M A Ç Ã O ', 'Depois do pedido ser atrelado, a operação não poderá mais ser desfeita. Deseja continuar?', '', 2, 3, False, 'C') = 2 then
       begin
           AbrirForm(TFSENHA, FSENHA, 0);

           if XAlxResult then
           begin
               try
                   //vincula o pedido a conta a receber
                   MDO.Query.Close;
                   MDO.Query.SQL.Clear;
                   MDO.Query.SQL.Add(' UPDATE CTARECEBER SET CTARECEBER.COD_GERADOR = :COD_ORD, CTARECEBER.TIPOGERADOR = :TIPO WHERE CTARECEBER.COD_CTARECEBER = :COD_CTARECEBER ');
                   MDO.Query.ParamByName('COD_ORD').AsInteger := DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger;
                   MDO.Query.ParamByName('TIPO').AsString := 'ORD';
                   MDO.Query.ParamByName('COD_CTARECEBER').AsInteger := XCodCtaReceber;
                   MDO.Query.ExecSQL;

                   MDO.Transac.CommitRetaining;

                   Registra('CONTAS A RECEBER',
                       'VINCULO ORD/CTA_REC',
                       DateToStr(Date()),
                       'ORDEM DE SERVIÇO VINCULADA POR '+FMenu.EdUsuario.Text,
                       'P.V: '+DMServ.WOrdem.FieldByName('NUMERO').AsString+'/CTAR: '+DMCONTA.TCtaR.FieldByName('NUMDOC').AsString);

                   Mensagem(' INFORMAÇÃO ', 'Vínculo realizado com sucesso!', '', 1, 1, False, 'I');                       
               except
                   MDO.Transac.RollbackRetaining;
                   ShowMessage('Não foi possível vincular a Ordem de Serviço a Conta a Receber.');
               end;
           end;
       end;       
   except
       on E : Exception do
       begin
           ShowMessage('Ocorreu um problema ao procurar vinculo da Conta a Receber.'+#10#13+E.Message);
       end;
   end;                 
end;

procedure TFCtaReceber.DBHISTORICOExit(Sender: TObject);
begin
  inherited;
	If DBHISTORICO.Text='' Then
       DBHISTORICO.Text:=FrmConta.EdDescricao.Text;
end;

procedure TFCtaReceber.BtnRelatorioRetornoClick(Sender: TObject);
begin
  inherited;
  	//Prepara Informações complementares
   MDO.Query.Close;
   MDO.Query.SQL.Clear;
   MDO.Query.SQL.Add('update loja set loja.tmp1=:tmp1');
   MDO.Query.ParamByName('tmp1').AsString:= 'Arquivo Processado: '+LArquivo.Caption+'            Conta Corrente: '+LConta.Caption;
   MDO.Query.ExecSQL;
   MDO.Transac.CommitRetaining;

   DMSAIDA.TAlx.Close;
   DMSAIDA.TAlx.SQL.Clear;
   DMSAIDA.TAlx.SQL.Add('SELECT TMP.DESC1, TMP.DESC2, TMP.VLR1, TMP.INT1, TMP.COD_TMP, TMP.DATA1 FROM TMP WHERE TMP.INT2 =''-1'' ORDER BY TMP.DESC2');
   DMSAIDA.TAlx.Open;

   DBDataRelBol.DataSource := DMSAIDA.DAlx;

   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' SELECT LOJA.TMP1 FROM LOJA');
   DMMACS.TALX.Open;

   frxDBDadosloja.DataSource := DMMACS.DSALX;


   if not DMSAIDA.TAlx.IsEmpty then
   begin
      FrxRelCtaR.LoadFromFile('C:\MZR\MACS\Rel\RelBoletosNEncontrados.fr3');
      FrxRelCtaR.PrepareReport;
      FrxRelCtaR.Print;
   end;

   DMFINANC.TAlx.Close;
   DMFINANC.TAlx.SQL.Clear;
   DMFINANC.TAlx.SQL.Add(' SELECT distinct(VWPARCR.COD_PARCELACR), VWPARCR.NUMPARC, VWPARCR.NOME, VWPARCR.VALOR, VWPARCR.TIPOBOLETO, PARCELACR.MARK, PARCELACR.NOSSONUMBLT, ');
   DMFINANC.TAlx.SQL.Add(' VWPARCR.DTVENC, VWPARCR.NUMBOLETO, TMP.DATA1 AS DTDEBITO, VWPARCR.NUMBOLETO, TMP.INT2 AS COD_MOVIMENTO, TMP.VLR1 AS VALORPG FROM VWPARCR');
   DMFINANC.TAlx.SQL.Add(' LEFT JOIN PARCELACR ON PARCELACR.COD_PARCELACR = VWPARCR.COD_PARCELACR ');
   DMFINANC.TAlx.SQL.Add('  LEFT JOIN TMP ON PARCELACR.cod_parcelacr = TMP.int2 ');
   DMFINANC.TAlx.SQL.Add(' WHERE (PARCELACR.mark=''V'') AND (PARCELACR.FECH <> ''S'')  and (tmp.int2>0)  order by parcelacr.cod_parcelacr ');
   DMFINANC.TAlx.SQL.Text;
   DMFINANC.TAlx.Open;

   frxDBEncontrados.DataSource := DMFINANC.DSALX;

   if not DMFINANC.TAlx.IsEmpty then
   begin
      FrxRelCtaR.LoadFromFile('C:\MZR\MACS\Rel\RelBoletosEncontrados.fr3');
      FrxRelCtaR.PrepareReport;
      FrxRelCtaR.Print;
   end;
end;

procedure TFCtaReceber.BtnAtualizaJurosClick(Sender: TObject);
var
  xVlMulta: Real;
  xVlJuros: Real;
begin
  inherited;
  FMenu.XVALORMULTA := EdValorMulta.ValueNumeric;
  FMenu.XVALORJUROS := EdValorJuros.ValueNumeric;

  DMFinanc.TAlx.Close;
  DMFinanc.TAlx.SQL.Clear;
  DMFinanc.TAlx.SQL.Add(' SELECT DISTINCT(PARCELACR.COD_PARCELACR), PARCELACR.VALOR, PARCELACR.MULTA FROM PARCELACR');
  DMFINANC.TAlx.SQL.Add(' WHERE PARCELACR.COD_PARCELACR = :COD');
  DMFINANC.TAlx.ParamByName('COD').AsInteger := DMCONTA.WParR.FieldByName('COD_PARCELACR').AsInteger;
  DMFINANC.TAlx.Open;

  if (CBJUROS.Checked = false) and (FMenu.XVALORMULTA = 0) then
     xVlMulta := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency) * (DMMACS.TLoja.FieldByName('MULTA').AsCurrency / 100)) / 30
  else if (FMenu.XVALORMULTA <> 0) AND (CBJUROS.Checked = false) then
     xVlMulta := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency) * (FMenu.XVALORMULTA / 100))
  else
     xVlMulta := 0;

  if (CBJUROS.Checked = false) and (FMenu.XVALORMULTA = 0) then
    xVlJuros := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency + xVlMulta) * (DMMACS.TLoja.FieldByName('JUROS').AsCurrency / 100)) / 30
  else if (FMenu.XVALORJUROS <> 0) and (CBJUROS.Checked = false) then
    xVlJuros := ((DMFinanc.TAlx.FieldByName('VALOR').AsCurrency + xVlMulta) * (FMenu.XVALORJUROS / 100)) / 30
  else
    xVlJuros := 0;

  MMJurosMultas.Text := 'Cobrar juros de R$ '+FormatFloat('0.00', xVlJuros)+' por dia de atraso'+#13#10+'Cobrar multa de R$ '+FormatFloat('0.00', xVlMulta)+' após o vencimento.';
  MMJurosMultas.Repaint;

  {
  DMFINANC.TAlx.Close;
  DMFINANC.TAlx.SQL.Clear;
  DMFINANC.TAlx.SQL.Add(' UPDATE PARCELACR SET PARCELACR.MULTA = :MULTA, PARCELACR.JUROS = :JUROS ');

  if CbDefineQuant.Checked = true then
  begin
   DMFINANC.TAlx.SQL.Add(' WHERE PARCELACR.COD_CTARECEBER = :COD');
   DMFINANC.TAlx.ParamByName('COD').AsInteger := DMCONTA.WParR.FieldByName('COD_CTARECEBER').AsInteger;
  end
  else begin
   DMFINANC.TAlx.SQL.Add(' WHERE PARCELACR.COD_PARCELACR = :COD');
   DMFINANC.TAlx.ParamByName('COD').AsInteger := DMCONTA.WParR.FieldByName('COD_PARCELACR').AsInteger;
  end;
  DMFINANC.TAlx.ParamByName('MULTA').AsString := FloatToString(EdValorMulta.ValueNumeric);
  DMFINANC.TAlx.ParamByName('JUROS').AsString := FloatToString(EdValorJuros.ValueNumeric);

  DMFINANC.TAlx.ExecSQL;
  try
   DMFINANC.Transaction.CommitRetaining;
  except
   DMFINANC.Transaction.RollbackRetaining;
  end;
  }
end;


procedure TFCtaReceber.RecibodeFatura1Click(Sender: TObject);
begin
  inherited;
  //EFETUA CONTROLE DE ACESSO
  If ControlAccess('REIMPDUP', 'M')=False Then
  	Exit;
  FMenu.TIPOREL:='COMPROVANTEFATCONTA';
	//Edmar - 04/06/2014 - Se entrar no primeira condição quer dizer que quem chamou o comprovante foi a aba baixados
  If FiltraTabela(DMMACS.TALX, 'itensfaturaconta', 'cod_parcela', XViewRef.FieldByName('cod_parcelacr').AsString, '')=True
  Then Begin
   If FiltraTabela(DMMACS.TALX, 'faturaconta', 'cod_faturaconta', DMMACS.TALX.FieldByName('cod_faturaconta').AsString, '')=True
   Then Begin
     ImpReciboFaturaContas(DMMACS.TALX.FieldByName('cod_faturaconta').AsInteger, 'CONTAS', 'CR');
   	 FMenu.RvFaturas.SystemPreview.FormState := wsMaximized;
   	 FMenu.RvFaturas.DefaultDest := rdPreview;  //- 19/02/2009: visualizar o relatório direto
   	 FMenu.RvFaturas.SystemPrinter.Units := unMM; //- 19/02/2009: trabalha nos milimetros da página
   	 FMenu.RvFaturas.SystemPReview.RulerType := rtBothCm; //- 19/02/2009: mostra régua superior e lateral
   	 FMenu.RvFaturas.Execute;
   end;
  end
  else begin//Edmar - 04/06/2014 - Do contrario, foi da aba pendentes
		//Edmar - 04/06/2014 - Filtra ctareceber buscar o codigo gerador que é o codigo da fatura
    FiltraTabela(DMMACS.TALX, 'ctareceber', 'cod_ctareceber', XViewRef.FieldByName('cod_ctareceber').AsString, '');
    ImpReciboFaturaContas(DMMACS.TALX.FieldByName('cod_gerador').AsInteger, 'CONTAS', 'CR');
    FMenu.RvFaturas.SystemPreview.FormState := wsMaximized;
    FMenu.RvFaturas.DefaultDest := rdPreview;  //- 19/02/2009: visualizar o relatório direto
    FMenu.RvFaturas.SystemPrinter.Units := unMM; //- 19/02/2009: trabalha nos milimetros da página
    FMenu.RvFaturas.SystemPReview.RulerType := rtBothCm; //- 19/02/2009: mostra régua superior e lateral
    FMenu.RvFaturas.Execute;
  end;
end;

procedure TFCtaReceber.btnLerRetornoPastaClick(Sender: TObject);
Var
	XCountListaArquivos: Integer;
begin
  inherited;
	try
   	MessageDlg('ATENÇÃO!!!'+#13+#10+'Essa função processará todos os arquivos de retorno dentro de uma mesma pasta, podendo conter arquivos de diversos bancos. Porém a baixa ocorrerá somente no banco informado abaixo:', mtWarning, [mbOK], 0);
       LConta.Caption:='';
       LArquivo.Caption:='';
		xCaminho := '';
     	OpenDialog1.InitialDir := 'C:/MZR';

     	if not OpenDialog1.Execute then
           Exit;
           
     	xCaminho := ExtractFilePath(OpenDialog1.FileName);
              
		FLBRetorno.Directory:=xCaminho;
       mmStatusBoletos.Lines.Clear;
     	xTodosNossoNum := '';
     	try
			xcodtmp := 1;
       	DMMACS.TALX.Close;
         	DMMACS.TALX.SQL.Clear;
         	DMMACS.TALX.SQL.Add('DELETE FROM TMP');
         	DMMACS.TALX.ExecSQL;
         	DMMACS.Transaction.CommitRetaining;
     	except
         	DMMACS.Transaction.RollbackRetaining;
     	end;

		For XCountListaArquivos:=0 to FLBRetorno.items.count-1 do
		begin
           FMenu.XTIPOBOLTO:=FLBRetorno.Items[XCountListaArquivos];
           AssignFile(xRetorno, FLBRetorno.Items[XCountListaArquivos]);
           Reset(xRetorno);
           //Edmar - 09/09/2014 - Lê linha por linha do arquivo
           //e joga toda a informação da linha para a variavel xInfo
           Readln(xRetorno, xInfo);
           if (xInfo[1] = '0') AND (xInfo[2] = '2') AND (xInfo[3] = 'R')
           Then Begin
               xAuxBanco:=  xInfo[3] + xInfo[4] + xInfo[5] + xInfo[6] + xInfo[7] + xInfo[8] + xInfo[9] + xInfo[77] + xInfo[78] + xInfo[79];
               If xAuxBanco='RETORNO756'
               Then Begin
                   //SICOOB - Lay-out cnab 400
                   RetornoCnab400Bancoob;
               End;
           End;
           if (xInfo[1] = '7') AND (xInfo[2] = '5') AND (xInfo[3] = '6')
           Then Begin
               //SICOOB - Lay-out cnab 400
               RetornoCnab240Bancoob;
           End;
           if (xInfo[1] = '1') AND (xInfo[2] = '0') AND (xInfo[3] = '4')
           Then Begin
               //CAIXA - Lay-Out Cnab 240 da caixa
               RetornoCnab240Caixa;
           end;
           DMMACS.Transaction.CommitRetaining;
       End;
     	//Edmar - 17/09/2014 - Copy para tirar a ultima virgula
       xTodosNossoNum := Copy(xTodosNossoNum, 0, Length(xTodosNossoNum)-2);
     	if xTodosNossoNum <> '' then
     	begin
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add(' UPDATE PARCELACR SET PARCELACR.MARK = ''V'' ');
           DMFINANC.TAlx.SQL.Add(' where exists (Select * from tmp where tmp.int2 = parcelacr.cod_parcelacr)  AND (PARCELACR.FECH <> ''S'') ');
           DMFINANC.TAlx.ExecSQL;               
           try
               DMFINANC.Transaction.CommitRetaining;
           except
               DMFINANC.Transaction.RollbackRetaining;
           end;
     	end;
       
       pListaRetorno.Visible := True;
       pListaRetorno.BringToFront;
       AtualizaListaDiferenca;
       AtualizaListaRetorno;
       PNEncontrados.Visible := True;
       PNEncontrados.BringToFront;
   except
       on e : Exception do
   	begin
   		Mensagem('    A T E N Ç Ã O   ', 'Erro ao ler arquivo retorno '+e.Message, '', 1, 1, false, 'E');
			DMMACS.Transaction.RollbackRetaining;
   	end;
	end;
end;

procedure TFCtaReceber.AnteciparSelecionadas1Click(Sender: TObject);
begin
  inherited;
   FMenu.XTipoRel:='ANTECIPACAO';
   AbrirForm(TFAntecipaCR, FAntecipaCR, 0);
   FMenu.XTipoRel:='';
end;

procedure TFCtaReceber.ExtornarSelecionadas1Click(Sender: TObject);
begin
  inherited;
   FMenu.XTipoRel:='EXTORNAR';
   AbrirForm(TFAntecipaCR, FAntecipaCR, 0);
   FMenu.XTipoRel:='';
end;

procedure TFCtaReceber.LiquidarSelecionadas1Click(Sender: TObject);
begin
  inherited;
   FMenu.XTipoRel:='LIQUIDAR';
   AbrirForm(TFAntecipaCR, FAntecipaCR, 0);
   FMenu.XTipoRel:='';
end;

procedure TFCtaReceber.AnteciparSelecionadas2Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('LANCX', 'M')=False Then
  		Exit;
   FMenu.XTipoRel:='ANTECIPACAO';
   AbrirForm(TFAntecipaCR, FAntecipaCR, 0);
   FMenu.XTipoRel:='';
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
end;

procedure TFCtaReceber.ExtornarSelecionadas2Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('LANCX', 'M')=False Then
  		Exit;
   FMenu.XTipoRel:='ESTORNAR';
   AbrirForm(TFAntecipaCR, FAntecipaCR, 0);
   FMenu.XTipoRel:='';
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
end;

procedure TFCtaReceber.LiquidarSelecionadas2Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('LANCX', 'M')=False Then
  		Exit;
   FMenu.XTipoRel:='LIQUIDAR';
   AbrirForm(TFAntecipaCR, FAntecipaCR, 0);
   FMenu.XTipoRel:='';
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
end;

procedure TFCtaReceber.MarcarContaparaAntecipao1Click(Sender: TObject);
begin
  inherited;
  	xSqlFiltro := XViewRef.SQL.Text;
	//selecionar a parcela para ser marcada
   If FiltraTabela(DMconta.TParcCR, 'PARCELACR', 'COD_PARCELACR', XViewRef.FieldByName('COD_PARCELACR').AsString, '')
   Then Begin
   	DMCONTA.TParcCR.Edit;
       If DMCONTA.TParcCR.FieldByName('MARK').AsString='X' Then
       	DMCONTA.TParcCR.FieldByName('MARK').AsString:=''
       Else
           DMCONTA.TParcCR.FieldByName('MARK').AsString:='X';
       DMCONTA.TParcCR.Post;
       DMCONTA.IBT.CommitRetaining;
		TCConsultContas.OnTabChanged(Sender);
   End;

   if xSqlFiltro <> '' then
   begin
   	XViewRef.Close;
       XViewRef.SQL.Clear;
       XViewRef.SQL.Add(xSqlFiltro);
   	XViewRef.Open;
   end;
end;

end.
