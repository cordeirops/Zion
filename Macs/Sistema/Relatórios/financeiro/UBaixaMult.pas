unit UBaixaMult;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRodaPe, Buttons, DrLabel, jpeg, ExtCtrls, StdCtrls,
  Grids, DBGrids, DBCtrls, UFrmBusca, gbCobranca, QRCtrls, QuickRpt, Mask,
  cxLookAndFeelPainters, cxButtons, EditFloat, ColorEditFloat;

type
  TFBaixaMult = class(TFPadraoRodaPe)
    Label1: TLabel;
    EdNumParc: TEdit;
    Label2: TLabel;
    EdPessoa: TEdit;
    DBGridCadastroPadrao: TDBGrid;
    FBA: TDBGrid;
    Label5: TLabel;
    LMenu: TLabel;
    Panel1: TPanel;
    LInsere: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    LRetira: TLabel;
    LValor: TDRLabel;
    PSelectCliente: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    LUZOPEN: TShape;
    LPessoa: TLabel;
    EdCodCli: TEdit;
    EdCPF: TEdit;
    EdNomeCli: TEdit;
    BtnProcPess: TBitBtn;
    Label25: TLabel;
    CBPagamento: TComboBox;
    PMostraCta: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label39: TLabel;
    DBText3: TDBText;
    PBanco: TPanel;
    DBGBANCO: TDBGrid;
    FrmConta: TFrmBusca;
    BtnMoedaOK: TBitBtn;
    BtnMoedaCancelar: TBitBtn;
    PPesCad: TPanel;
    EdNomePessoa: TEdit;
    EdCpfPessoa: TEdit;
    Label9: TLabel;
    EdDocumento: TEdit;
    RadioGroup1: TRadioGroup;
    EDMULTA: TEdit;
    Label10: TLabel;
    RGImp: TRadioGroup;
    gbTitulo1: TgbTitulo;
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
    QRShape18: TQRShape;
    QRLabel27: TQRLabel;
    QRLDocumento: TQRLabel;
    QRLValor: TQRLabel;
    QRLData: TQRLabel;
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
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRLIMPORTANCIA: TQRLabel;
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
    PCtaCor: TPanel;
    DBGCTACOR: TDBGrid;
    Label11: TLabel;
    EdDtRef: TMaskEdit;
    FrmFormPagFrete: TFrmBusca;
    PMultiplo: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    CBMultConta: TComboBox;
    BtnAddConta: TBitBtn;
    BtnRemConta: TBitBtn;
    DBGrid3: TDBGrid;
    EdValorMul: TColorEditFloat;
    cxButton1: TcxButton;
    LTotal: TDRLabel;
    CbApagarParcela: TCheckBox;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    procedure FormActivate(Sender: TObject);
    procedure EdNumParcKeyPress(Sender: TObject; var Key: Char);
    procedure EdPessoaKeyPress(Sender: TObject; var Key: Char);
    procedure LInsereClick(Sender: TObject);
    procedure LRetiraClick(Sender: TObject);
    procedure EdNumParcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodCliExit(Sender: TObject);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnProcPessClick(Sender: TObject);
    procedure FrmContaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnMoedaCancelarClick(Sender: TObject);
    procedure CBPagamentoExit(Sender: TObject);
    procedure CBPagamentoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure BtnMoedaOKClick(Sender: TObject);
    procedure EDMULTAExit(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DBGBANCOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PBancoExit(Sender: TObject);
    procedure PCtaCorExit(Sender: TObject);
    procedure DBGCTACORKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label3Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure FrmFormPagFreteBTNOPENClick(Sender: TObject);
    procedure FrmContaBTNMINUSClick(Sender: TObject);
    procedure FrmFormPagFreteBTNMINUSClick(Sender: TObject);
    procedure CBMultContaKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAddContaClick(Sender: TObject);
    procedure CBMultContaExit(Sender: TObject);
    procedure BtnRemContaClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure EDMULTAEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
	 //Seleciona parcelas de acordo com filtro da edit. se valor em branco passado com o no inicio mostrar todas mas ordenado pelo valor
	 Procedure FiltraParcela(TipoCons: String);
	 //Pocedure Utilizada para marcar um unica parcela
	 Procedure MarcaUnicaParc(Tipo: Boolean);
    //Fatura todas contas selecionadas
	 Function FaturaContas: Boolean;
	 //procedure que seleciona e imprime o Boleto da cta
	 Procedure ImpBoleto(CODCTA:INTEGER; TIPOIMP: Integer);
	 //procedure que seleciona e imprime recibo referente a parcela
	 Procedure ImpRecibo(CODCTA:INTEGER);
	 //procedure que seleciona e imprime as duplicatas da cta/ QTDPARC 0=Imprime parcela selecionada; 1=Imprime todas asprcelas da conta
	 Procedure ImpDuplicata(CODCTA:INTEGER; QTDPARC: INTEGER);
    //Pocedure Utilizada para marcar um unica parcela
    Procedure MarcaAllParc(Tipo: Boolean);
    // - 21/01/2009: atualiza grid forma de pagamento e valores
     procedure AtualizarLancMultiplo;
    // - 21/01/2009: verifica se o valor pago em multiplo corresponde ao vlortotal
    function VerificaValorMultiplo:Boolean;
  end;

var
   FBaixaMult: TFBaixaMult;
   XCod_Pessoa: Integer;
   XCodConta: Integer;
   XCODFORMPAG: Integer;
   XTOTAL: Real;
   XMULTA: Real;
   XCOD_CONTABANCO: Integer;
   XCOD_CTACORBLT: Integer;
   XTIPO: String;
   XNumero : integer; // se estiver valendo 0 vai ser permitido o sistema localizar informações do fornecedor e lancar os dados nas edits abaixo
   XMultiplo: Boolean; // - 21/01/2009: se for lançamento múltiplo
   XTotMult:Integer; // - 21/01/2009: armazena qntde de lançamentos múltiplos
   XCodTmp:Integer; // - 21/01/2009: controla codigos da tabela tmp
   XVlrPago :Currency;

implementation

uses UDMFinanc, UDMConta, UMenu, UDMEstoque, UDMPessoa, UDMMacs, Alxor32,
  UCliente, UFORNECEDOR, UFormPag, UConsPlncta, AlxMessage, UDmBanco, DB, UCtaCor,
  UPadrao, Math, UDMCaixa, UMDO;

{$R *.dfm}

//procedure que seleciona e imprime recibo referente a parcela
Procedure TFBaixaMult.ImpRecibo(CODCTA:INTEGER);
Begin
   //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	//PREPARA SQL
   If XTIPO='CR'
   Then Begin
	   DMFinanc.TAlx.Close;
	   DMFinanc.TAlx.SQL.Clear;
	   DMFinanc.TAlx.SQL.Add('SELECT distinct(parcelacr.cod_parcelacr), parcelacr.dtvenc AS VENCIMENTO, parcelacr.valorpg, parcelacr.numparc, parcelacr.valExt, parcelacr.valor, ');
	   DMFinanc.TAlx.SQL.Add('pessoa.bairro, pessoa.cep, Pessoa.Telrel, pessoa.cpfcnpj, pessoa.endnumero, pessoa.endereco, pessoa.nome, ');
	   DMFinanc.TAlx.SQL.Add('CtaReceber.NumDoc, CtaReceber.DTLanc, cidade.nome, estado.uf_estado ');
	   DMFinanc.TAlx.SQL.Add('FROM parcelacr join ctareceber ON parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
	   DMFinanc.TAlx.SQL.Add('JOIN cliente on cliente.cod_cliente = ctareceber.cod_cliente ');
	   DMFinanc.TAlx.SQL.Add('join pessoa ON pessoa.cod_pessoa = cliente.cod_pessoa ');
	   DMFinanc.TAlx.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
	   DMFinanc.TAlx.SQL.Add('left join estado ON estado.cod_estado = cidade.cod_estado ');
	   DMFinanc.TAlx.SQL.Add('Where parcelacr.COD_PARCELACR=:CODCTARECEBER ');
	   DMFinanc.TAlx.ParamByName('CODCTARECEBER').AsInteger:=CODCTA;
	   DMFinanc.TAlx.Open;
      QRRECIBO.Preview;
   End;
End;

//procedure que seleciona e imprime o Boleto da cta
Procedure TFBaixaMult.ImpBoleto(CODCTA:INTEGER; TIPOIMP: Integer);
Var
  YearAtu, MonthAtu, DayAtu:word;
Begin
   //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	//PREPARA SQL
   DMFinanc.TAlx.Close;
   DMFinanc.TAlx.SQL.Clear;
   DMFinanc.TAlx.SQL.Add('SELECT distinct(parcelacr.cod_parcelacr), parcelacr.dtvenc, ctareceber.dtlanc, parcelacr.numparc, parcelacr.valExt, parcelacr.valor, ');
   DMFinanc.TAlx.SQL.Add('pessoa.bairro, pessoa.cep, Pessoa.Telrel, pessoa.cpfcnpj, pessoa.endnumero, pessoa.endereco, pessoa.nome AS SACADO, ');
   DMFinanc.TAlx.SQL.Add('CtaReceber.NumDoc, CtaReceber.DTLanc, cidade.nome AS CIDADE, estado.uf_estado ');
   DMFinanc.TAlx.SQL.Add('FROM parcelacr join ctareceber ON parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
   DMFinanc.TAlx.SQL.Add('JOIN cliente on cliente.cod_cliente = ctareceber.cod_cliente ');
   DMFinanc.TAlx.SQL.Add('join pessoa ON pessoa.cod_pessoa = cliente.cod_pessoa ');
   DMFinanc.TAlx.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
   DMFinanc.TAlx.SQL.Add('left join estado ON estado.cod_estado = cidade.cod_estado ');
  	DMFinanc.TAlx.SQL.Add('Where parcelacr.COD_PARCELACR=:CODCTARECEBER ');
  	DMFinanc.TAlx.ParamByName('CODCTARECEBER').AsInteger:=CODCTA;
   DMFINANC.TAlx.Open;
   DMFINANC.TAlx.First;
   While Not DMFINANC.TAlx.Eof
   Do Begin
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

   	//PASSA VALORES PARA O COMPONENTE DE BOLETO
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
       gbTitulo1.NumeroDocumento:=DMFinanc.TAlx.FieldByName('NUMPARC').AsString;
		gbTitulo1.NossoNumero:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString;
		gbTitulo1.EspecieDocumento:=edDuplicataMercantil;
       gbTitulo1.Instrucoes.Clear;
       gbTitulo1.Instrucoes.Add(DMBANCO.TCtaCor.FieldByName('INSTRUBOLETO').AsString);
       //Montar Nosso Numero para BB e cedente de 7 digitos
       If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger=1) And (Length(DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString)=7)
       Then Begin
			gbTitulo1.NossoNumero:=ConcatZero(DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString, 10);
			gbTitulo1.NossoNumero:=DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString+gbTitulo1.NossoNumero;
       End;
       //Montar Nosso Numero para SICOOB
       If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='756')
       Then Begin
  			//extratifica data Atual
           DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
			gbTitulo1.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+ConcatZero(DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString, 6);
       End;
       gbTitulo1.DataProcessamento:=Date();
       gbTitulo1.Sacado.Endereco.Numero:='';
       gbTitulo1.Sacado.Endereco.Complemento:='';
		//sacado
       gbTitulo1.Sacado.Endereco.Bairro:=DMFinanc.TAlx.FieldByName('Bairro').AsString;
       gbTitulo1.Sacado.Endereco.CEP:=DMFinanc.TAlx.FieldByName('CEP').AsString;
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

       DMCONTA.TParcCR.Close;
       DMCONTA.TParcCR.SQL.Clear;
       DMCONTA.TParcCR.SQL.Add('SELECT * FROM PARCELACR WHERE PARCELACR.COD_PARCELACR=:CODPAR');
       DMCONTA.TParcCR.ParamByName('CODPAR').AsInteger:=DMFINANC.TAlx.FieldByName('COD_PARCELACR').AsInteger;
		DMCONTA.TParcCR.Open;
       If Not DMCONTA.TParcCR.IsEmpty
       Then Begin
       	Try
           	DMCONTA.TParcCR.Edit;
           	DMCONTA.TParcCR.FieldByName('IMP').AsString:='B';
				If DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency=0
               Then Begin
                   DMBANCO.TCtaCor.Edit;
                   DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency:=1;
                   DMBANCO.TCtaCor.Post;
               End;
           	DMCONTA.TParcCR.FieldByName('NUMPARC').AsString:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString+':'+ DMCONTA.TParcCR.FieldByName('NUMPARC').AsString;
           	DMCONTA.TParcCR.FieldByName('NUMBOLETO').AsString:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString;
           	DMCONTA.TParcCR.Post;
           	DMCONTA.IBT.CommitRetaining;
               DMBANCO.TCtaCor.Edit;
               DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency+1;
               DMBANCO.TCtaCor.Post;
               DMBANCO.IBT.CommitRetaining;
		    	gbTitulo1.Visualizar;
           Except
				Mensagem('A T E N Ç Ã O ', 'O boleto não foi impresso devido a uma falha ao gravar o tipo de impressão na parcela!', '', 1,1, false, 'a');
           End;
       End;
   	DMFINANC.TAlx.Next;
   End;
End;

//Fatura todas contas selecionadas
Function TFBaixaMult.FaturaContas: Boolean;
VAR
	XCOD_CONTAMESTRE: Integer;
   XCOD_CONTASLAVE: Integer;
   XHist: String; //variavel para armazenar o historico q vai cair em cx
   XParcelaApaga: Boolean;//determina se as parcelas foram apagadas
Begin
   Result:=True;
   XHist:='Fat. Doc.';
   //Gera Historico
   DMESTOQUE.Alx2.First;
   while not DMESTOQUE.Alx2.Eof do
   Begin
       XHist:=XHist+'; '+DMESTOQUE.Alx2.FieldByName('NUMPARC').AsString;
		DMESTOQUE.Alx2.Next;
   End;

   XParcelaApaga:=False;
   If CbApagarParcela.Checked=True
   Then Begin
       If Mensagem('CONFIRMAÇÃO DO USUÁRIO', ' Deseja realmente apagar a parcela selecionada ? ' , '', 2, 3, False, 'c')=2 Then
           XParcelaApaga:=True;
   End;

   //controle para fazer as baixas de contas a receber e gerar novas contas, que serão baixadas estornadas no caixa e geradas novas contas
   if (XTIPO = 'CR') AND (FrmFormPagFrete.EdDescricao.Text <> 'À VISTA')
   then begin //lança contas a receber referente aos documentos selecionados
      IF LancConta('PEDVENDA', StrToInt(EdDocumento.Text), XCod_Pessoa, CBPagamento.Text, StrToFloat(LValor.Caption), 0, DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger , 0,  -1, XHist, XCODFORMPAG, EdDocumento.Text, 'R', StrToDateTime(EdDtRef.Text), 0, EdDtRef.Text, '')=True
      THEN BEGIN
           DMESTOQUE.Alx2.First;
           Result:=True;
           while not DMESTOQUE.Alx2.Eof do
           begin //baixa todos os documentos selecionados
              If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMESTOQUE.Alx2.FIELDBYNAME('COD_PARCELACR').AsString, '')=True
              then begin
              		If XParcelaApaga=True
                   Then Begin
                   	DMCONTA.TParcCR.Delete;
                   End
                   Else Begin
                      DMCONTA.TParcCR.edit;
                      DMCONTA.TParcCR.FieldByName('DTDEBITO').AsDateTime:=Date();
                      DMCONTA.TParcCR.FieldByName('COBRANCA').AsString:='FATURA';
                      DMCONTA.TParcCR.FieldByName('HISTORICO').AsString:='Fat. '+EdDocumento.Text+DMCONTA.TParcCR.FieldByName('HISTORICO').AsString;
                      DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency:=DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency;
                      DMCONTA.TParcCR.FieldByName('FECH').AsString:='S';
                      DMCONTA.TParcCR.FieldByName('MARK').AsString:='';
                      DMCONTA.TParcCR.Post;
                   End;
              end
              else begin
                Result:=False;
              end;

          DMESTOQUE.Alx2.Next;
          end;
        If Result=True // só faz o lançamento se as parcelas foram baixadas corretamente
        then begin //lançamento do valor total do faturamento e estorno do mesmo em caixa para ter controle.
          LanCaixa (-1, DateToStr(Date()), XCodConta, XHist+EdNomeCli.Text, XTOTAL, 'BXCTAR', -5, CBPagamento.Text, 'E', EdDocumento.Text, Date(), '1');
          LanCaixa (-1, DateToStr(Date()), XCodConta, 'Estorno do '+XHist+EdNomeCli.Text, XTOTAL, 'BXCTAR', -5, CBPagamento.Text, 'S', EdDocumento.Text, Date(), '1');
          MDO.Transac.CommitRetaining;
          Result:=True;
        end;
      END;
   end;

   //Paulo 14/12/2011: controle para fazer as baixas de contas a pagar e gerar novas contas, que serão baixadas estornadas no caixa e geradas novas contas
   if (XTIPO = 'CP') AND (FrmFormPagFrete.EdDescricao.Text <> 'À VISTA')
   then begin //lança contas a receber referente aos documentos selecionados
      IF LancConta('PEDCOMPRA', StrToInt(EdDocumento.Text), XCod_Pessoa, CBPagamento.Text, StrToFloat(LValor.Caption), 0, DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger , 0,  -1, XHist, XCODFORMPAG, EdDocumento.Text, 'P', StrToDateTime(EdDtRef.Text), 0, EdDtRef.Text, '')=True
      THEN BEGIN
           DMESTOQUE.Alx2.First;
           Result:=True;
           while not DMESTOQUE.Alx2.Eof do
           begin //baixa todos os documentos selecionados
              If FiltraTabela(DMCONTA.TParcCP, 'PARCELACP', 'COD_PARCELACP', DMESTOQUE.Alx2.FIELDBYNAME('COD_PARCELACP').AsString, '')=True
              then begin
              		If XParcelaApaga=True
                   Then Begin
                   	DMCONTA.TParcCP.Delete;
                   End
                   Else Begin
                      DMCONTA.TParcCP.edit;
                      DMCONTA.TParcCP.FieldByName('DTDEBITO').AsDateTime:=Date();
                      DMCONTA.TParcCP.FieldByName('COBRANCA').AsString:='FATURA';
                      DMCONTA.TParcCP.FieldByName('HISTORICO').AsString:='Fat. '+EdDocumento.Text+DMCONTA.TParcCP.FieldByName('HISTORICO').AsString;
                      DMCONTA.TParcCP.FieldByName('VALORPG').AsCurrency:=DMCONTA.TParcCP.FieldByName('VALOR').AsCurrency;
                      DMCONTA.TParcCP.FieldByName('FECH').AsString:='S';
                      DMCONTA.TParcCP.FieldByName('MARK').AsString:='';
                      DMCONTA.TParcCP.Post;
                   End;
              end
              else begin
                Result:=False;
              end;

          DMESTOQUE.Alx2.Next;
          end;
        If Result=True // só faz o lançamento se as parcelas foram baixadas corretamente
        then begin //lançamento do valor total do faturamento e estorno do mesmo em caixa para ter controle.
          LanCaixa (-1, DateToStr(Date()), XCodConta, XHist+EdNomeCli.Text, XTOTAL, 'BXCTAP', -5, CBPagamento.Text, 'S', EdDocumento.Text, Date(), '1');
          LanCaixa (-1, DateToStr(Date()), XCodConta, 'Estorno do '+XHist+EdNomeCli.Text, XTOTAL, 'BXCTAP', -5, CBPagamento.Text, 'E', EdDocumento.Text, Date(), '1');
          MDO.Transac.CommitRetaining;
          Result:=True;
        end;
      END;
   end;

   //EFETUA TRATAMENTO PARA BAIXA DA CONTA
   If (CBPagamento.Text='Carteira')  OR (CBPagamento.Text='Cartão')
   Then Begin
       If XTIPO='CP'
       Then Begin
           if FrmFormPagFrete.EdDescricao.Text = 'À VISTA'
           then begin
               If LanCaixa (-1, DateToStr(Date()), XCodConta, XHist+EdNomeCli.Text, XTOTAL, 'BXCTAP', -5, CBPagamento.Text, 'S', EdDocumento.Text, Date(), '1')=False Then
                   Result:=False
               else
                   MDO.Transac.CommitRetaining;
           end;        
       End
       Else Begin
         if FrmFormPagFrete.EdDescricao.Text = 'À VISTA'
         then begin
             If LanCaixa (-1, DateToStr(Date()), XCodConta, XHist+EdNomeCli.Text, XTOTAL, 'BXCTAR', -5, CBPagamento.Text, 'E', EdDocumento.Text, Date(), '1')=False Then
                 Result:=False
             else
                 MDO.Transac.CommitRetaining;
         end;
       End;
   End;
   If CBPagamento.Text='Banco'
   Then Begin
       If XTIPO='CP'
       Then Begin
           if FrmFormPagFrete.EdDescricao.Text = 'À VISTA'
           then begin
               If LanBanco(XCOD_CONTABANCO, XCodConta, XHist, XTOTAL, 'BXCPJ', -5, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), 'DÉB. AUTO', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', EdDtRef.Text)=False Then
                   Result:=False;
           end;        
       End
       Else Begin
         if FrmFormPagFrete.EdDescricao.Text = 'À VISTA'
         then begin
           If LanBanco(XCOD_CONTABANCO, XCodConta, XHist, XTOTAL, 'BXCRJ', -5, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', EdDtRef.Text)=False Then
               Result:=False;
         end;
       End;
   End;
   If CBPagamento.Text='Cheque'
   Then Begin
       If XTIPO='CP'
       Then Begin
           if FrmFormPagFrete.EdDescricao.Text = 'À VISTA'
           then begin
               If LancChSai(XCodConta, XHist+EdNomeCli.Text, Date(), XTOTAL, XCOD_CONTABANCO, 'BXCRJ', '-5','')=False Then
                   Result:=False;
           end;        
       End
       Else Begin
         if FrmFormPagFrete.EdDescricao.Text = 'À VISTA'
         then begin

           If LancChEnt(XCodConta, 0, XHist+EdNomeCli.Text, Date(), '', XTOTAL, 0, '', '', 0, '', '', '', '-1')=False Then
               Result:=False;
         end;
       End;
   End;

   If CBPagamento.Text='Múltiplo'
   Then Begin

      DMMACS.TMP.First;
      // - 21/01/2009: varrer tabela
       while not DMMACS.TMP.Eof
       do begin
           If XTIPO='CP'
           Then Begin
                If (DMMACS.TMP.FieldByName('DESC1').AsString='Carteira') then
                    If LanCaixa (-1, DateToStr(Date()), XCodConta, XHist+EdNomeCli.Text, DMMACS.TMP.FieldByName('vlr1').Value, 'BXCTAP', -5, DMMACS.TMP.FieldByName('desc1').AsString, 'S', EdDocumento.Text, Date(), '1')=False Then
                        Result:=False
                    else
                 		MDO.Transac.CommitRetaining;

                If DMMACS.TMP.FieldByName('DESC1').AsString='Banco' then
                    If LanBanco(DMMACS.TMP.FieldByName('INT1').AsInteger, XCodConta, XHist, DMMACS.TMP.FieldByName('vlr1').Value, 'BXCPJ', -5, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), 'DÉB. AUTO', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', EdDtRef.Text)=False Then
                        Result:=False;

                If DMMACS.TMP.FieldByName('DESC1').AsString='Cheque' then
                    If LancChSai(XCodConta, XHist+EdNomeCli.Text, Date(), DMMACS.TMP.FieldByName('vlr1').Value, DMMACS.TMP.FieldByName('INT1').AsInteger, 'BXCRJ', '-5','')=False Then
                        Result:=False;

           End
           Else Begin
                If (DMMACS.TMP.FieldByName('DESC1').AsString='Carteira') then
                    If LanCaixa (-1, DateToStr(Date()), XCodConta, XHist+EdNomeCli.Text, DMMACS.TMP.FieldByName('vlr1').Value, 'BXCTAR', -5, DMMACS.TMP.FieldByName('desc1').AsString, 'E', EdDocumento.Text, Date(), '1')=False Then
                        Result:=False
                    else
                        MDO.Transac.CommitRetaining;

                If DMMACS.TMP.FieldByName('DESC1').AsString='Banco' then
                    If LanBanco(DMMACS.TMP.FieldByName('INT1').AsInteger, XCodConta, XHist, DMMACS.TMP.FieldByName('vlr1').Value, 'BXCRJ', -5, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', EdDtRef.Text)=False Then
                        Result:=False;

                If DMMACS.TMP.FieldByName('DESC1').AsString='Cheque' then
                    If LancChEnt(XCodConta, 0, XHist+EdNomeCli.Text, Date(), '', DMMACS.TMP.FieldByName('vlr1').Value, 0, '', '', 0, '', '', '', '-1')=False Then
                        Result:=False;
           end;

            // - 21/01/2009:   próxima ocorrência
            DMMACS.TMP.Next;
                 
       end;// - 21/01/2009:  final do while

   End;

   //EFETUA TRATAMENTO PARA MULTAS E JUROS
   If StrToFloat(EDMULTA.Text)>0
   Then Begin//SE FOI INVORMADO ALGUM TIPO DE MULTAS OU JUROS
       If RadioGroup1.ItemIndex=0
       Then Begin
           //EFETUA LANÇAMENTO PARA MULTA    // - 21/01/2009: add multiplo
           If (CBPagamento.Text='Carteira')  OR (CBPagamento.Text='Cartão')  or (CBPagamento.Text='Cheque') or (CBPagamento.Text='Múltiplo')
           Then Begin
               If XTIPO='CP'
               Then Begin
                   If LanCaixa (-1, DateToStr(Date()), XCodConta, 'Multa CP/Bx - V.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'Doc:'+EdDocumento.Text+ '-'+DateToStr(Date())+EdNomeCli.Text, XMULTA, 'BXCTAP', -5, CBPagamento.Text, 'S', EdDocumento.Text, Date(), '1')=False Then
                       Result:=False
                   else
                       MDO.Transac.CommitRetaining;    
               End
               Else Begin
                 if FrmFormPagFrete.EdDescricao.Text = 'À VISTA'
                 then begin
                   If LanCaixa (-1, DateToStr(Date()), XCodConta, 'Multa CR/Bx - V.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'Doc:'+EdDocumento.Text+ '-'+DateToStr(Date())+EdNomeCli.Text, XMULTA, 'BXCTAR', -5, CBPagamento.Text, 'E', EdDocumento.Text, Date(), '1')=False Then
                       Result:=False
                   else
                       MDO.Transac.CommitRetaining;    
                 end;
               End;
           End;
           If CBPagamento.Text='Banco'
           Then Begin
               If XTIPO='CP'
               Then Begin
                   If LanBanco(XCOD_CONTABANCO, XCodConta, 'Multa CP/Bx - V.: '+EdDocumento.Text+' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+EdDocumento.Text, XMULTA, 'BXCPJ', -5, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), 'DÉB. AUTO', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', EdDtRef.Text)=False Then
                       Result:=False;
               End
               Else Begin
                 if FrmFormPagFrete.EdDescricao.Text = 'À VISTA'
                 then begin
                   If LanBanco(XCOD_CONTABANCO, XCodConta, 'Multa CR/Bx - V.: '+EdDocumento.Text+' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+EdDocumento.Text, XMULTA, 'BXCRJ', -5, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', EdDtRef.Text)=False Then
                       Result:=False;
                 end;
               End;
           End;
       End
       Else Begin
           //EFETUA LANÇAMENTO PARA DESCONTOS        // - 21/01/2009: add multiplo
           If (CBPagamento.Text='Carteira') or (CBPagamento.Text='Cheque') or (CBPagamento.Text='Múltiplo')
           Then Begin
               If XTIPO='CP'
               Then Begin
                   If LanCaixa (-1, DateToStr(Date()), XCodConta, 'Desc. CP/Bx - V.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'Doc:'+EdDocumento.Text+ '-'+DateToStr(Date())+EdNomeCli.Text, XMULTA, 'BXCTAP', -5, CBPagamento.Text, 'E', EdDocumento.Text, Date(), '1')=False Then
                       Result:=False
                   else
                 		MDO.Transac.CommitRetaining;
               End
               Else Begin
                 if FrmFormPagFrete.EdDescricao.Text = 'À VISTA'
                 then begin
                   If LanCaixa (-1, DateToStr(Date()), XCodConta, 'Desc. CR/Bx - V.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'Doc:'+EdDocumento.Text+ '-'+DateToStr(Date())+EdNomeCli.Text, XMULTA, 'BXCTAR', -5, CBPagamento.Text, 'S', EdDocumento.Text, Date(), '1')=False Then
                       Result:=False
                   else
                 		MDO.Transac.CommitRetaining;    
                 end;
               End;
           End;
           If (CBPagamento.Text='Banco') or (CBPagamento.Text='Cartão')
           Then Begin
               If XTIPO='CP'
               Then Begin
                   If LanBanco(XCOD_CONTABANCO, XCodConta, 'Desc. CP/Bx - V.: '+EdDocumento.Text+' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+EdDocumento.Text, XMULTA, 'BXCPJ', -5, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'DÉB. AUTO', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', EdDtRef.Text)=False Then
                       Result:=False;
               End
               Else Begin
                 if FrmFormPagFrete.EdDescricao.Text = 'À VISTA'
                 then begin
                   If LanBanco(XCOD_CONTABANCO, XCodConta, 'Desc. CR/Bx - V.: '+EdDocumento.Text+' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+EdDocumento.Text, XMULTA, 'BXCRJ', -5, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', EdDtRef.Text)=False Then
                       Result:=False;
                 end;
               End;
           End;
       end;
   End;

   //antes de confirmar a operação o sistema altera todas as parcelas selecionadas p/ darem como baixadas
   DMESTOQUE.Alx2.First;
   while not DMESTOQUE.Alx2.Eof do
   Begin
   	If XTIPO='CP'
       Then Begin
       	If FiltraTabela(DMCONTA.TParcCP, 'PARCELACP', 'COD_PARCELACP', DMESTOQUE.Alx2.FIELDBYNAME('COD_PARCELACP').AsString, '')=True
        	Then Begin
           	Try
	            	//Edita tabela para entradas de valores para parcela
                	DMCONTA.TParcCP.edit;
                	DMCONTA.TParcCP.FieldByName('DTDEBITO').AsDateTime:=Date();
                	DMCONTA.TParcCP.FieldByName('COBRANCA').AsString:=CBPagamento.Text;
                	DMCONTA.TParcCP.FieldByName('HISTORICO').AsString:='Fat. '+EdDocumento.Text+DMCONTA.TParcCP.FieldByName('HISTORICO').AsString;
                	DMCONTA.TParcCP.FieldByName('VALORPG').AsCurrency:=DMCONTA.TParcCP.FieldByName('VALOR').AsCurrency;
                	DMCONTA.TParcCP.FieldByName('FECH').AsString:='S';
                	DMCONTA.TParcCP.FieldByName('MARK').AsString:='';
                	DMCONTA.TParcCP.Post;
               Except
               end;
           End;
       End
		Else Begin
         if FrmFormPagFrete.EdDescricao.Text = 'À VISTA'
         then begin
       	If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMESTOQUE.Alx2.FIELDBYNAME('COD_PARCELACR').AsString, '')=True
        	Then Begin
           	Try
	            	//Edita tabela para entradas de valores para parcela
                	DMCONTA.TParcCR.edit;
                	DMCONTA.TParcCR.FieldByName('DTDEBITO').AsDateTime:=Date();
                	DMCONTA.TParcCR.FieldByName('COBRANCA').AsString:=CBPagamento.Text;
                	DMCONTA.TParcCR.FieldByName('HISTORICO').AsString:='Fat. '+EdDocumento.Text+DMCONTA.TParcCR.FieldByName('HISTORICO').AsString;
                	DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency:=DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency;
                	DMCONTA.TParcCR.FieldByName('FECH').AsString:='S';
                	DMCONTA.TParcCR.FieldByName('MARK').AsString:='';
                	DMCONTA.TParcCR.Post;
               Except
               end;
           End;
       End;
   End;
       DMESTOQUE.Alx2.Next
   End;
 	If Result=True
   Then Begin
   	Try
       	DMCONTA.IBT.CommitRetaining;
           DMCAIXA.IBT.CommitRetaining
       Except
       	DMCONTA.IBT.RollbackRetaining;
           DMCAIXA.IBT.RollbackRetaining;
       	Mensagem('OPERAÇÃO FALHOU', 'Ocorreu um problema ao faturar as contas!', '', 1, 1, False, 'i');
       End;
   End
   Else Begin
   	DMCONTA.IBT.RollbackRetaining;
       DMFINANC.Transaction.RollbackRetaining;
       Mensagem('OPERAÇÃO FALHOU', 'Ocorreu um problema ao faturar as contas!', '', 1, 1, False, 'i');
   End;
   If Result=True
   Then Begin
      	Mensagem('INFORMAÇÃO', 'O Faturamento ocorreu com sucesso!', '', 1, 1, False, 'i');

       // limpando campos e variaveis
       XCod_Pessoa:= 0;
       EdCPF.Text:= '';
       EdNomeCli.Text:= '';
       EdCodCli.Text:= '0';
       EdDocumento.Text := '0';
       FrmConta.EDCodigo.Text := '';
       FrmConta.EdDescricao.Text := '';
       EdDtRef.Text := DateToStr(Date());
       XHist:='';
   End;
End;

//procedure que seleciona e imprime as duplicatas da cta/ QTDPARC 0=Imprime parcela selecionada; 1=Imprime todas asprcelas da conta
Procedure TFBaixaMult.ImpDuplicata(CODCTA:INTEGER; QTDPARC: INTEGER);
Begin
   //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	//PREPARA SQL
{   If XTipo='P'
   Then Begin
	   DMFinanc.TAlx.Close;
	   DMFinanc.TAlx.SQL.Clear;
	   DMFinanc.TAlx.SQL.Add('SELECT parcelacp.dtvenc, parcelacp.numparc, parcelacp.valor, ');
	   DMFinanc.TAlx.SQL.Add('pessoa.bairro, Pessoa.TelRel, pessoa.cep, pessoa.cpfcnpj, pessoa.endereco, pessoa.nome, ');
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
   Else Begin}
	   DMFinanc.TAlx.Close;
	   DMFinanc.TAlx.SQL.Clear;
	   DMFinanc.TAlx.SQL.Add('SELECT distinct(parcelacr.cod_parcelacr), parcelacr.dtvenc, parcelacr.numparc, parcelacr.valExt, parcelacr.valor, ');
	   DMFinanc.TAlx.SQL.Add('pessoa.bairro, pessoa.cep, Pessoa.Telrel, pessoa.cpfcnpj, pessoa.endnumero, pessoa.endereco, pessoa.nome, ');
	   DMFinanc.TAlx.SQL.Add('CtaReceber.NumDoc, CtaReceber.DTLanc, cidade.nome, estado.uf_estado ');
	   DMFinanc.TAlx.SQL.Add('FROM parcelacr join ctareceber ON parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
	   DMFinanc.TAlx.SQL.Add('JOIN cliente on cliente.cod_cliente = ctareceber.cod_cliente ');
	   DMFinanc.TAlx.SQL.Add('join pessoa ON pessoa.cod_pessoa = cliente.cod_pessoa ');
	   DMFinanc.TAlx.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
	   DMFinanc.TAlx.SQL.Add('left join estado ON estado.cod_estado = cidade.cod_estado ');
	   DMFinanc.TAlx.SQL.Add('Where parcelacr.COD_PARCELACR=:CODCTARECEBER ');
	   DMFinanc.TAlx.ParamByName('CODCTARECEBER').AsInteger:=CODCTA ;
	   DMFinanc.TAlx.Open;
      If DMMacs.TLoja.FieldByName('IMPDUP').AsString='1'
      Then Begin
  			QRDUPLICATA.Print;
      End
      Else Begin
           QRDUPLICATA.Preview;
      End;
//   End;
End;

//Procedure Utilizada para marcar todas as parcelas
Procedure TFBaixaMult.MarcaUnicaParc(Tipo: Boolean);
Begin
	If Tipo=True
   Then Begin
		If DMESTOQUE.Alx1.IsEmpty Then
       	Exit;
   End
   Else Begin
		If DMESTOQUE.Alx2.IsEmpty Then
       	Exit;
   End;
   If XTIPO='CP'
   Then Begin
   	DMCONTA.TParcCP.Close;
   	DMCONTA.TParcCP.SQL.Clear;
   	DMCONTA.TParcCP.SQL.Add('Select * from parcelacp where parcelacp.cod_parcelacp=:CODPARC');
   	If Tipo=True Then
   		DMCONTA.TParcCP.ParamByName('CODPARC').AsInteger:=DMESTOQUE.Alx1.FieldByName('COD_PARCELACP').AsInteger
   	Else
   		DMCONTA.TParcCP.ParamByName('CODPARC').AsInteger:=DMESTOQUE.Alx2.FieldByName('COD_PARCELACP').AsInteger;
		DMCONTA.TParcCP.Open;
       If Not DMCONTA.TParcCP.IsEmpty
       Then Begin
           DMCONTA.TParcCP.Edit;
           // insere parcela a pagar
   		If Tipo=True
           Then Begin
           	DMCONTA.TParcCP.FieldByName('MARK').AsString:='B';

               // pode ser que no primeiro registro não exista fornecedor cadastrado correto, por isso eh feito a verificação
               If (XNumero = 0) and (DMESTOQUE.Alx1.FieldByName('COD_FORNEC').AsString <> '')
               Then Begin
                   // DADOS DO FORNECEDOR
                   FiltraTabela(DMPESSOA.WFornecedor,'VWFORNEC','COD_FORNEC',DMESTOQUE.Alx1.FieldByname('COD_FORNEC').AsString,'');

                   XCod_Pessoa:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
                   EdCPF.Text:=DMPESSOA.WFornecedor.FieldByName('CPFCNPJ').AsString;
                   EdNomeCli.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
                   EdCodCli.Text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;

               // recebendo 1 não vai ser mais necessario buscar fornecedor para lancamento de conta
               XNumero := 1;
               End;
           End
           // remove parcela a pagar
           Else Begin
           	DMCONTA.TParcCP.FieldByName('MARK').AsString:='N';

               // limpando campos e variaveis
               XCod_Pessoa:= 0;
               EdCPF.Text:= '';
               EdNomeCli.Text:= '';
               EdCodCli.Text:= '0';
               EdDocumento.Text := '0';
               FrmConta.EDCodigo.Text := '';
               FrmConta.EdDescricao.Text := '';
               EdDtRef.Text := DateToStr(Date());
               XNumero := 0;
           End;
           DMCONTA.TParcCP.Post;
       End;
   End
   Else Begin
   	DMCONTA.TParcCR.Close;
   	DMCONTA.TParcCR.SQL.Clear;
   	DMCONTA.TParcCR.SQL.Add('Select * from parcelacr where parcelacr.cod_parcelacr=:CODPARC');
   	If Tipo=True
       Then Begin
   		DMCONTA.TParcCR.ParamByName('CODPARC').AsInteger:=DMESTOQUE.Alx1.FieldByName('COD_PARCELACR').AsInteger
       End
   	Else Begin
   		DMCONTA.TParcCR.ParamByName('CODPARC').AsInteger:=DMESTOQUE.Alx2.FieldByName('COD_PARCELACR').AsInteger;
       End;

		DMCONTA.TParcCR.Open;
       If Not DMCONTA.TParcCR.IsEmpty
       Then Begin
           DMCONTA.TParcCR.Edit;
   		If Tipo=True
           Then Begin
           	DMCONTA.TParcCR.FieldByName('MARK').AsString:='B';

               // pode ser que no primeiro registro não exista fornecedor cadastrado correto, por isso eh feito a verificação
               If (XNumero = 0) and (DMESTOQUE.Alx1.FieldByName('COD_CLIENTE').AsString <> '')
               Then Begin
                   // DADOS DO CLIENTE
                   FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_CLIENTE',DMESTOQUE.Alx1.FieldByname('COD_CLIENTE').AsString,'');

                   XCod_Pessoa:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
                   EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
                   EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
                   EdCodCli.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;

               // recebendo 1 não vai ser mais necessario buscar fornecedor para lancamento de conta
               XNumero := 1;
               End;
           End
           Else Begin
           	DMCONTA.TParcCR.FieldByName('MARK').AsString:='N';

               // limpando campos e variaveis
               XCod_Pessoa:= 0;
               EdCPF.Text:= '';
               EdNomeCli.Text:= '';
               EdCodCli.Text:= '0';
               EdDocumento.Text := '0';
               FrmConta.EDCodigo.Text := '';
               FrmConta.EdDescricao.Text := '';
               EdDtRef.Text := DateToStr(Date());
               XNumero := 0;

           End;
           DMCONTA.TParcCR.Post;
       End;
   End;
   DMCONTA.IBT.CommitRetaining;
   FiltraParcela('ONUMPARC');
End;

//Pocedure Utilizada para marcar um unica parcela
Procedure TFBaixaMult.MarcaAllParc(Tipo: Boolean);
Begin

   // variavel que permite buscar cliente ou fornecedor
   XNumero := 0;

	If Tipo=True
   Then Begin
		If DMESTOQUE.Alx1.IsEmpty Then
       	Exit;
   End
   Else Begin
		If DMESTOQUE.Alx2.IsEmpty Then
       	Exit;
   End;

   // primeiro registro selecionado
   DMESTOQUE.Alx1.First;
   DMESTOQUE.Alx2.First;

   If XTIPO='CP'
   Then Begin
       // insere parcelas a pagar
       If Tipo= True
       Then Begin
           // enquanto nao for o final das parcelas
           while not DMESTOQUE.Alx1.Eof do
           begin
               // pode ser que no primeiro registro não exista fornecedor cadastrado correto, por isso eh feito a verificação
               If (XNumero = 0) and (DMESTOQUE.Alx1.FieldByName('COD_FORNEC').AsString <> '')
               Then Begin
                   // DADOS DO FORNECEDOR
                   FiltraTabela(DMPESSOA.WFornecedor,'VWFORNEC','COD_FORNEC',DMESTOQUE.Alx1.FieldByname('COD_FORNEC').AsString,'');

                   XCod_Pessoa:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
                   EdCPF.Text:=DMPESSOA.WFornecedor.FieldByName('CPFCNPJ').AsString;
                   EdNomeCli.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
                   EdCodCli.Text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;

               // recebendo 1 não vai ser mais necessario buscar fornecedor para lancamento de conta
               XNumero := 1;
               End;

               DMCONTA.TParcCP.Close;
               DMCONTA.TParcCP.SQL.Clear;
               DMCONTA.TParcCP.SQL.Add('update parcelacp set parcelacp.mark='+#39+'B'+#39);
               DMCONTA.TParcCP.SQL.Add('where parcelacp.cod_parcelacp = :codigo');
               DMCONTA.TParcCP.ParamByName('codigo').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_PARCELACP').AsInteger;
               DMCONTA.TParcCP.ExecSQL;

               DMCONTA.IBT.CommitRetaining;
           // proxima parcela a pagar
           DMESTOQUE.Alx1.Next;
           End;
       End
       Else Begin

           // limpando campos e variaveis
           XCod_Pessoa:= 0;
           EdCPF.Text:= '';
           EdNomeCli.Text:= '';
           EdCodCli.Text:= '0';
           EdDocumento.Text := '0';
           FrmConta.EDCodigo.Text := '';
           FrmConta.EdDescricao.Text := '';
           EdDtRef.Text := DateToStr(Date());
           XNumero := 0;

           // enquanto nao for o final das parcelas
           while not DMESTOQUE.Alx2.Eof do
           begin
               DMCONTA.TParcCP.Close;
               DMCONTA.TParcCP.SQL.Clear;
               DMCONTA.TParcCP.SQL.Add('update parcelacp set parcelacp.mark='+#39+'N'+#39);
               DMCONTA.TParcCP.SQL.Add('where parcelacp.cod_parcelacp = :codigo');
               DMCONTA.TParcCP.ParamByName('codigo').AsInteger := DMESTOQUE.Alx2.FieldByName('COD_PARCELACP').AsInteger;
               DMCONTA.TParcCP.ExecSQL;

               DMCONTA.IBT.CommitRetaining;

           // proxima parcela
           DMESTOQUE.Alx2.Next;
           End;
       End;
   End
   Else Begin
   	DMCONTA.TParcCR.Close;
   	DMCONTA.TParcCR.SQL.Clear;
       If Tipo= True
       Then Begin
           // enquanto nao for o final das parcelas
           while not DMESTOQUE.Alx1.Eof do
           begin
               // pode ser que o primeiro registro naum tenha o cliente
               If (XNumero = 0) AND (DMESTOQUE.Alx1.FieldByName('COD_CLIENTE').AsString <> '')
               Then Begin
                   FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMESTOQUE.Alx1.FieldByname('COD_CLIENTE').AsString, '');
                   XCod_Pessoa:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
                   EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
                   EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
                   EdCodCli.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;

               // a partir de agora nao sera mais necessari buscar dados de cliente
               XNumero := 1;
               End;

               DMCONTA.TParcCR.Close;
               DMCONTA.TParcCR.SQL.Clear;
               DMCONTA.TParcCR.SQL.Add('update parcelacr set parcelacr.mark='+#39+'B'+#39);
               DMCONTA.TParcCR.SQL.Add('where parcelacr.cod_parcelacr = :codigo');
               DMCONTA.TParcCR.ParamByName('codigo').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_PARCELACR').AsInteger;
               DMCONTA.TParcCR.ExecSQL;

               DMCONTA.IBT.CommitRetaining;
           // proxima parcela a receber
           DMESTOQUE.Alx1.Next;
           End
       End
       Else Begin

           XCod_Pessoa:= 0;
           EdCPF.Text:= '';
           EdNomeCli.Text:= '';
           EdCodCli.Text:= '';

           // enquanto nao for o final das parcelas
           while not DMESTOQUE.Alx2.Eof do
           begin
               DMCONTA.TParcCR.Close;
               DMCONTA.TParcCR.SQL.Clear;
               DMCONTA.TParcCR.SQL.Add('update parcelacr set parcelacr.mark='+#39+'N'+#39);
               DMCONTA.TParcCR.SQL.Add('where parcelacr.cod_parcelacr = :codigo');
               DMCONTA.TParcCR.ParamByName('codigo').AsInteger := DMESTOQUE.Alx2.FieldByName('COD_PARCELACR').AsInteger;
               DMCONTA.TParcCR.ExecSQL;

               DMCONTA.IBT.CommitRetaining;

           // proxima parcela
           DMESTOQUE.Alx2.Next;
           End;
       End;
   End;
   FiltraParcela('ONUMPARC');
End;

//Seleciona parcelas de acordo com filtro da edit. se valor em branco passado com o no inicio mostrar todas mas ordenado pelo valor
Procedure TFBaixaMult.FiltraParcela(TipoCons: String);
Begin
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx3.Close;
   DMESTOQUE.Alx3.SQL.Clear;

	If XTIPO='CP'
   Then Begin//Consulpta para parcelas de contas a pagar
       DMESTOQUE.Alx1.SQL.Add('Select * From VWparCP');
       DMESTOQUE.Alx2.SQL.Add('Select * From VWparCP');
       DMESTOQUE.Alx3.SQL.Add('Select SUM(vwparcp.valor) AS VALOR From VWparCP ');

   	DMESTOQUE.Alx1.SQL.Add('Where (COD_LOJA = :CODLOJA)');
   	DMESTOQUE.Alx1.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	DMESTOQUE.Alx1.SQL.Add(' And (FECH <> '+#39+'S'+#39+') And (Mark <> '+#39+'B'+#39+')');
   	DMESTOQUE.Alx2.SQL.Add('Where (COD_LOJA = :CODLOJA) ');
   	DMESTOQUE.Alx2.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	DMESTOQUE.Alx2.SQL.Add(' And (FECH <> '+#39+'S'+#39+') And (Mark = '+#39+'B'+#39+')');
   	DMESTOQUE.Alx3.SQL.Add('Where (COD_LOJA = :CODLOJA) ');
   	DMESTOQUE.Alx3.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	DMESTOQUE.Alx3.SQL.Add(' And (FECH <> '+#39+'S'+#39+') And (Mark = '+#39+'B'+#39+')');
   End
   Else Begin//Consulpta para parcelas de contas a receber
       DMESTOQUE.Alx1.Sql.Add('Select * From VWparCR');
       DMESTOQUE.Alx2.Sql.Add('Select * From VWparCR');
       DMESTOQUE.Alx3.SQL.Add('Select SUM(vwparcr.valor) AS VALOR From VWparCR ');
   	//filtra para loja
   	DMESTOQUE.Alx1.SQL.Add('Where (COD_LOJA = :CODLOJA) ');
   	DMESTOQUE.Alx1.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	DMESTOQUE.Alx1.SQL.Add(' And (FECH <> '+#39+'S'+#39+') And (Mark <> '+#39+'B'+#39+')');
   	DMESTOQUE.Alx2.SQL.Add('Where (COD_LOJA = :CODLOJA) ');
   	DMESTOQUE.Alx2.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	DMESTOQUE.Alx2.SQL.Add(' And (FECH <> '+#39+'S'+#39+') And (Mark = '+#39+'B'+#39+')');
   	DMESTOQUE.Alx3.SQL.Add('Where (COD_LOJA = :CODLOJA) ');
   	DMESTOQUE.Alx3.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	DMESTOQUE.Alx3.SQL.Add(' And (FECH <> '+#39+'S'+#39+') And (Mark = '+#39+'B'+#39+')');
   End;

   //Continua sql com os valores para consulta
   If TipoCons='NUMPARC'
   Then Begin//filtrar pelo numparc numero da parcela e ordenar
   	DMESTOQUE.Alx1.SQL.Add(' And (upper(NUMPARC) like upper('+#39+EdNumParc.Text+'%'+#39+')) ORDER BY NUMPARC, DTVENC, NOME');
   	DMESTOQUE.Alx2.SQL.Add(' And (upper(NUMPARC) like upper('+#39+EdNumParc.Text+'%'+#39+')) ORDER BY NUMPARC, DTVENC, NOME');
   End;
   If TipoCons='ONUMPARC'
   Then Begin//ordena pelo valor
   	DMESTOQUE.Alx1.SQL.Add(' ORDER BY NUMPARC, DTVENC, NOME');
   	DMESTOQUE.Alx2.SQL.Add(' ORDER BY NUMPARC, DTVENC, NOME');
   End;

   If XTIPO='CP'
   Then Begin // Realizará o filtro de pessoa para fornecedor de contas a pagar
	   If TipoCons='PESSOA'
	   Then Begin//filtrar pelo fornecedor  da parcela e ordenar
      		DMESTOQUE.Alx1.SQL.Add(' And (upper(NOME) like upper('+#39+EdPessoa.Text+'%'+#39+')) ORDER BY NOME, DTVENC');
      		DMESTOQUE.Alx2.SQL.Add(' And (upper(NOME) like upper('+#39+EdPessoa.Text+'%'+#39+')) ORDER BY NOME, DTVENC');
	   End;
	   If TipoCons='OPESSOA'
	   Then Begin//ordena pelo valor
   		DMESTOQUE.Alx1.SQL.Add(' ORDER BY NOME, DTVENC');
   		DMESTOQUE.Alx2.SQL.Add(' ORDER BY NOME, DTVENC');
	   End;
   End
   Else Begin
	   If TipoCons='PESSOA'
	   Then Begin//filtrar pelo cliente da parcela e ordenar
   		DMESTOQUE.Alx1.SQL.Add(' And (upper(NOME) like upper('+#39+EdPessoa.Text+'%'+#39+')) ORDER BY NOME, DTVENC');
   		DMESTOQUE.Alx2.SQL.Add(' And (upper(NOME) like upper('+#39+EdPessoa.Text+'%'+#39+')) ORDER BY NOME, DTVENC');
	   End;
	   If TipoCons='OPESSOA'
	   Then Begin//ordena pelo valor
   		DMESTOQUE.Alx1.SQL.Add(' ORDER BY NOME, DTVENC');
   		DMESTOQUE.Alx2.SQL.Add(' ORDER BY NOME, DTVENC');
	   End;
   End;
   //abre sql com filtro
  	DMESTOQUE.Alx1.SQL.Text;
  	DMESTOQUE.Alx1.Open;
  	DMESTOQUE.Alx2.SQL.Text;
  	DMESTOQUE.Alx2.Open;
  	DMESTOQUE.Alx3.SQL.Text;
  	DMESTOQUE.Alx3.Open;
   XTOTAL:=DMESTOQUE.Alx3.FieldByName('VALOR').AsCurrency;
   LValor.Caption:=FormatFloat('0.00', XTOTAL);
   Try
       StrToFloat(EDMULTA.Text);
       If RadioGroup1.ItemIndex=0 Then
   		LValor.Caption:=FormatFloat('0.00', XTOTAL+StrToFloat(EDMULTA.Text))
       Else
   		LValor.Caption:=FormatFloat('0.00', XTOTAL-StrToFloat(EDMULTA.Text));       
   Except
   End;
End;

procedure TFBaixaMult.FormActivate(Sender: TObject);
Var
	Comp: String;
begin
  inherited;
   CbApagarParcela.Checked:=False;
   XTIPO:=FMenu.TIPOAUX;
	If XTIPO='CR'
   Then Begin
    If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Para continuar o sistema deve desmarcar as contas de conferência. Deseja continuar? ' , '', 2, 3, False, 'c')=2
    Then Begin
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add('update parcelacr set parcelacr.MARK='+#39+'N'+#39);
       DMMACS.TALX.ExecSQL;
       DMMACS.Transaction.CommitRetaining;
    End
    Else Begin
       Close;
    End;
   End
   Else Begin
    If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Para continuar o sistema deve desmarcar as contas de conferência. Deseja continuar? ' , '', 2, 3, False, 'c')=2
    Then Begin
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add('update parcelacp set parcelacp.MARK='+#39+'N'+#39);
       DMMACS.TALX.ExecSQL;
       DMMACS.Transaction.CommitRetaining;
    End
    Else Begin
       Close;
    End;
   End;
	{If XTIPO='CR'
   Then Begin
   	LPessoa.Caption:='Cliente:';
       comp:='(DESCRICAO='+#39+'À VISTA'+#39+')';
   End
   Else Begin
   	LPessoa.Caption:='Fornecedor:';
       comp:='(DESCRICAO='+#39+'À VISTA'+#39+')';
   End;
   FiltraParcela('ONUMPARC');
   If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO', '', Comp)=True
   Then Begin
       FrmFormPagFrete.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
       FrmFormPagFrete.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
       XCODFORMPAG:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
   End
      Else Begin
		Mensagem('A T E N Ç Ã O', 'Para efetuar baixas múltiplas, é necessário ter cadastrado uma forma de pagamento como À VISTA.', '', 1, 1, False, 'i');
		Close;
   End;
   }
   //se for baixar contas a pagar
   If XTIPO<>'CR'
   Then Begin
       //FrmFormPagFrete.BTNOPEN.Enabled:=False;
       //FrmFormPagFrete.BTNOPEN.Visible:=False;
       //FrmFormPagFrete.LUZOPEN.Visible:=False;
       //FrmFormPagFrete.BTNMINUS.Enabled:=False;
       //FrmFormPagFrete.BTNMINUS.Visible:=False;
       //FrmFormPagFrete.LUZMINUS.Visible:=False;


   	LPessoa.Caption:='Fornecedor:';
       comp:='(DESCRICAO='+#39+'À VISTA'+#39+')';
       FiltraParcela('ONUMPARC');
       If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO', '', Comp)=True
       Then Begin
           FrmFormPagFrete.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
           FrmFormPagFrete.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
           XCODFORMPAG:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       End
       Else Begin
		Mensagem('A T E N Ç Ã O', 'Para efetuar baixas múltiplas, é necessário ter cadastrado uma forma de pagamento como À VISTA.', '', 1, 1, False, 'i');
		Close;
   end;
   end;
   If XTIPO ='CR'
   then begin
       FrmFormPagFrete.BTNOPEN.Enabled:=True;
       FrmFormPagFrete.BTNOPEN.Visible:=True;
       FrmFormPagFrete.LUZOPEN.Visible:=True;
       FrmFormPagFrete.BTNMINUS.Enabled:=True;
       FrmFormPagFrete.BTNMINUS.Visible:=True;
       FrmFormPagFrete.LUZMINUS.Visible:=True;
        //teste
       FiltraParcela('ONUMPARC');

   end;
   EdDtRef.Text:=DateToStr(Date());
   FrmFormPagFrete.Refresh;
   //se realmente estiver trabalhando com vendas e não com compras
   PPesCad.Visible:=False;

   // - 21/01/2009: APAGA REGISTROS DA TABERLA TMP
    DMCONTA.TAlx.Close;
    DMCONTA.TAlx.SQL.Clear;
    DMCONTA.TAlx.SQL.Add('DELETE FROM TMP ');
    DMCONTA.TAlx.ExecSQL;
    DMCONTA.IBT.CommitRetaining;
    // - 21/01/2009: pagamento multiplo
    XMultiplo := False;
    XTotMult := 0;
    XCodTmp := 0;
    CBPagamento.Items.Add('Múltiplo');
   
end;

procedure TFBaixaMult.EdNumParcKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If key=#13
   Then Begin
		FiltraParcela('NUMPARC');
   End;
	If key=#27
   Then Begin
		FiltraParcela('ONUMPARC');
   End;
end;

procedure TFBaixaMult.EdPessoaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If key=#13
   Then Begin
		FiltraParcela('PESSOA');
   End;
	If key=#27
   Then Begin
		FiltraParcela('OPESSOA');
   End;
end;

procedure TFBaixaMult.LInsereClick(Sender: TObject);
begin
  inherited;
   MarcaUnicaParc(True);
end;

procedure TFBaixaMult.LRetiraClick(Sender: TObject);
begin
  inherited;
   MarcaUnicaParc(False);
end;

procedure TFBaixaMult.EdNumParcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_INSERT Then
       LInsere.OnClick(sender);
end;

procedure TFBaixaMult.EdPessoaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_INSERT Then
       LInsere.OnClick(sender);
   If key=vk_down
   Then Begin
       DMESTOQUE.Alx1.Next;
       DMESTOQUE.Alx2.Next;
   End;
   If key=vk_up
   Then Begin
       DMESTOQUE.Alx1.prior;
       DMESTOQUE.Alx2.prior;
   End;

end;

procedure TFBaixaMult.EdCodCliExit(Sender: TObject);
begin
  inherited;
   LUZOPEN.Visible:=False;
  	If XTIPO='CR'
   Then Begin
		//Verifica se o cliente é do tipo consumidor
	    If XCod_Pessoa=DMMACS.TLoja.FieldByName('COD_CONSUMIDOR').AsInteger
	    Then Begin
	       PPesCad.Visible:=True;
	       PPesCad.BringToFront;
          PPesCad.Enabled:=True;
	       If EdNomePESSOA.Text=''
          Then Begin
		       	EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
               EdCPFPESSOA.SetFocus;
          End;
	    End;
   End
   Else Begin

   End;
end;
procedure TFBaixaMult.EdCodCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
		If XTIPO='CR'
       Then Begin//trabalhando com vendas
       	If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+EdCodCli.Text+#39)=True
           Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
	        	XCod_Pessoa:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
	            EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
	            EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
           End
	        Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
               XCod_Pessoa:=-1;
               EdCodCli.Text:='';
	            EdCPF.Text:='';
	            EdNomeCli.Text:='';
           End;
       End
       Else Begin
       	If FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', ' WHERE COD_INTERNO='+#39+EdCodCli.Text+#39)=True
           Then Begin
           	XCod_Pessoa:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
               EdNomeCli.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
	            EdCPF.Text:=DMPESSOA.WFornecedor.FieldByName('CPFCNPJ').AsString;
           End
           Else Begin
           	XCod_Pessoa:=-1;
               EdCodCli.Text:='';
               EdNomeCli.Text:='';
               EdCPF.Text:='';
           End;
       End;
   End;
end;

procedure TFBaixaMult.BtnProcPessClick(Sender: TObject);
begin
  inherited;
	//se realmente estiver trabalhando com vendas e não com compras
   PPesCad.Visible:=False;
   If XTIPO='CR'
   Then Begin
        FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
        If AbrirForm(TFCliente, FCliente, 1)='Selected'
        Then Begin
	        XCod_Pessoa:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
	        EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
	        EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
	        EdCodCli.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
        End;
   End
   Else Begin
        FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
        If AbrirForm(TFFornecedor, FFornecedor, 1)='Selected'
        Then Begin
            XCod_Pessoa:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
            EdCPF.Text:=DMPESSOA.WFornecedor.FieldByName('CPFCNPJ').AsString;
            EdNomeCli.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
            EdCodCli.Text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
        End;
   End;
end;

procedure TFBaixaMult.FrmContaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
 		If FrmConta.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+'C'+#39+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+FrmConta.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XCodConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XCodConta:=-1;
		      	FrmConta.EdDescricao.Text:='';
		      	FrmConta.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XCodConta:=0;
	      	FrmConta.EdDescricao.Text:='';
	      	FrmConta.EDCodigo.text:='';
       End;
   End;
end;

procedure TFBaixaMult.BtnMoedaCancelarClick(Sender: TObject);
begin
  inherited;
	Close;
end;

procedure TFBaixaMult.CBPagamentoExit(Sender: TObject);
begin
  inherited;
   //controla visualização de componentes referentes a escolha e visualização da cta corrente
	If (CBPagamento.Text='Banco') or (CBPagamento.Text='Boleto') or (CBPagamento.Text='Cheque')
   Then Begin
   	//filtro para mostrar todos os bancos disponiveis

	    If XTIPO='CP'
       Then Begin
           //Tratamento para Ctas a pagar
           if CBPagamento.Text='Cheque' then
           begin
               PMostraCta.Visible:=True;
               PCtaCor.Enabled:=True;
               PCtaCor.Visible:=TRUE;
               PCtaCor.BringToFront;
               DBGCTACOR.SetFocus;
           end
           else begin
               PMostraCta.Visible:=False;
               PBanco.Enabled:=True;
               PBanco.Visible:=TRUE;
               PBanco.BringToFront;
               DBGBANCO.SetFocus;
           end;   
       End
       Else Begin
         //  if not (CBPagamento.Text='Cheque')
        //   then begin
           //Tratamento para Ctas a pagar
           PMostraCta.Visible:=True;
      	    PCtaCor.Enabled:=True;
      	    PCtaCor.Visible:=TRUE;
      	    PCtaCor.BringToFront;
      	    DBGCTACOR.SetFocus;
       //     end;
       End;
   End
   Else Begin
       PBanco.Enabled:=False;
       PMostraCta.Visible:=False;
   End;

   // - 21/01/2009: se for lançamento múltiplo e não for a vista em contas a receber não deixar passar
   If (CBPagamento.Text='Múltiplo') and (XTIPO<>'CP') and (FrmFormPagFrete.EdDescricao.Text <> 'À VISTA')
   then begin
        Mensagem('OPÇÃO BLOQUEADA', 'Em Contas a Receber apenas é possível efetuar o Pagamento Múltiplo quando for À Vista!', '', 1, 1, False, 'i');
        CBPagamento.Text := 'Carteira';
        CBPagamento.SetFocus;
        Exit;
   end;

   // - 21/01/2009: se for lançamento múltiplo
   If (CBPagamento.Text='Múltiplo')
   Then Begin
        // - 21/01/2009: se nao foi aberto o painel contas multiplas antes
        if not XMultiplo then begin
            // - 21/01/2009: limpar tabela para ser usada
          DMBANCO.TAlx.Close;
          DMBANCO.TAlx.SQL.Clear;
          DMBANCO.TAlx.SQL.Add('delete from tmp');
          DMBANCO.TAlx.ExecSQL;
          try
              DMBANCO.IBT.CommitRetaining;
          Except
              DMBANCO.IBT.RollbackRetaining;
          end;

          XMultiplo := True;
          XTotMult := 0;
          XCodTmp := 0;
       end;

       // - 21/01/2009: mostrar painel contas multiplas
       PMultiplo.Visible := True;
       PMultiplo.BringToFront;
       AtualizarLancMultiplo;
       EdValorMul.SetFocus;
   End
   else begin
        XMultiplo := False;
   end;
end;

procedure TFBaixaMult.CBPagamentoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key<>#13 Then
   	Key:=#0;
end;

procedure TFBaixaMult.FrmContaBTNOPENClick(Sender: TObject);
begin
  inherited;
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
   If XTIPO='CR'
   Then Begin
       // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
       XTIPO_CONTA := 'C';

		filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+'C'+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO')
   End
   Else Begin
       // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
       XTIPO_CONTA := 'D';

		filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+'D'+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');
   End;

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XCodConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
end;

procedure TFBaixaMult.BtnMoedaOKClick(Sender: TObject);
begin
  inherited;
   //valida quanto ao valor
	If XTOTAL<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Para efetuar o faturamento, é necessario que o valor total seja superior a zero', '', 1, 1, False, 'i');
       EdNumParc.SetFocus;
       Exit;
   End;

    // - 21/01/2009: ser for pagamento múltiplo faz validação
    if CBPagamento.Text = 'Múltiplo' then
        if VerificaValorMultiplo = False then
            Exit;

   // - 21/01/2009: ser for pagamento múltiplo total recebe o valor pago em multiplo
   if CBPagamento.Text = 'Múltiplo' then
        XTOTAL := XVlrPago;

   //valida quanto aos pedidos selecionados
	If DMESTOQUE.Alx2.IsEmpty
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Para efetuar o faturamento, é necessario que haja pedidos marcados', '', 1, 1, False, 'i');
       EdNumParc.SetFocus;
       Exit;
   End;
   //valida quanto ao cliente
	If XCod_Pessoa =-1
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Para efetuar o faturamento, é necessario que haja um cliente selecionado', '', 1, 1, False, 'i');
       EdCodCli.SetFocus;
       Exit;
   End;
   //valida quanto a forma de pagamento
	If XCODFORMPAG=-1
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Para efetuar o faturamento, é necessario que haja uma forma de pagamento selecionada', '', 1, 1, False, 'i');
       FrmFormPagFrete.EDCodigo.SetFocus;
       Exit;
   End;
   //valida quanto ao Documento
	If (EdDocumento.Text='') or (EdDocumento.Text='0')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Para efetuar o faturamento, é necessario que seja informado o Nº do Documento', '', 1, 1, False, 'i');
       EdDocumento.SetFocus;
       Exit;
   End;
   //valida quanto a conta do plano de contas
	If XCodConta=-1
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Para efetuar o faturamento, é necessario que uma conta do plano de contas seja selecionada', '', 1, 1, False, 'i');
       FrmConta.EDCodigo.SetFocus;
       Exit;
   End;
   If FaturaContas=True
   Then Begin
     CBPagamento.Text := 'Carteira';
   	 FiltraParcela('ONUMPARC');
   End;
end;

procedure TFBaixaMult.EDMULTAExit(Sender: TObject);
begin
  inherited;
	Try
       StrToFloat(EDMULTA.Text);
       XMULTA:=StrToFloat(EDMULTA.Text);
		FiltraParcela('ONUMPARC');       
   Except
       EDMULTA.Text:='0';
  		FiltraParcela('ONUMPARC');
   end;
end;

procedure TFBaixaMult.RadioGroup1Click(Sender: TObject);
begin
  inherited;
   EDMULTA.SetFocus;
end;

procedure TFBaixaMult.DBGBANCOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
   	If Not DMBANCO.TBanco.IsEmpty Then//'se banco não estiver vazio
       	XCOD_CONTABANCO:=DMBANCO.TBanco.FieldByName('COD_BANC').AsInteger
       Else
           XCOD_CONTABANCO:=-1;

       PBanco.Visible:=False;
       PBanco.Enabled:=False;
       EdDocumento.SetFocus;
   End;
end;

procedure TFBaixaMult.PBancoExit(Sender: TObject);
begin
  inherited;
   If PBanco.Visible=True Then
       DBGBANCO.SetFocus;
end;

procedure TFBaixaMult.PCtaCorExit(Sender: TObject);
begin
  inherited;
   If PCtaCor.Visible=True Then
       DBGCTACOR.SetFocus;
end;

procedure TFBaixaMult.DBGCTACORKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
   	If Not DMBANCO.WCtaCor.IsEmpty Then//'se banco não estiver vazio
       	XCOD_CONTABANCO:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger
       Else
           XCOD_CONTABANCO:=-1;

       PCtaCor.Visible:=False;
       PCtaCor.Enabled:=False;

       if not XMultiplo // - 21/01/2009: se nao for multiplo
       then
            EdDocumento.SetFocus
       else
            BtnAddConta.SetFocus;

   End;
end;

procedure TFBaixaMult.Label3Click(Sender: TObject);
begin
  inherited;
   MarcaAllParc(True);
end;

procedure TFBaixaMult.Label7Click(Sender: TObject);
begin
  inherited;
   MarcaAllParc(False);
end;

//libera a seleção de formar de pagameto caso for baixar contas a receber
procedure TFBaixaMult.FrmFormPagFreteBTNOPENClick(Sender: TObject);
begin
  inherited;
  FrmFormPagFrete.BTNOPENClick(Sender);
   If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
      FrmFormPagFrete.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
      FrmFormPagFrete.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
      XCODFORMPAG:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
   End;
   FrmFormPagFrete.Refresh;
end;

procedure TFBaixaMult.FrmContaBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmConta.BTNMINUSClick(Sender);

end;

//limpa campos de forma de pagamento
procedure TFBaixaMult.FrmFormPagFreteBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmFormPagFrete.BTNMINUSClick(Sender);
  FrmFormPagFrete.EDCodigo.Text:='';
  FrmFormPagFrete.EdDescricao.Text:='';

end;

procedure TFBaixaMult.AtualizarLancMultiplo;
begin
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add('select * from tmp');
   DMMACS.TMP.Open;

   if DMMACS.TMP.IsEmpty
   then begin
        // - 21/01/2009: tabela vazia bloqueia botao de remover e zera valor pago
        BtnRemConta.Enabled := False;
        LTotal.Caption := '0,00';
        XVlrPago := 0;
        BtnAddConta.Enabled := True;
   end else begin
        BtnRemConta.Enabled := True;
        DMBANCO.TAlx.Close;
        DMBANCO.TAlx.SQL.Clear;
        DMBANCO.TAlx.SQL.Add('select sum(tmp.vlr1) as valor from tmp');
        DMBANCO.TAlx.Open;
        // - 21/01/2009: faz soma das contas add
        XVlrPago := DMBANCO.TAlx.FieldByName('valor').AsCurrency;
        LTotal.Caption := FormatFloat('0.00', XVlrPago);
        // - 21/01/2009: se o valor paga utltrapassar o valor devido bloquear botao de add
        if XVlrPago >= XTOTAL
        then
            BtnAddConta.Enabled := False
        else
            BtnAddConta.Enabled := True;
   end;


end;

procedure TFBaixaMult.CBMultContaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    if key <> #13 then
        key:=#0;
end;

procedure TFBaixaMult.BtnAddContaClick(Sender: TObject);
begin
  inherited;
    if EdValorMul.ValueNumeric = 0
  then begin
      Mensagem('INFORMAÇÃO', 'Informe um número maior que 0 (zero)!', '', 1, 1, False, 'i');
      EdValorMul.SetFocus;
      Exit;
  end;

  XCodTmp := XCodTmp+1;

  DMBANCO.TAlx.Close;
  DMBANCO.TAlx.SQL.Clear;
  DMBANCO.TAlx.SQL.Add('insert into TMP');
  DMBANCO.TAlx.SQL.Add('(DESC1, VLR1, COD_TMP, INT1, DESC3) values (:DESC1, :VLR1, :COD_TMP, :INT1, :DESC3)');
  DMBANCO.TAlx.ParamByName('COD_TMP').AsInteger := XCodTmp;
  // - 21/01/2009: forma de pagamento
  DMBANCO.TAlx.ParamByName('DESC1').AsString := CBMultConta.Text;
  // - 21/01/2009: valor do pagamento
  DMBANCO.TAlx.ParamByName('VLR1').AsCurrency := EdValorMul.ValueNumeric;

  if (CBMultConta.Text = 'Banco') or ((CBMultConta.Text = 'Cheque') And (XTipo='P'))
  then begin
    if XCOD_CONTABANCO = -1
    then begin
        Mensagem('A T E N Ç Ã O ', 'Conta Corrente não encontrada!', '', 1,1, false, 'i');
        EdValorMul.setFocus;
        Exit;
    end;
    // - 21/01/2009: cod cnt corrente
    DMBANCO.TAlx.ParamByName('INT1').AsInteger := XCOD_CONTABANCO;
    // - 21/01/2009: nome do banco
    DMBANCO.TAlx.ParamByName('DESC3').AsString := DMBANCO.WCtaCor.FieldByName('DESCBANCO').AsString;
  end;

  try
      DMBANCO.TAlx.ExecSQL;
      DMBANCO.IBT.CommitRetaining;
      XTotMult := XTotMult+1;
  Except
      DMBANCO.IBT.RollbackRetaining;
      Mensagem('A T E N Ç Ã O ', 'Ocorreu uma Falha na inserção da Forma de Pagamento!', '', 1,1, false, 'i');
  end;

  AtualizarLancMultiplo;

  EdValorMul.ValueNumeric := 0;
  CBMultConta.Text := 'Carteira';
  EdValorMul.SetFocus;
end;

procedure TFBaixaMult.CBMultContaExit(Sender: TObject);
begin
  inherited;
    if (CBMultConta.Text = 'Banco') or ((CBMultConta.Text = 'Cheque') And (XTipo='P'))
   then begin
      // - 21/01/2009:  visualização de componentes referentes a escolha e visualização da cta corrente

     FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
     PCtaCor.Enabled:=True;
     PCtaCor.Visible:=TRUE;
     PCtaCor.BringToFront;
     DBGCTACOR.SetFocus;

   end;
end;

procedure TFBaixaMult.BtnRemContaClick(Sender: TObject);
begin
  inherited;
    DMBANCO.TAlx.Close;
  DMBANCO.TAlx.SQL.Clear;
  DMBANCO.TAlx.SQL.Add('select * from tmp where tmp.cod_tmp = :cod');
  DMBANCO.TAlx.ParamByName('cod').AsInteger := DMMACS.TMP.FieldByName('cod_tmp').AsInteger;
  DMBANCO.TAlx.Open;

  if DMBANCO.TAlx.IsEmpty
  then begin
        Mensagem('A T E N Ç Ã O ', 'Forma de Pagamento não encontrada!', '', 1,1, false, 'i');
  end else begin
        DMBANCO.TAlx.Close;
        DMBANCO.TAlx.SQL.Clear;
        DMBANCO.TAlx.SQL.Add('delete from tmp where tmp.cod_tmp = :cod');
        DMBANCO.TAlx.ParamByName('cod').AsInteger := DMMACS.TMP.FieldByName('cod_tmp').AsInteger;
        DMBANCO.TAlx.ExecSQL;
         try
            DMBANCO.TAlx.ExecSQL;
            DMBANCO.IBT.CommitRetaining;
            XTotMult := XTotMult-1;
        Except
            DMBANCO.IBT.RollbackRetaining;
            Mensagem('A T E N Ç Ã O ', 'Ocorreu uma Falha na Remoção da Forma de Pagamento!', '', 1,1, false, 'i');
        end;
  end;

  AtualizarLancMultiplo;

  EdValorMul.SetFocus;
end;

procedure TFBaixaMult.cxButton1Click(Sender: TObject);
begin
  inherited;
     PMultiplo.SendToBack;
    PMultiplo.Visible := False;

    if XTotMult = 0
       then begin
           Mensagem('INFORMAÇÃO AO USUÁRIO', 'Não há nenhum Lançamento Múltiplo!', '', 1, 1, False, 'i');
            //EDVALORPAGO.ValueNumeric := EdValorMul.ValueNumeric;
            CBPagamento.Text := CBMultConta.Text;
        	CBPagamento.SetFocus;
        	exit;
       end;

    if XTotMult = 1
       then begin
           Mensagem('INFORMAÇÃO AO USUÁRIO', 'Há apenas um Lançamento Múltiplo!', '', 1, 1, False, 'i');
            //EDVALORPAGO.ValueNumeric := DMMACS.TMP.FieldByName('vlr1').Value;
            CBPagamento.Text := DMMACS.TMP.FieldByName('desc1').AsString;
            XMultiplo := False;
            CBPagamento.SetFocus;
        	exit;
       end;

    //EDVALORPAGOExit(sender);
    EdDocumento.SetFocus;
end;

// - 21/01/2009:
function TFBaixaMult.VerificaValorMultiplo:Boolean;
begin
     if CBPagamento.text = 'Múltiplo'
     then begin
        if (XVlrPago < XTOTAL) and ((RadioGroup1.ItemIndex <> 1 ) or (EDMULTA.Text = '0'))
        then begin
           If Mensagem('A T E N Ç Ã O', 'O valor a ser pago é de '+FloatToStr(XVlrPago)+' deseja converter em Desconto', '', 2, 3, False, 'c')=2
          Then Begin
                RadioGroup1.ItemIndex := 1;
                EDMULTA.Text := FormatFloat('0.00', XTOTAL-XVlrPago);
                Result := True;
          End
          Else Begin
                Result := False;
                CBPagamentoExit(Self);
          end;
        end else if (XVlrPago > XTOTAL) and ((RadioGroup1.ItemIndex <> 0 ) or (EDMULTA.Text = '0'))
        then begin
            If Mensagem('A T E N Ç Ã O', 'O valor a ser pago é de '+FloatToStr(XVlrPago)+' deseja converter em Multa', '', 2, 3, False, 'c')=2
          Then Begin
                RadioGroup1.ItemIndex := 0;
                EDMULTA.Text := FormatFloat('0.00', XVlrPago-XTOTAL);
                Result := True;
          End
          Else Begin
                Result := False;
                CBPagamentoExit(Self);
          end;
        end
        else
            Result := true;

     end
     else
        Result := True;
end;

procedure TFBaixaMult.EDMULTAEnter(Sender: TObject);
begin
  inherited;
    if CBPagamento.text = 'Múltiplo' then
       VerificaValorMultiplo;
end;

end.


uses UDMConta;


uses UDMConta;


uses UDMConta;


uses UDMConta;