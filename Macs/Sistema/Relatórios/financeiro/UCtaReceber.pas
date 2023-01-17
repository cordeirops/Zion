unit UCtaReceber;

interface
                                                       
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoContas, TFlatHintUnit, DBCtrls, StdCtrls,
  DBColorComboBox, DBColorEdit, Mask, ColorMaskEdit, Grids, DBGrids,
  TFlatTabControlUnit, Buttons, jpeg, ExtCtrls, EditFloat, ColorEditFloat,
  Qrctrls, QuickRpt, Menus, UFrmBusca, FR_DSet, FR_DBSet, FR_Class,
  IBEvents, gbCobranca, DrLabel, Printers, XP_Button, TFlatButtonUnit,
  cxTextEdit, cxControls, cxContainer, cxEdit, cxGroupBox, cxRadioGroup,
  RpBase, RpSystem, RpDefine, RpRave, ComCtrls;

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
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    rdgLayoutArquivoRemessa: TRadioGroup;
    gbCobranca1: TgbCobranca;
    SaveDialog1: TSaveDialog;
    GroupBox19: TGroupBox;
    txtRelatorioRetorno: TMemo;
    gbTitulo2: TgbTitulo;
    BitBtn10: TBitBtn;
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
    TMTextoBlt: TMemo;
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
    Bevel7: TBevel;
    Label37: TLabel;
    Bevel8: TBevel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Bevel9: TBevel;
    Label41: TLabel;
    Bevel10: TBevel;
    Label42: TLabel;
    Label43: TLabel;
    Bevel11: TBevel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
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
    FloatEdit1: TFloatEdit;
    GroupBox32: TGroupBox;
    EdHistoricoCartao: TColorMaskEdit;
    GroupBox35: TGroupBox;
    CBCobrancaCartao: TComboBox;
    GroupBox33: TGroupBox;
    CBBandeira: TComboBox;
    BtnFaturaContas: TBitBtn;
    QRDBText83: TQRDBText;
    RecibodeFatura1: TMenuItem;
    N06RecibodaFatura1: TMenuItem;
    Label47: TLabel;
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
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
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
    procedure DBHISTORICOKeyPress(Sender: TObject; var Key: Char);
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
    procedure BtnFiltrarClick(Sender: TObject);
    procedure BtnFaturaContasClick(Sender: TObject);
    procedure RecibodeFatura1Click(Sender: TObject);
    procedure N06RecibodaFatura1Click(Sender: TObject);
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
implementation

uses UDMFinanc, UDMPessoa, UDMConta, UMenu, URelCtaPR, Alxor32, UDMMacs,
  AlxMessage, UCtaCor, UDmBanco, DB, UDMEstoque, Math, IBQuery, UCadPadrao,
  Variants, URelCtasSetor, UDMGEOGRAFIA, Alxorprn, UFaturaContas;

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
       DMFINANC.TAlx.close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add(' Select parcelacr.mark, parcelacr.numparc, vwparcr.numcartao, vwparcr.dtlanc, ');
       DMFINANC.TAlx.SQL.Add('        parcelacr.dtvenc, parcelacr.valor, parcelacr.cobranca, vwparcr.formpag, ');
       DMFINANC.TAlx.SQL.Add('        vwparcr.nome, parcelacr.historico, cartao.bandeira, cartao.descricao, ');
       DMFINANC.TAlx.SQL.Add('        cartao.cod_cartao, parcelacr.cod_parcelacr  from vwparcr ');
       DMFINANC.TAlx.SQL.Add(' left join parcelacr on vwparcr.cod_parcelacr = parcelacr.cod_parcelacr ');
       DMFINANC.TAlx.SQL.Add(' left join cartao on parcelacr.cod_cota = cartao.cod_cartao ');
       DMFINANC.TAlx.SQL.Add('   WHERE (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') AND (vwparcr.fech<>'+#39+'S'+#39+')');
		If XTipoFiltro='COBRANCA' Then
       	DMFINANC.TAlx.SQL.Add('  and (parcelacr.cobranca = '+#39+CBCobrancaCartao.Text+#39+') ');
		If XTipoFiltro='BANDEIRA' Then
       	DMFINANC.TAlx.SQL.Add('  and (CARTAO.bandeira = '+#39+CBBandeira.Text+#39+') ');
		If (XTipoFiltro<>'BANDEIRA') and (XTipoFiltro<>'COBRANCA')
       Then Begin
      		If CBCobrancaCartao.Text<>'Todos' Then
       		DMFINANC.TAlx.SQL.Add('  and (parcelacr.cobranca = '+#39+CBCobrancaCartao.Text+#39+') ')
           Else
	      		DMFINANC.TAlx.SQL.Add('  and ((parcelacr.cobranca = '+#39+'C - Cartão'+#39+') or (parcelacr.cobranca = '+#39+'D - Cartão'+#39+')) ');
			If CBBandeira.Text<>'Todos' Then
       		DMFINANC.TAlx.SQL.Add('  and (CARTAO.bandeira = '+#39+CBBandeira.Text+#39+') ');           
       End;
		If XTipoFiltro='VENCIMENTO'
       Then Begin
       	DMFINANC.TAlx.SQL.Add(' And (parcelacr.DTVENC Between :Data1 and :Data2) ');
       	DMFINANC.TAlx.ParamByName('Data1').AsString:=EdVencCartao01.TEXT;
       	DMFINANC.TAlx.ParamByName('Data2').AsString:=EdVencCartao02.TEXT;
       End;
		If XTipoFiltro='LANCAMENTO'
       Then Begin
       	DMFINANC.TAlx.SQL.Add(' And (parcelacr.DTLANC = :Data1) ');
       	DMFINANC.TAlx.ParamByName('Data1').AsString:=EdDtLancCartao.TEXT;
       End;
		If XTipoFiltro='DOCUMENTO' Then
       	DMFINANC.TAlx.SQL.Add('  and (parcelacr.numparc like '+#39+EdDocCartao.Text+'%'+#39+') ');
		If XTipoFiltro='PESSOA' Then
       	DMFINANC.TAlx.SQL.Add('  and (upper(vwparcr.nome) like'+#39+UpperCase(EdPessoaCartao.Text)+'%'+#39+') ');
		If XTipoFiltro='HISTORICO' Then
       	DMFINANC.TAlx.SQL.Add('  and (upper(parcelacr.historico) like'+#39+UpperCase(EdHistoricoCartao.Text)+'%'+#39+') ');
		If XTipoFiltro='' Then
			DMFINANC.TAlx.SQL.Add('  and (parcelacr.cobranca like '+#39+'%Cartão'+#39+') ');


       DMFINANC.TAlx.SQL.Add('  order by vwparcr.dtlanc, vwparcr.dtvenc  ');
       DMFINANC.TAlx.Open;
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
   DMMACS.TALX.SQL.Add(' Where (COD_LOJA = :CODLOJA) ');
   DMMACS.TALX.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;

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
   XViewRef.SQL.Add('Where (COD_LOJA = :CODLOJA) ');
   XViewRef.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
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
       XViewRef.SQL.Add(' And (SCPC = '+#39+'S'+#39+') ');
       DMFINANC.TAlx.SQL.Add(' And (SCPC = '+#39+'S'+#39+') ');
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
 Try
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
		gbTitulo1.NossoNumero:=DMFinanc.TAlx.FieldByName('NOSSONUMBLT').AsString;
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

       DMCONTA.WParR.Close;
       DMCONTA.WParR.SQL.Clear;
       DMCONTA.WParR.SQL.Add('select * from vwparcr ');
       DMCONTA.WParR.SQL.Add(' where (vwparcr.cod_loja = '+#39+FMenu.LCODLOJA.Caption+#39+')  AND (vwparcr.tipoboleto='+#39+'R'+#39+') AND ((FECH<>'+#39+'S'+#39+') OR (FECH IS NULL))  AND ((REMESSA IS NULL) OR (REMESSA<>'+#39+'ENVIADO'+#39+') AND (REMESSA<>'+#39+'RECUSADO'+#39+') ) AND (vwparcr.cod_ctacor=:COD_CTACOR) ORDER BY VWPARCR.NUMPARC');
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
       DMCONTA.WParR.SQL.Add(' where (vwparcr.cod_loja = '+#39+FMenu.LCODLOJA.Caption+#39+')  AND (vwparcr.tipoboleto='+#39+'R'+#39+') AND ((FECH<>'+#39+'S'+#39+') OR (FECH IS NULL))  AND ((REMESSA IS NULL) AND (REMESSA<>'+#39+'RECUSADO'+#39+')) ORDER BY VWPARCR.NUMPARC');
       DMCONTA.WParR.ParamByName('COD_CTACOR').AsInteger:=DMBANCO.WCtaCor.FieldByName('cod_ctacor').AsInteger;
		DMCONTA.WParR.Open;
   End;
End;

procedure TFCtaReceber.FormActivate(Sender: TObject);
begin
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
    If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE') and (DMMACS.TLoja.FieldByName('SERVNFE').AsString='1')
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
   RBDuplicata.Checked:=True;



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
       RecibodeFatura1.Visible := False;
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
		If Mensagem('ATENÇÃO', FMenu.LUSUARIO.Caption+', Deseja imprimir Boleto para esta conta?', '', 2, 3, false, 'c')=2
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
  	 	If RBDuplicata.Checked=True
    	Then Begin
			If XIMP=1 Then
				ImpDuplicata(XCODCTA, 1);
   	End;
   	If RdCarne.Checked=True
   	Then Begin
			If XIMP=1 Then
				ImpCarne(XCODCTA, 1, 1);
   	End;
  		If RBBoleto.Checked=True
   	Then Begin
			If XIMP=1 Then
				ImpBoleto(XCODCTA, 1, false);
   	End;
    End;
end;

procedure TFCtaReceber.RBBoletoExit(Sender: TObject);
begin
  inherited;
	If RBBoleto.Checked=True
   Then Begin
   	FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
		If AbrirForm(TFCadCtacor, FCadCtaCor, 1) = 'Selected'
   	Then Begin
       	XCOD_CTACORBLT:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
   	End
   	Else Begin
       	XCOD_CTACORBLT:=-1;
   	end;
   End;
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
	FiltraRemessa;
end;

procedure TFCtaReceber.DBLookupComboBox1Click(Sender: TObject);
begin
  inherited;
	FiltraRemessa;
end;

procedure TFCtaReceber.BitBtn8Click(Sender: TObject);
VAR
	XNomeRemessa: String;
   Data: Integer;
   Mes:String;
   Year, Month, Day:word;

begin
  inherited;
	gbCobranca1.Titulos.Clear;

   FiltraTabela(DMBANCO.WAgencia, 'VWAGENCIA', 'COD_AGENCIA', DMBANCO.WCtaCor.FieldByName('COD_AGENCIA').AsString, '');
   FiltraTabela(DMBANCO.TCtaCor, 'CTACOR', 'COD_CTACOR', DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString, '');
   If DMBANCO.WAgencia.FieldByName('NUMBANC').AsString='748'
  	Then Begin
   	DecodeDate(Date(), Year, Month, Day);
   	// (5) numero cedente + (1) mes atual + (2) dia da criação do arquivo
       If Month=10 Then
       	XNomeRemessa:=DMBANCO.TCtaCor.FieldByName('codcedenteblt').AsString+'O';
       If Month=11 Then
       	XNomeRemessa:=DMBANCO.TCtaCor.FieldByName('codcedenteblt').AsString+'N';
       If Month=12 Then
       	XNomeRemessa:=DMBANCO.TCtaCor.FieldByName('codcedenteblt').AsString+'D';
       If (Month<>10) AND (Month<>11) AND (Month<>12) Then
       	XNomeRemessa:=DMBANCO.TCtaCor.FieldByName('codcedenteblt').AsString+IntToStr(Month);
       If Day>9 Then
       	XNomeRemessa:=XNomeRemessa+IntToStr(Day)+'.crm'
       Else
       	XNomeRemessa:=XNomeRemessa+'0'+IntToStr(Day)+'.crm';
       SaveDialog1.FileName:=XNomeRemessa;
   End;
   if SaveDialog1.Execute then
   	XNomeRemessa := SaveDialog1.FileName
   else
   	Exit;

   gbCobranca1.DataArquivo := Now();
   case rdgLayoutArquivoRemessa.ItemIndex of
      0 : gbCobranca1.LayoutArquivo := laCNAB240;
      1 : gbCobranca1.LayoutArquivo := laCNAB400
   else
      gbCobranca1.LayoutArquivo := laOutro;
   end;
   gbCobranca1.NomeArquivo := XNomeRemessa;

   gbCobranca1.NumeroArquivo:=DMBANCO.TCtaCor.FieldByName('CONTREMESSA').AsInteger;
   DMCONTA.WParR.First;
   While not DMCONTA.WParR.Eof Do
   Begin
       InsertBoletoRemessa(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger);
   	gbCobranca1.Titulos.Add(gbTitulo1);
   	gbCobranca1.GerarRemessa;
       DMCONTA.WParR.Next;
   End;
   DMCONTA.IBT.CommitRetaining;
   txtRelatorioRetorno.Clear;
   txtRelatorioRetorno.Lines.AddStrings(gbCobranca1.Relatorio);
   DMBANCO.TCtaCor.Edit;
   If DMBANCO.TCtaCor.FieldByName('CONTREMESSA').AsInteger<=0 Then
   	DMBANCO.TCtaCor.FieldByName('CONTREMESSA').AsInteger:=1
   Else
   	DMBANCO.TCtaCor.FieldByName('CONTREMESSA').AsInteger:=DMBANCO.TCtaCor.FieldByName('CONTREMESSA').AsInteger+1;
       
   DMBANCO.TCtaCor.Post;
   DMBANCO.IBT.CommitRetaining;
   FiltraRemessa;
   MessageDlg('O Arquivo remessa foi gerado', mtWarning, [mbOK], 0);
end;

procedure TFCtaReceber.BitBtn9Click(Sender: TObject);
begin
  inherited;
	If Mensagem('Confirmação do usuário', 'Deseja realmente confirmar a entrega do arquivo remessa? ', '', 2, 3, False, 'c')=2
   Then Begin
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

       FiltraRemessa;
   End;
end;

procedure TFCtaReceber.FormCreate(Sender: TObject);
begin
  inherited;
	Try
		Brush.Style:=bsClear;
	Except
   End;
end;

procedure TFCtaReceber.BitBtn10Click(Sender: TObject);
begin
  inherited;
	gbCobranca1.Titulos.Clear;
   if OpenDialog1.Execute
   then begin
   	PRetorno.Visible:=True;
       PRetorno.BringToFront;
       BitBtn11.SetFocus;
   end
   else begin
       Exit;
       PRetorno.Visible:=False;
   end;
   gbCobranca1.NomeArquivo := OpenDialog1.FileName;
   gbCobranca1.LerRetorno;
   MRetorno.Clear;
   MRetorno.Lines.AddStrings(gbCobranca1.Relatorio);
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
begin
  inherited;
   If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMCONTA.WParR.FieldByName('cod_parcelacr').AsString, '')=True
   Then Begin
       XCOD_CTACORBLT:=DMCONTA.TParcCR.FieldByName('cod_ctacor').AsInteger;
       ImpBoleto(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger, 2, false);
   End
   Else Begin
       FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
	    If AbrirForm(TFCadCtacor, FCadCtaCor, 1) = 'Selected'
       Then Begin
           XCOD_CTACORBLT:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
           ImpBoleto(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger, 2, false);
       End
       Else Begin
           XCOD_CTACORBLT:=-1;
       end;
   End;
end;

//painel para gravar texto complementar do boleto fica visível
procedure TFCtaReceber.NovoBoleto1Click(Sender: TObject);
begin
  inherited;
   XCarne:=False;   
   FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
	If AbrirForm(TFCadCtacor, FCadCtaCor, 1) = 'Selected'
   Then Begin
       PTextoBlt.Visible:=True;
       PTextoBlt.BringToFront;
       TMTextoBlt.Text:='';
  end
  Else Begin
       XCOD_CTACORBLT:=-1;
   end;
end;

//grava texto complementar do boleto e chama a impressão do mesmo
procedure TFCtaReceber.BtnGravaTextoBltClick(Sender: TObject);
begin
  inherited; //filtra parcelas para editar o texto do boleto

   If CbDefineQuant.Checked=True
   Then Begin
       //Paulo 24/01/2011: VErifica se é boleto ou carnê e imprimi o solicitado
       if XCarne = false then
       begin
           //Alex - 01/04/2009: Seleciona todas as parcelas relacionadas para enviar para impressão
           If Mensagem('Confirmação do usuário', 'Os Boletos serão enviados diretamente para impressora padrão. Confirma?', '', 2, 3, False, 'c')=2
           Then Begin
               If FiltraTabela(DMESTOQUE.Alx, 'vwparcr', 'cod_ctareceber', XViewRef.FieldByName('cod_ctareceber').AsString, '')=True
               Then Begin
                   PTextoBlt.Visible:=False;
                   PTextoBlt.SendToBack;
                   XCOD_CTACORBLT:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;

                   DMESTOQUE.Alx.First;
                   WHILE NOT DMESTOQUE.Alx.Eof do
                   Begin
                       If (DMESTOQUE.Alx.FieldByName('FECH').AsString<>'S') or (DMESTOQUE.Alx.FieldByName('FECH').AsString='')
                       Then Begin
                          FiltraTabela(XViewRef, 'vwparcr', 'cod_parcelacr', DMESTOQUE.Alx.FieldByName('cod_parcelacr').AsString, '');
                          FiltraTabela(DMCONTA.TParcCR, 'parcelacr', 'cod_parcelacr', XViewRef.FieldByName('cod_parcelacr').AsString, '');
                          DMCONTA.TParcCR.Edit;
                          DMCONTA.TParcCR.FieldByName('TEXTOBLT').AsString:=TMTextoBlt.Text;
                          DMCONTA.TParcCR.Post;
                          DMCONTA.IBT.CommitRetaining;
                          ImpBoleto(XViewRef.FieldByName('cod_parcelacr').AsInteger, 0, true); 
                       End;
                       DMESTOQUE.Alx.Next;
                   End;
               End
               Else Begin
                   MessageDlg('NENHUMA PARCELA FOI ENCONTRADA', mtWarning, [mbOK], 0);
               End;
               XCarne:=False;
           End;
       end
       else begin
           GravaTextoCarne(Sender);
       end;   
   End
   Else Begin
    FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'cod_parcelacr','', 'cod_parcelacr = ' +DMCONTA.WParR.FieldByName('COD_PARCELACR').AsString);

    DMCONTA.TParcCR.Edit;
    DMCONTA.TParcCR.FieldByName('TEXTOBLT').AsString:=TMTextoBlt.Text;
    DMCONTA.TParcCR.Post;
    DMCONTA.IBT.CommitRetaining;

    PTextoBlt.Visible:=False;
    PTextoBlt.SendToBack;

    //chama impressão do boleto
    XCOD_CTACORBLT:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
    //Paulo 24/01/2011: VErifica se é boleto ou carnê e imprimi o solicitado
    if not XCarne = true then
       ImpBoleto(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger, 0, false)
    else
       ImpCarne(XViewRef.FieldByName('cod_parcelacr').AsInteger, 0, 1);
   End;
   XCarne:=False;    
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
	If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMCONTA.WParR.FieldByName('COD_PARCELACR').AsString, '')
   Then Begin
       DMCONTA.TParcCR.Edit;
       DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString;
   	If DMCONTA.TParcCR.FieldByName('SCPC').AsString<>'1' Then
       	DMCONTA.TParcCR.FieldByName('SCPC').AsString:='1'
		Else
       	DMCONTA.TParcCR.FieldByName('SCPC').AsString:='0';
     	DMCONTA.TParcCR.Post;
       DMCONTA.IBT.CommitRetaining;
   End;
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
	if DMCONTA.WParR.FieldByName('scpc').AsString='1' then
   begin
  		DBGridCadastroPadrao.Canvas.Font.Color := clRed;
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
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   	DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP1').AsString:= 'Filtros:' + #13 + 'Sem intervalo de datas' + #13 + 'Cliente: ' + DMCONTA.WParR.FieldByname('nome').AsString + ' - Todas as contas pendentes';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
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
      		DMMACS.TLoja.Edit;
      		DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Ctas Receber/Extrato de contas/Dados de Pessoa Jurídica';
      		DMMACS.TLoja.Post;
      		DMMACS.Transaction.CommitRetaining;
      		FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
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
begin
  inherited;
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
   DMCONTA.WParR.SQL.Add('Select * From VWparCR  Where (VWparCR.COD_LOJA = :CODLOJA)  And (VWparCR.Fech <> '+#39+'S'+#39+')   And (VWparCR.MARK = '+#39+'X'+#39+')');
   DMCONTA.WParR.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   DMCONTA.WParR.Open;
end;

procedure TFCtaReceber.DBHISTORICOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If DBHISTORICO.Text='' Then
       DBHISTORICO.Text:=FrmConta.EdDescricao.Text;
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
	If RdCarne.Checked=True
   Then Begin
   	FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
		If AbrirForm(TFCadCtacor, FCadCtaCor, 1) = 'Selected'
   	Then Begin
       	XCOD_CTACORBLT:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
   	End
   	Else Begin
       	XCOD_CTACORBLT:=-1;
   	end;
   End;

end;

procedure TFCtaReceber.NovoCarn1Click(Sender: TObject);
begin
  inherited;
       XCarne:=True;
       FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
       If AbrirForm(TFCadCtacor, FCadCtaCor, 1) = 'Selected'
       Then Begin
           PTextoBlt.Visible:=True;
           PTextoBlt.BringToFront;
           TMTextoBlt.Text:='';
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
         ImpCarne(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger, 0, 2);

     End
     Else Begin

         XCOD_CTACORBLT:=-1;
     End;
end;

//Paulo 09/02/2011: Para gerar o carne novo
procedure TFCtaReceber.GravaTextoCarne(Sender: TObject);
begin
  inherited; //filtra parcelas para editar o texto do boleto
    
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
                DMCONTA.TParcCR.FieldByName('TEXTOBLT').AsString:=TMTextoBlt.Text;
                DMCONTA.TParcCR.Post;
                DMCONTA.IBT.CommitRetaining;
             End;
             DMESTOQUE.Alx.Next;
         End;

         ImpCarne(XViewRef.FieldByName('cod_ctareceber').AsInteger, 1, 1);
     End
     Else Begin
         MessageDlg('NENHUMA PARCELA FOI ENCONTRADA', mtWarning, [mbOK], 0);
     End;

end;
procedure TFCtaReceber.OutraviadeTodas1Click(Sender: TObject);
begin
  inherited;
     If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMCONTA.WParR.FieldByName('cod_parcelacr').AsString, '')=True
     Then Begin
         XCOD_CTACORBLT:=DMCONTA.TParcCR.FieldByName('cod_ctacor').AsInteger;
         ImpCarne(XViewRef.FieldByName('cod_ctareceber').AsInteger,1, 2);
     End
     Else Begin

         XCOD_CTACORBLT:=-1;
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
       DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\PctasReceber.lgm');
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

procedure TFCtaReceber.BtnFiltrarClick(Sender: TObject);
begin
//  inherited;
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

procedure TFCtaReceber.RecibodeFatura1Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('REIMPDUP', 'M')=False Then
   	Exit;
   FMenu.TIPOREL:='COMPROVANTEFATCONTA';
   ImpReciboFaturaContas(XViewRef.FieldByName('COD_PARCELACR').AsInteger, 'CONTAS', 'CR');
   FMenu.RvFaturas.SystemPreview.FormState := wsMaximized;
   FMenu.RvFaturas.DefaultDest := rdPreview;  //- 19/02/2009: visualizar o relatório direto
   FMenu.RvFaturas.SystemPrinter.Units := unMM; //- 19/02/2009: trabalha nos milimetros da página
   FMenu.RvFaturas.SystemPReview.RulerType := rtBothCm; //- 19/02/2009: mostra régua superior e lateral
   FMenu.RvFaturas.Execute;
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
                ImpReciboFatura(XViewRef.FieldByName('nome').AsString, DMPESSOA.WCliente.FieldByName('endereco').AsString, DMMACS.TALX.FieldByName('vlrtotfatura').AsString,UpperCase(FMenu.Extenso.Extenso),'');
                FMenu.RvFaturas.SystemPreview.FormState := wsMaximized;
                FMenu.RvFaturas.DefaultDest := rdPreview;  //- 19/02/2009: visualizar o relatório direto
                FMenu.RvFaturas.SystemPrinter.Units := unMM; //- 19/02/2009: trabalha nos milimetros da página
                FMenu.RvFaturas.SystemPReview.RulerType := rtBothCm; //- 19/02/2009: mostra régua superior e lateral
                FMenu.RvFaturas.Execute;
            End;
        End;
    End;
end;

end.
