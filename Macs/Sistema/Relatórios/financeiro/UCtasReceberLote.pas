unit UCtasReceberLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRodaPe, Buttons, DrLabel, jpeg, ExtCtrls, StdCtrls,
  TFlatButtonUnit, EditFloat, ColorEditFloat, UFrmBusca, Grids, DBGrids,
  Mask, ColorMaskEdit, XPMan, FR_Class, FR_DSet, FR_DBSet, QuickRpt,
  QRCtrls, gbCobranca, DB{, MDOCustomDataSet, MDOQuery};

type
  TFCtasReceberLote = class(TFPadraoRodaPe)
    PLanc: TPanel;
    BtnLancamento: TFlatButton;
    Label1: TLabel;
    CBTipoValor: TComboBox;
    Label2: TLabel;
    EdValor: TColorEditFloat;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EdDia: TColorEditFloat;
    Label8: TLabel;
    EdMes: TColorEditFloat;
    Label9: TLabel;
    EdNumParc: TColorEditFloat;
    FrmConta: TFrmBusca;
    Label10: TLabel;
    EdHistorico: TColorEditFloat;
    DbGridCliente: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btngerar: TBitBtn;
    Label11: TLabel;
    EdDtLanc: TColorMaskEdit;
    EdDocRadical: TColorEditFloat;
    CBCompRadical: TComboBox;
    Label12: TLabel;
    EdDtReferencia: TColorMaskEdit;
    RGOpcaoReferencia: TRadioGroup;
    PConsulta: TPanel;
    DBGridConsulta: TDBGrid;
    BtnConsulta: TFlatButton;
    Label13: TLabel;
    DBGrid1: TDBGrid;
    Label14: TLabel;
    BBImprimir: TBitBtn;
    FSDSRel: TfrDBDataSet;
    FSRel: TfrReport;
    P: TPrintDialog;
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
    QRRODAPEDUPLICATA: TQRDBRichText;
    QRLabel20: TQRLabel;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText21: TQRDBText;
    QRBand2: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    PImprimir: TPanel;
    RGTipoImp: TRadioGroup;
    RGOrdenado: TRadioGroup;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    QRLabel21: TQRLabel;
    QRDBText17: TQRDBText;
    LBoleto: TLabel;
    LDuplicata: TLabel;
    LRecibo: TLabel;
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
    QRLabel33: TQRLabel;
    QRDBText30: TQRDBText;
    QRDBText20: TQRDBText;
    gbTitulo1: TgbTitulo;
    RGBoleto: TRadioGroup;
    RGRegistro: TRadioGroup;
    BBRetornar: TBitBtn;
    RBNovo: TRadioButton;
    RBOutraVia: TRadioButton;
    Label15: TLabel;
    BitBtn5: TBitBtn;
    CBHistorico: TCheckBox;
    PrinterSetupDialog1: TPrinterSetupDialog;
    EdTotalTamanho: TFloatEdit;
    cbvencimento: TCheckBox;
    EdDataIni: TMaskEdit;
    Label5: TLabel;
    Label16: TLabel;
    EdDataFim: TMaskEdit;
    RGTipo: TRadioGroup;
    LNumCliente: TLabel;
    TMBoleto: TMemo;
    Label17: TLabel;
    QRDBText22: TQRDBText;
    procedure DbGridClienteDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DbGridClienteDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btngerarClick(Sender: TObject);
    procedure EdNumParcExit(Sender: TObject);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure BtnLancamentoClick(Sender: TObject);
    procedure BtnConsultaClick(Sender: TObject);
    procedure BBAtualizarClick(Sender: TObject);
    procedure DBGridConsultaCellClick(Column: TColumn);
    procedure DBGridConsultaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RGOpcaoReferenciaEnter(Sender: TObject);
    procedure RGOpcaoReferenciaClick(Sender: TObject);
    procedure BBImprimirClick(Sender: TObject);
    procedure PShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RGTipoImpClick(Sender: TObject);
    procedure BBRetornarClick(Sender: TObject);
    procedure RBNovoClick(Sender: TObject);
    procedure RBOutraViaClick(Sender: TObject);
    procedure RGBoletoClick(Sender: TObject);
    procedure RGOrdenadoClick(Sender: TObject);
    procedure BtnFechaClick(Sender: TObject);
    procedure CBTipoValorClick(Sender: TObject);
    procedure FrmContaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure EdMesExit(Sender: TObject);
    procedure RGTipoClick(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
	 //Função utilizada para iniciar os campos na tela
	 Function LimpaEdits: Boolean;
    //Função para selecionar todos os clientes
    Function SelecionaCliente: Boolean;
    //Função para marcar desmarcar clientes
    Function MarcaDesmarca: Boolean;
    //Função para buscar o valor da ultima parcela
    Function UltimaParc: Boolean;
    //Utilizado para gerar parcelas de acordo com os parametros passados
    Function GeraParcela: Boolean;
    //Insere cabecalho de ctas receber
    Function InsereCtasReceber: Boolean;
    //Utilizado para gerar parcelas de acordo com os parametros passados
    Procedure GeraCtaReceber;
    //Procedure utilizada para ajustar data de vencimento
    Procedure AjustaDataVenc;
    //Procedure utilizada para ajustar data de referência
    Procedure AjustaDataRef;
    //Procedure utilizada para ajustar o numero de documento da parcela
    Procedure AjustaNumParc;
    // Procedure para informar o numero de clientes selecionados
    Function Numero_clientes: Boolean;
    //Seleciona clientes com campo export preenchido
    Function Clientes_selecionados: boolean;
    // Seleciona codigo em conta a receber
    Procedure Seleciona_Codigo_ctareceber;
    //Seleciona todos os dados de PARCELACR
    Procedure Dados_ParcelaCR;
    // Gera novo boleto
    Procedure Novo_boleto;
    //procedure que seleciona e imprime o Boleto da cta
    Procedure ImpBoleto(CODCTA:INTEGER; TIPOIMP: Integer);
    // Procdure para Outra Via
    Procedure Outra_via;
    //seleciona dados da tabela contas receber
    Procedure Seleciona_CtaReceber;
    //Seleciona dados da parcela a receber
    Procedure Seleciona_parcelacr;
    // Exibe painel apos exibir mensagem de erro
    Procedure Mostrar_painel;
    // Seleciona o tamanho total das lojas
    Function Dados_Cliente: Boolean;
    // procedimento para calcular a tamanho da loja e o valor que tem a pagar
    Procedure Rateio_Custo;
    // Calcula valor conforme o numero de parcelas
    Procedure Parcelas;
    //Função para formatar string para financeiro
    Function Formatar_valor(XPorcento: String) : String;
    //Função q percorre as contas criadas atualizando o valor por extenso
    Function AtualizaValorExtenso: Boolean;
    // calcula total financiro das contas a pagar referente ao pediodo indicado junto com o tipo de rateio
    Procedure CalculaRateioPeriodo;
    // verifica se no numero do boleto contem apenas numero "0". Se retorna TRUE eh pq o numero de boleto esta correto
    Function VerificaNumBoleto(NumeroBoleto: string):boolean;
    // numero de clientes selecionados
    Procedure NumeroClientesSelecionados;

    procedure SelecionaGrid;
  end;
                       
var
  FCtasReceberLote: TFCtasReceberLote;
  XCodCTA, XCod_Conta: Integer;
  XTIPOBOLTO: String;//Armazena temporariamente se o boleto eh registrado ou não
  XIncNumParc: Integer; // controle incremental de documento
  Xmes, XAno: Integer; //mes e ano de vencimento das parcelas
  XmesRef, XDiaRef, XAnoRef: Integer; //mes e ano de referencia das parcelas
  XNumParcela: Integer; // Controla o numero do documento na parcela
  XDataVenc: TDate; //Data de Vencimento ajustada
  XDataRef: TDate; //Data de Referencia ajustada
  XCod_parcela: Integer;
  XValor, XTotal, XEDValor, XValor_Parcial, Xcampo_cliente: double;
  XNumeroParcela, XValor_informado: string;
  num_plncta, XNumParc, Xcodigo: INTEGER;
  XCOD_CTACORBLT: Integer; //Recebe o codigo da Cta corrente p/ impressao de boletos Bancario
  XAux, Aux_imp: integer;
  Area: Double; // Tamanho da area de cada loja
  XPorcento: double; // Porcentagem que cada loja tem referente a contas a pagar
  Mes, Ult_dia: string; // utilizadas na proceure parcelas e no evento OnEnter de N. Parc
  XCodConta: Integer;// Armazenará o código da conta do plano para lan''camento
  XCod_PrimeiraParcela:Integer;//Esta variavel irah armazenar a primeira parcela gerada após o botão gerar ser precionada, serah usada para selecionar as parcelas para impressao
  XTotalVlrCalculo: Real;//Variavel ira guardar somatorio do campo calculo dos clientes marcados com "X"

implementation

uses UDMFinanc, UDMPessoa, UDMConta, UDMMacs, UMenu , Alxor32, AlxMessage,
  UConsPlncta, UDmBanco, UCtaCor, UDMSaida, UPadrao, Alxorprn;

{$R *.dfm}

//Função q percorre as contas criadas atualizando o valor por extenso
Function TFCtasReceberLote.AtualizaValorExtenso: Boolean;
Begin
   //seleciona todos os clientes marcados
   Clientes_selecionados;

   //Atualiza parcelas uma a uma
   DMFINANC.TAlx.First;
   while not DMFINANC.TAlx.Eof do
   begin
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add('select * from ctareceber where ctareceber.cod_cliente = :codigo');
       DMMACS.TALX.ParamByName('codigo').AsInteger := DMFINANC.TAlx.FieldByName('cod_cliente').AsInteger;
       DMMACS.TALX.Open;

       DMCONTA.TParcCR.Close;
       DMCONTA.TParcCR.SQL.Clear;
       DMCONTA.TParcCR.SQL.Add('select * from parcelacr where parcelacr.cod_ctareceber = :codigo order by numparc');
       DMCONTA.TParcCR.ParamByName('codigo').AsInteger := DMMACS.TALX.FieldByName('cod_ctareceber').AsInteger;
       DMCONTA.TParcCR.Open;

       DMCONTA.TParcCR.First;
       while Not DMCONTA.TParcCR.eof do
       Begin
           DMCONTA.TParcCR.Edit;
           // Formata valor extenso
           FMenu.Extenso.Numero:=FormatFloat('0.00', DMCONTA.TParcCr.FieldByName('VALOR').AsCurrency);
           DMCONTA.TParcCR.FieldByName('VALEXT').AsString:=FMenu.Extenso.Extenso;
           DMCONTA.TParcCR.Post;
       DMCONTA.TParcCR.Next;
       end;

       DMFINANC.TAlx.Next;
   end;
   DMCONTA.IBT.CommitRetaining;
End;

//Função utilizada para iniciar os campos na tela
Function TFCtasReceberLote.LimpaEdits: Boolean;
Begin
   EdValor.ValueNumeric:=0;
   EdDocRadical.Text:='';
   EdDtLanc.Text:=DateToStr(Date());
   EdHistorico.Text:='';
   FrmConta.Repaint;
End;

//Função para buscar o valor da ultima parcela
Function TFCtasReceberLote.UltimaParc: Boolean;
Begin
    DMCONTA.TAlx.Close;
    DMCONTA.TAlx.SQL.Clear;
    DMCONTA.TAlx.SQL.Add('select * from vwparcr where vwparcr.cod_cliente = :codigo order by dtvenc desc');
    DMCONTA.TAlx.ParamByName('codigo').AsInteger := DMFINANC.TAlx.FieldByName('Cod_Cliente').AsInteger;
    DMCONTA.TAlx.Open;
    XValor := DMCONTA.TAlx.FieldByName('valor').AsFloat;
End;

//Função para formatar string para financeiro
Function TFCtasReceberLote.Formatar_valor(XPorcento: String) : String;
Var
i : integer;
begin
    result := '';
    for i := length(XPorcento) downto 1 do
    if XPorcento[i] in ['0'..'9'] then result := XPorcento[i] + Result
    else if (XPorcento[i] in [chr(44),chr(46)]) and (pos(decimalseparator,Result)=0) then Result := decimalseparator + Result;
    if result = '' then result := '0' + decimalseparator + '00';
    if copy(XPorcento,1,1) = '-' then Result := '-' + Result;
    Result := formatfloat('0.00',strtofloat(result));
End;

// Seleciona o tamanho total das lojas
Function TFCtasReceberLote.Dados_Cliente: Boolean;
begin
   DMPESSOA.TALX1.Close;
   DMPESSOA.TALX1.SQL.Clear;
   DMPESSOA.TALX1.SQL.Add('select SUM(CLIENTE.TAMANHO) as TOTAL from cliente WHERE CLIENTE.EXPORT='+#39+'X'+#39 );
   DMPESSOA.TALX1.Open;
   If DMPESSOA.TALX1.FieldByName('TOTAL').AsCurrency>0 tHEN
   	Result:=True
   Else
   	Result:=False;
   FormatFloat('000,00', DMPESSOA.TALX1.FieldByName('TOTAL').AsFloat);
end;

// Calcula valor conforme o numero de parcelas do ctas a pagar
Procedure TFCtasReceberLote.Parcelas;
var
dt_inicial, dt_final: TDateTime;
begin
   Try
       dt_final :=(StrToDate('31/'+IntToStr(Xmes)+'/'+IntToStr(XAno)));
   Except
       Try
           dt_final:=( StrToDate( '30/'+IntToStr(Xmes)+'/'+IntToStr(XAno)));
       Except
           Try
               dt_final := (StrToDate( '29/'+IntToStr(Xmes)+'/'+IntToStr(XAno)));
           Except
               Try
                   dt_final := (StrToDate( '28/'+IntToStr(Xmes)+'/'+IntToStr(XAno)));
               Except
               End;
           End;
       End;
   End;

   dt_inicial :=  (StrToDate( '01/' + IntToStr(Xmes) + '/' + IntToStr(XAno)));

   DMMACS.TAlx.Close;
   DMMACS.TAlx.SQL.Clear;
   DMMACS.TAlx.SQL.Add('select SUM(parcelacp.valor) as TOTAL from parcelacp ');
   DMMACS.TAlx.SQL.Add(' left join ctapagar on parcelacp.cod_ctapagar = ctapagar.cod_ctapagar ');
   DMMACS.TAlx.SQL.Add(' where parcelacp.dtvenc Between :DATA_INI and :DATA_FINAL ');
   DMMACS.TAlx.ParamByName('DATA_INI').AsString := DateToStr(dt_inicial);
   DMMACS.TAlx.ParamByName('DATA_FINAL').AsString := DateToStr(dt_final);
   DMMACS.TAlx.SQL.Text;
   DMMACS.TAlx.Open;
end;

// procedimento para calcular a tamanho da loja e o valor que tem a pagar
Procedure TFCtasReceberLote.Rateio_Custo;
begin

   // porcentagem de cada loja em relação ao tamanho total do shopping
   XPorcento := ((DMFINANC.TALX.FieldByName('TAMANHO').AsFloat*100) / DMPESSOA.TALX1.FieldByName('TOTAL').AsFloat ) ;

   // valor que cada loja deve pagar
   XValor := (XPorcento * EdValor.ValueNumeric)/100;
end;

Procedure TFCtasReceberLote.Seleciona_parcelacr;
begin
   DMCONTA.TParcCR.Close;
   DMCONTA.TParcCR.SQL.Clear;
   DMCONTA.TParcCR.SQL.Add('select * from parcelacr');
   DMCONTA.TParcCR.SQL.Add('where parcelacr.cod_ctareceber = :codigo order by parcelacr.cod_parcelacr ');
   DMCONTA.TParcCR.ParamByName('codigo').AsInteger := DMCONTA.TCtaR.FieldByName('cod_ctareceber').AsInteger;
   DMCONTA.TParcCR.Open;
end;

procedure TFCtasReceberLote.Mostrar_painel;
begin
   RGRegistro.Visible := False;
   RGRegistro.SendToBack;
   BBRetornar.Visible := False;
   BBRetornar.SendToBack;
   RGTipoImp.Visible := True;
   RGTipoImp.BringToFront;
   RGBoleto.Visible := True;
   RGBoleto.SendToBack;
   RBNovo.Checked := False;
   RBOutraVia.Checked := False;
   RBNovo.Visible := True;
   RBNovo.BringToFront;
   RBOutraVia.Visible := True;
   RBOutraVia.BringToFront;

end;

// Prcedure para Outra Via
procedure TFCtasReceberLote.Outra_via;
begin
  inherited;
   If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMCONTA.WParR.FieldByName('cod_parcelacr').AsString, '')=True
   Then Begin

       XCOD_CTACORBLT:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
       ImpBoleto(DMCONTA.TParcCR.FieldByName('cod_parcelacr').AsInteger,2);

//       XCOD_CTACORBLT:=DMCONTA.WCtaCor.FieldByName('cod_ctacor').AsInteger;
//       ImpBoleto(DMCONTA.TParcCR.FieldByName('cod_parcelacr').AsInteger, 2);
   End
   Else Begin
       FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
	    If AbrirForm(TFCadCtacor, FCadCtaCor, 1) = 'Selected'
       Then Begin
           XCOD_CTACORBLT:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
           ImpBoleto(DMCONTA.WParR.FieldByName('cod_parcelacr').AsInteger, 2);
       End
       Else Begin
           XCOD_CTACORBLT:=-1;
       end;
   End;
end;

Procedure TFCtasReceberLote.Seleciona_CtaReceber;
begin
   DMCONTA.TCtaR.Close;
   DMCONTA.TCtaR.SQL.Clear;
   DMCONTA.TCtaR.SQL.Add('select * from ctareceber');
   DMCONTA.TCtaR.SQL.Add('where ctareceber.cod_cliente = :codigo order by ctareceber.cod_ctareceber desc');
   DMCONTA.TCtaR.ParamByName('codigo').AsInteger := DMFINANC.TAlx.FieldByName('cod_cliente').AsInteger;
   DMCONTA.TCtaR.Open;
end;

//procedure que seleciona e imprime o Boleto da cta
Procedure TFCtasReceberLote.ImpBoleto(CODCTA:INTEGER; TIPOIMP: Integer);
Var
  YearAtu, MonthAtu, DayAtu:word;
  XNumFisc: String;
Begin
   //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   //Este bloco de função é responsavel por imprimir apenas os ultimos boletos
   Clientes_selecionados;
   Seleciona_CtaReceber;
   Seleciona_parcelacr;
   XCod_PrimeiraParcela:=DMCONTA.TParcCR.FieldByName('cod_parcelacr').AsInteger;
   
   //PREPARA SQL
   DMFinanc.TRel.Close;
   DMFinanc.TRel.SQL.Clear;
   DMFinanc.TRel.SQL.Add(' SELECT cliente.export, parcelacr.cod_parcelacr, parcelacr.cod_ctacor, parcelacr.dtvenc, parcelacr.numboleto, ctareceber.dtlanc, parcelacr.numparc, parcelacr.valExt, parcelacr.valor, ');
   DMFinanc.TRel.SQL.Add(' pessoa.bairro, pessoa.cep, Pessoa.Telrel, pessoa.cpfcnpj, pessoa.endnumero, pessoa.endereco, pessoa.nome AS SACADO, ');
   DMFinanc.TRel.SQL.Add(' CtaReceber.NumDoc, CtaReceber.TIPOGERADOR, CtaReceber.COD_GERADOR, CtaReceber.DTLanc, cidade.nome AS CIDADE, estado.uf_estado ');
   DMFinanc.TRel.SQL.Add('  FROM parcelacr ');
   DMFinanc.TRel.SQL.Add('  Left join ctareceber ON parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
   DMFinanc.TRel.SQL.Add('  Left JOIN cliente on ctareceber.cod_cliente=cliente.cod_cliente ');
   DMFinanc.TRel.SQL.Add('  Left Join pessoa ON cliente.cod_pessoa=pessoa.cod_pessoa ');
   DMFinanc.TRel.SQL.Add('  Left Join cidade on pessoa.cod_cidade=cidade.cod_cidade ');
   DMFinanc.TRel.SQL.Add('  Left Join estado ON cidade.cod_estado=estado.cod_estado ');
   DMFinanc.TRel.SQL.Add('  Where (parcelacr.cod_parcelacr>=:CODIGO) AND (CLIENTE.EXPORT='+#39+'X'+#39+') order by pessoa.nome, parcelacr.dtvenc ');
   DMFINANC.TRel.ParamByName('CODIGO').AsInteger:=DMCONTA.TParcCR.FieldByName('cod_parcelacr').AsInteger;
   DMFINANC.TRel.Open;
   DMFINANC.TRel.First;
   While Not DMFINANC.TRel.Eof
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
       gbTitulo1.DataDocumento:=DMFinanc.TRel.FieldByName('DTLANC').AsDateTime;
       gbTitulo1.DataVencimento:=DMFinanc.TRel.FieldByName('DTVENC').AsDateTime;
       If TIPOIMP<>2
       Then Begin//Não for uma copia do boleto
           gbTitulo1.NumeroDocumento:=XNumFisc+'-'+DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString+':'+DMFinanc.TRel.FieldByName('NUMPARC').AsString;
		    gbTitulo1.NossoNumero:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString;
       End
       Else Begin
           gbTitulo1.NumeroDocumento:=XNumFisc+'-'+DMFINANC.TRel.FieldByName('NUMBOLETO').AsString+':'+DMFinanc.TRel.FieldByName('NUMPARC').AsString;
		    gbTitulo1.NossoNumero:=DMFINANC.TRel.FieldByName('NUMBOLETO').AsString;
       End;
		gbTitulo1.EspecieDocumento:=edDuplicataMercantil;
       gbTitulo1.Instrucoes.Clear;
       gbTitulo1.Instrucoes.Add(DMBANCO.TCtaCor.FieldByName('INSTRUBOLETO').AsString +#13+ DMCONTA.TParcCR.FieldByName('TEXTOBLT').AsString);

       //Montar Nosso Numero para BB e cedente de 7 digitos
       If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsInteger=1) And (Length(DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString)=7)
       Then Begin
           If TIPOIMP<>2
           Then Begin //Se naum for uma copia do Boleto
			    gbTitulo1.NossoNumero:=ConcatZero(DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString, 10);
			    gbTitulo1.NossoNumero:=DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString+gbTitulo1.NossoNumero;
           End
           Else Begin
			    gbTitulo1.NossoNumero:=ConcatZero(DMFINANC.TRel.FieldByName('NUMBOLETO').AsString, 10);
			    gbTitulo1.NossoNumero:=DMBANCO.TCtaCor.FieldByName('NOSSONUMBLT').AsString+gbTitulo1.NossoNumero;
           End;
       End;
       //Montar Nosso Numero para SICOOB
       If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='756')
       Then Begin
  			//extratifica data Atual
           DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
           If TIPOIMP<>2
           Then Begin //Se naum for uma copia do Boleto
			    gbTitulo1.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+ConcatZero(DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString, 6);
           End
           Else Begin
			    gbTitulo1.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+ConcatZero(DMFINANC.TRel.FieldByName('NUMBOLETO').AsString, 6);
           End;
       End;
       //Montar Nosso Numero para SICOOB
       If (DMBANCO.TAlx.FieldByName('NUMBANCO').AsString='748')
       Then Begin
  			//extratifica data Atual
           DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
           If TIPOIMP<>2
           Then Begin //Se naum for uma copia do Boleto
			    gbTitulo1.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+'2'+ConcatZero(DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString, 5);
           End
           Else Begin
			    gbTitulo1.NossoNumero:=COPY(IntToStr(YearAtu), 3, 2)+'2'+ConcatZero(DMFINANC.TAlx.FieldByName('NUMBOLETO').AsString, 5);
           End;
       End;

       gbTitulo1.DataProcessamento:=Date();
       gbTitulo1.Sacado.Endereco.Numero:='';
       gbTitulo1.Sacado.Endereco.Complemento:='';
		//sacado
       gbTitulo1.Sacado.Endereco.Bairro:=DMFinanc.TRel.FieldByName('Bairro').AsString;
       gbTitulo1.Sacado.Endereco.CEP:=TiraCaracter(DMFinanc.TRel.FieldByName('CEP').AsString, '-');
       gbTitulo1.Sacado.Endereco.Cidade:=DMFinanc.TRel.FieldByName('CIDADE').AsString;
       gbTitulo1.Sacado.Endereco.Estado:=DMFinanc.TRel.FieldByName('UF_ESTADO').AsString;
       gbTitulo1.Sacado.Endereco.Rua:=DMFinanc.TRel.FieldByName('ENDERECO').AsString;
       gbTitulo1.Sacado.Nome:=DMFinanc.TRel.FieldByName('SACADO').AsString;
       If ValidCPF(DMFinanc.TRel.FieldByName('CPFCNPJ').AsString)=True
       Then Begin
       	gbTitulo1.Sacado.TipoInscricao:=tiPessoaFisica;
       End
       Else Begin
       	gbTitulo1.Sacado.TipoInscricao:=tiPessoaJuridica;
       End;
       gbTitulo1.Sacado.NumeroCPFCGC:=DMFinanc.TRel.FieldByName('CPFCNPJ').AsString;
       gbTitulo1.ValorDocumento:=DMFinanc.TRel.FieldByName('valor').AsCurrency;
		If DMMACS.TLoja.FieldByName('JUROS').AsString<>'' Then
       	gbTitulo1.ValorMoraJuros:=(DMMACS.TLoja.FieldByName('JUROS').AsCurrency)/30;

       //Se for impressão de um novo boleto e naum uma copia
       DMCONTA.TParcCR.Close;
       DMCONTA.TParcCR.SQL.Clear;
       DMCONTA.TParcCR.SQL.Add('SELECT * FROM PARCELACR WHERE PARCELACR.COD_PARCELACR=:CODPAR');
       DMCONTA.TParcCR.ParamByName('CODPAR').AsInteger:=DMFINANC.TRel.FieldByName('COD_PARCELACR').AsInteger;
       DMCONTA.TParcCR.Open;

       If Not DMCONTA.TParcCR.IsEmpty
       Then Begin
           Try
               If TIPOIMP<>2
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
           	  DMCONTA.TParcCR.FieldByName('NOSSONUMBLT').AsString:=gbTitulo1.NossoNumero+gbTitulo1.DigitoNossoNumero;
           	  DMCONTA.TParcCR.FieldByName('TIPOBLT').AsString:=XTIPOBOLTO;
           	  DMCONTA.TParcCR.Post;
           	  DMCONTA.IBT.CommitRetaining;

                 DMBANCO.TCtaCor.Edit;
                 DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsCurrency+1;
                 DMBANCO.TCtaCor.Post;
                 DMBANCO.IBT.CommitRetaining;
               End;

               // verifica se no numero do boleto contem apenas numero "0". Se retorna TRUE eh pq o numero de boleto esta correto
               If VerificaNumBoleto(gbTitulo1.NossoNumero) = false
               Then Begin
                   Mensagem('A T E N Ç Ã O ', 'O boleto da parcela nº' + #39 + DMFINANC.TRel.FieldByName('numparc').AsString + #39 + ' não foi impresso devido ao erro do número do boleto.', '', 1,1, false, 'a');
               End
               Else Begin
                   // imprimi boleto
                   gbTitulo1.Imprimir;
               End;
           Except
               Mensagem('A T E N Ç Ã O ', 'O boleto não foi impresso devido a uma falha ao gravar o tipo de impressão na parcela!', '', 1,1, false, 'a');
           End;
       End;
   	DMFINANC.TRel.Next;
   End;
End;

// Procedure para informar o numero de clientes selecionados
Function TFCtasReceberLote.Numero_clientes: Boolean;
Begin
	Try
     Result:=True;
     DMMACS.TALX.Close;
     DMMACS.TALX.SQL.Clear;
     DMMACS.TALX.SQL.Add('SELECT count(CLIENTE.COD_cliente) as contador from cliente ');
     DMMACS.TALX.SQL.Add('WHERE CLIENTE.EXPORT='+#39+'X'+#39);
     DMMACS.TALX.Open;
     If DMMACS.TALX.FieldByName('contador').AsInteger=0 Then
       Result:=False
     Else
       Result := true;  
   Except
     Result:=False
   End;
End;

// Gera novo boleto
Procedure TFCtasReceberLote.Novo_boleto;
begin
   FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');

	If AbrirForm(TFCadCtacor, FCadCtaCor, 1) = 'Selected'
   Then Begin
       XCOD_CTACORBLT:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
       If Mensagem('A T E N Ç Ã O ', 'Os boletos serão enviados diretamente para impressora.'+#13+'Deseja continuar?', '', 2, 3, False, 'c')=2 Then
       	ImpBoleto(DMCONTA.TParcCR.FieldByName('cod_parcelacr').AsInteger,0);
   End
   Else Begin
       XCOD_CTACORBLT:=-1;
   end;
end;

//Seleciona todos os dados de PARCELACR
Procedure TFCtasReceberLote.Dados_ParcelaCR;
Begin
     DMCONTA.TParcCR.Close;
     DMCONTA.TParcCR.SQL.Clear;
     DMCONTA.TParcCR.SQL.Add('  select * from parcelacr ');
     DMCONTA.TParcCR.SQL.Add(' Where parcelacr.cod_ctareceber=:codigo ');
     DMCONTA.TParcCR.ParamByName('codigo').AsInteger:=DMCONTA.TCtaR.FieldByName('cod_ctareceber').AsInteger;
     DMCONTA.TParcCR.Open;

{   DMSAIDA.TAlx.Close;
   DMSAIDA.TAlx.SQL.Clear;
   DMSAIDA.TAlx.SQL.Add(' select * from parcelacr ');
   DMSAIDA.TAlx.SQL.Add('select * from ctareceber');
   DMSAIDA.TAlx.SQL.Add('left join parcelacr on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber');
   DMSAIDA.TAlx.SQL.Add('left join cliente on ctareceber.cod_cliente = cliente.cod_cliente');
   DMSAIDA.TAlx.SQL.Add('where (cliente.cod_cliente = :codigo)');
   DMSAIDA.TAlx.SQL.Add('and ((parcelacr.fech = ' + #39 + 'N' + #39 + ') or ( parcelacr.fech is null))');
   DMSAIDA.TAlx.ParamByName('codigo').AsInteger := DMFINANC.TAlx.FieldByname('cod_cliente').AsInteger;
   DMSAIDA.TAlx.Open;
 }
End;     

// Seleciona clientes com campo export selecionado
Function TFCtasReceberLote.Clientes_selecionados: Boolean;
Begin
   DMFINANC.TAlx.Close;
   DMFINANC.TAlx.SQL.Clear;
   DMFINANC.TAlx.SQL.Add('SELECT * FROM CLIENTE');
   DMFINANC.TAlx.SQL.Add('LEFT JOIN PESSOA ON CLIENTE.COD_PESSOA=PESSOA.COD_PESSOA');
   DMFINANC.TAlx.SQL.Add('WHERE CLIENTE.EXPORT='+#39+'X'+#39 + 'order by nome');
   DMFINANC.TAlx.Open;
   If DMFINANC.TAlx.IsEmpty Then
       Result:=False
   Else
       Result:=True;

End;

//Seleciona Codigo de ctareceber
Procedure TFCtasReceberLote.Seleciona_Codigo_ctareceber;
Begin
   DMCONTA.TCtaR.Close;
   DMCONTA.TCtaR.SQL.Clear;
   DMCONTA.TCtaR.SQL.Add('select * from ctareceber');
   DMCONTA.TCtaR.SQL.Add('where ctareceber.cod_cliente = :codigo order by ctareceber.cod_ctareceber desc');
   DMCONTA.TCtaR.ParamByName('codigo').AsInteger := DMFINANC.TAlx.FieldByName('cod_cliente').AsInteger;
   DMCONTA.TCtaR.Open;
End;

//Procedure utilizada para ajustar o numero de documento da parcela
Procedure TFCtasReceberLote.AjustaNumParc;
Begin
   XNumParc := XNumParc + 1;
End;

    //Procedure utilizada para ajustar data de vencimento
    Procedure TFCtasReceberLote.AjustaDataVenc;
    Begin
       If Xmes>12
       Then Begin
           XAno:=XAno+1;
           Xmes:=1;
       End;
       Try
           XDataVenc:=StrToDate(EdDia.Text+'/'+IntToStr(Xmes)+'/'+IntToStr(XAno));
           XDiaRef:=StrToInt(EdDia.Text);
       Except
           Try
               XDataVenc:=StrToDate( IntToStr(StrToInt(EdDia.Text)-1)+'/'+IntToStr(Xmes)+'/'+IntToStr(XAno));
               XDiaRef:=StrToInt(EdDia.Text)-1;
           Except
               Try
                   XDataVenc:=StrToDate( IntToStr(StrToInt(EdDia.Text)-2)+'/'+IntToStr(Xmes)+'/'+IntToStr(XAno));
                   XDiaRef:=StrToInt(EdDia.Text)-2;
               Except
                   Try
                       XDataVenc:=StrToDate( IntToStr(StrToInt(EdDia.Text)-3)+'/'+IntToStr(Xmes)+'/'+IntToStr(XAno));
                       XDiaRef:=StrToInt(EdDia.Text)-3;
                   Except
                       XDataVenc:=StrToDate( '15/'+IntToStr(Xmes)+'/'+IntToStr(XAno));
                       XDiaRef:=15;
                   End;
               End;
           End;
       End;
    End;
    //Procedure utilizada para ajustar data de referencia
    Procedure TFCtasReceberLote.AjustaDataRef;
    Begin
       // se for selecionado data informada a esquerda
       If RGOpcaoReferencia.ItemIndex=0
       Then Begin
           XDataRef:=StrToDate(EdDtReferencia.Text);
       End;

       //se for selecionado 1 mes antes do vencimento
       If RGOpcaoReferencia.ItemIndex=1
       Then Begin
           If Xmes=1
           Then Begin
               XAnoRef:=XAno-1;
               XmesRef:=12;
           End
           Else Begin
               XAnoRef:=XAno;
               XmesRef:=Xmes-1;
           End;
           XDataRef:=StrToDate(IntToStr(XDiaRef)+'/'+IntToStr(XmesRef)+'/'+IntToStr(XAnoRef));
       End;
       // se for selecionado a mesma data de vencimento
       If RGOpcaoReferencia.ItemIndex = 2
       Then Begin
           XDataRef := StrToDate(IntToStr(XDiaRef) + '/' + IntToStr(Xmes) + '/' + IntToStr(XAno));
       End;
    End;

    //Função para marcar desmarcar clientes
    Function TFCtasReceberLote.MarcaDesmarca: Boolean;
    Begin
        XTotalVlrCalculo:=0;
        DMPESSOA.TCliente.Close;
        DMPESSOA.TCliente.SQL.Clear;
        DMPESSOA.TCliente.SQL.Add('SELECT * FROM CLIENTE WHERE CLIENTE.COD_CLIENTE=:CODIGO');
        DMPESSOA.TCliente.ParamByName('CODIGO').AsInteger:= DMFINANC.TAlx.FieldByName('COD_CLIENTE').AsInteger;
        DMPESSOA.TCliente.Open;
        If Not DMPESSOA.TCliente.IsEmpty
        Then Begin
            DMPESSOA.TCliente.Edit;
            If DMPESSOA.TCliente.FieldByName('EXPORT').AsString='X' Then
               DMPESSOA.TCliente. FieldByName('EXPORT').AsString:=''
            Else
               DMPESSOA.TCliente. FieldByName('EXPORT').AsString:='X';
            DMPESSOA.TCliente.Post;
            DMPESSOA.TransacPessoa.CommitRetaining;
        End;

        // numero de clientes selecionados
        NumeroClientesSelecionados;

    End;

    //Função para selecionar todos os clientes
    Function TFCtasReceberLote.SelecionaCliente: Boolean;
    Begin
        DMFINANC.TAlx.Close;
        DMFINANC.TAlx.SQL.Clear;
        DMFINANC.TAlx.SQL.Add('SELECT SUM(CLIENTE.TAMANHO) AS VALOR FROM CLIENTE LEFT JOIN PESSOA ON CLIENTE.COD_PESSOA=PESSOA.COD_PESSOA WHERE CLIENTE.EXPORT='+#39+'X'+#39);
        DMFINANC.TAlx.Open;
        EdTotalTamanho.ValueNumeric:=DMFINANC.TAlx.FieldByName('VALOR').AsCurrency;

        DMFINANC.TAlx.Close;
        DMFINANC.TAlx.SQL.Clear;
        DMFINANC.TAlx.SQL.Add('SELECT * FROM CLIENTE LEFT JOIN PESSOA ON CLIENTE.COD_PESSOA=PESSOA.COD_PESSOA order by nome');
        DMFINANC.TAlx.Open;
    End;

//Insere cabecalho de ctas receber
Function TFCtasReceberLote.InsereCtasReceber: Boolean;
Begin
	Try
    Result:=True;

	 //insere novo registro
	 XCodCTA:=InserReg(DMCONTA.TCtaR, 'ctareceber', 'COD_CTARECEBER');
    DMCONTA.TCtaR.FieldByName('COD_CLIENTE').AsInteger:=DMFINANC.TAlx.FieldByName('Cod_Cliente').AsInteger;
    DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsInteger:=XCodCTA;
    DMCONTA.TCtaR.FieldByName('COD_USUARIO').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
    DMCONTA.TCtaR.FieldByName('COD_PLNCTA').AsInteger := XCod_Conta;
    DMCONTA.TCtaR.FieldByName('DTLANC').AsDateTime:=date();

    // busca a forma de pagamento de 30 dias
    DMFINANC.TFormPag.Close;
    DMFINANC.TFormPag.SQL.Clear;
    DMFINANC.TFormPag.SQL.Add('select * from formpag');
    DMFINANC.TFormPag.SQL.Add('where (formpag.primparcela = ' + #39 + '30' + #39 + ')');
    DMFINANC.TFormPag.SQL.Add('and (formpag.quantparcela = ' + #39 + '1' + #39 + ')');
    DMFINANC.TFormPag.Open;

    DMCONTA.TCtaR.FieldByName('COD_FORMPAG').AsString := DMFINANC.TFormPag.FieldByname('cod_formpag').AsString;

    //Se o tipo de lancamento for FIXO, o campo "valor" recebe o valor do Edit;
    If CBTipoValor.Text = 'FIXO'
    Then Begin
         DMCONTA.TCtaR.FieldByName('VALOR').AsCurrency:= EdValor.ValueNumeric * EdNumParc.ValueNumeric;
         XValor:=EdValor.ValueNumeric;
    End;
    // Se for ultimo lancamento, seleciona ctareceber e edita o campo valor
    If CBTipoValor.Text = 'ULTIMO LANÇAMENTO'
    Then Begin
       // procedimento que seleciona o valor da ultima data de vencimento
       UltimaParc;
       DMCONTA.TCtaR.FieldByName('VALOR').AsCurrency:= XValor * EdNumParc.ValueNumeric;
    End;

    If CBTipoValor.Text = 'DO CADASTRO'
    Then Begin
       XValor := DMFINANC.TAlx.FieldByName('TAMANHO').AsCurrency;
       DMCONTA.TCtaR.FieldByName('VALOR').AsCurrency:= XValor * EdNumParc.ValueNumeric;
    End;

    If CBTipoValor.Text = 'RATEIO'
    Then Begin

       If Numero_clientes=False
       Then Begin
			Mensagem('A T E N Ç Ã O ', 'Problemas com a opção de rateio!', '', 1,1, false, 'a');
       	Result:=False;
           exit;
       End;

       //A variavel XValor recebe o resultado do valor dividido pelo numero de clientes
       XValor := (EdValor.ValueNumeric / DMMACS.TALX.FieldByName('contador').AsInteger);

       //A variavel XTotal recebe o valor da variavel XValor vezes o numero de parcelas
       XTotal := EdNumParc.ValueInteger * XValor;
       DMCONTA.TCtaR.FieldByName('VALOR').AsCurrency := XTotal;
    End;

    If (CBTipoValor.Text = 'RATEIO DE CUSTOS') or (CBTipoValor.Text = 'RATEIO CUST. PERÍODO')
    Then Begin
       DMCONTA.TCtaR.FieldByName('VALOR').AsCurrency := 0;
    End;

     //Seleciona todos os dados de loja
     DMMACS.TLoja.Close;
     DMMACS.TLoja.SQL.Clear;
     DMMACS.TLoja.SQL.Add('select * from loja');
     DMMACS.TLoja.Open;

    //compara o tipo de radical
    if CBCompRadical.Text = 'INCREMENTAL'
    Then Begin
       DMCONTA.TCtaR.FieldByName('NUMDOC').AsString:= EdDocRadical.Text + ':' + DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsString;
    End;
    if CBCompRadical.Text = 'CTRL INT.'
    Then Begin
       DMCONTA.TCtaR.FieldByName('NUMDOC').AsString:= EdDocRadical.Text + ':' + DMFINANC.TAlx.FIELDBYNAME('cod_interno').AsString;
    End;

    DMMACS.TLoja.Edit;
    DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsInteger := DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsInteger + 1;
    DMMACS.TLoja.Post;

    DMCONTA.TCtaR.FieldByName('COBRANCA').AsString := 'Carteira';
    If CBHistorico.Checked=True Then
    	DMCONTA.TCtaR.FieldByName('HISTORICO').AsString := DMFINANC.TAlx.FieldByName('NOME').AsString+ ' ' + EdHistorico.Text
    Else
    	DMCONTA.TCtaR.FieldByName('HISTORICO').AsString := EdHistorico.Text;
    DMCONTA.TCtaR.Post;
   Except
    Result:=False
   End;
End;

//Utilizado para gerar parcelas de acordo com os parametros passados
Procedure TFCtasReceberLote.GeraCtaReceber;
Begin
   //Insere nova cta
	XCodCTA:=InserReg(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER');
   DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsInteger:=XCODCTA;
   DMCONTA.TCtaR.FieldByName('DTLANC').AsString:=EdDtLanc.Text;

   DMCONTA.TCtaR.FieldByName('NUMDOC').AsString:=EdDocRadical.Text;

   If CBCompRadical.Text='INCREMENTAL' Then
	    DMCONTA.TCtaR.FieldByName('NUMDOC').AsString:=DMCONTA.TCtaR.FieldByName('NUMDOC').AsString+'-'+DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsString;
   If CBCompRadical.Text='CTRL INT.' Then
	    DMCONTA.TCtaR.FieldByName('NUMDOC').AsString:=DMCONTA.TCtaR.FieldByName('NUMDOC').AsString+'-'+EdDocRadical.Text+DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsString;

   DMCONTA.TCtaR.FieldByName('Valor').AsCurrency:=EdValor.ValueNumeric;
   DMCONTA.TCtaR.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
   DMCONTA.TCtaR.FieldByName('COD_PLNCTA').AsInteger:=XCod_Conta;
   DMCONTA.TCtaR.FieldByName('COD_FORMPAG').AsInteger:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
   DMCONTA.TCtaR.FieldByName('COD_CLIENTE').AsInteger:=DMFINANC.TAlx.FieldByName('COD_CLIENTE').AsInteger;
   DMCONTA.TCtaR.Post;
End;

//Utilizado para gerar parcelas de acordo com os parametros passados
Function TFCtasReceberLote.GeraParcela: Boolean;
Var
	XCOD_Parcela: Integer;
   Data: Integer;
   Mes:String;
   Year, Month, Day:word;
Begin
		Result:=True;
		TRY
         //Realiza Inserção de Valores
         XCOD_Parcela:=InserReg(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR');
         If XCod_PrimeiraParcela=-1 Then
           XCod_PrimeiraParcela:=XCOD_Parcela;
         DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsInteger:=XCOD_Parcela;
         DMCONTA.TParcCR.FieldByName('COD_CTARECEBER').AsInteger:=XCODCTA;
         DMCONTA.TParcCR.FieldByName('NUMPARC').AsString:= DMCONTA.TCtaR.FieldByName('NUMDOC').AsString + '-' +IntToStr(XIncNumParc) + '/' +EdNumParc.Text;

         DMCONTA.TParcCR.FieldByName('DTVENC').AsDateTime:=XDataVenc;
         DMCONTA.TParcCR.FieldByName('DTREF').AsDateTime:=XDataRef;
         DMCONTA.TParcCR.FieldByName('VALORPROD').AsCurrency:= XValor;
         DMCONTA.TParcCR.FieldByName('VALOR').Value:= XValor;
         DMCONTA.TParcCR.FieldByName('VALORSERV').Value:=0;
         DMCONTA.TParcCR.FieldByName('PERVLRSERV').AsCurrency:=0;
         DMCONTA.TParcCR.FieldByName('COBRANCA').AsString:='Carteira';
         DMCONTA.TParcCR.FieldByName('HISTORICO').AsString:=DMCONTA.TCtaR.FieldByName('HISTORICO').AsString+' - '+DMCONTA.TParcCR.FieldByName('NUMPARC').AsString;

         FMenu.Extenso.Numero:=FormatFloat('0.00', DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency);
         DMCONTA.TParcCR.FieldByName('VALEXT').AsString:=FMenu.Extenso.Extenso;
         DMCONTA.TParcCR.FieldByName('FECH').AsString:='N';
         DMCONTA.TParcCR.FieldByName('TEXTOBLT').AsString:=TMBoleto.Text;
         DMCONTA.TParcCR.Post;
         Xmes := Xmes + 1;
       EXCEPT
			Result:=False;
       End
End;

procedure TFCtasReceberLote.DbGridClienteDblClick(Sender: TObject);
begin
  inherited;
   MarcaDesmarca;
   SelecionaCliente;
   SelecionaGrid;
end;

procedure TFCtasReceberLote.FormActivate(Sender: TObject);
begin
  inherited;
   SelecionaCliente;
   BtnLancamento.Click();
   LimpaEdits;

   SelecionaGrid;

   PImprimir.Visible := False;
   PImprimir.SendToBack;
   LBoleto.Visible := False;
   LBoleto.SendToBack;
   LDuplicata.Visible := False;
   LDuplicata.SendToBack;
   LRecibo.Visible := False;
   LRecibo.SendToBack;
   RGBoleto.Visible := False;
   RGBoleto.SendToBack;
   RGRegistro.Visible := false;
   RGRegistro.SendToBack;
   BBRetornar.Visible := false;
   BBRetornar.SendToBack;
   RBNovo.Visible := false;
   RBNovo.SendToBack;
   RBOutraVia.Visible := False;
   RBOutraVia.SendToBack;
   TMBoleto.Text:='';


   // depois que fecha a janela de impressão, a variavel recebe 1, e eh comparada ai em baixo. Se for = 1, eh exibido a janela de consulta
   if XAux = 1
   Then Begin

       // Seleciona clientes com campo export preenchido
       Clientes_selecionados;

       PConsulta.Visible:=True;
       PConsulta.BringToFront;     

       //Seleciona codigo de CTARECEBER
       Seleciona_Codigo_ctareceber;

       //Seleciona dados da tabela PARCELACR
       Dados_ParcelaCR;
   End;

   // como o primeiro tipo de lançamento eh o FIXO, os cmponentes abaixo serão desabilitados
   EdDataIni.Enabled := false;
   EdDataFim.Enabled := false;
   RGTipo.Enabled := false;
   RGTipo.ItemIndex := 0;

   // numero de clientes selecionados
   NumeroClientesSelecionados;
end;

procedure TFCtasReceberLote.BitBtn1Click(Sender: TObject);
begin
  inherited;
   DMPESSOA.TALX.Close;
   DMPESSOA.TALX.SQL.Clear;
   DMPESSOA.TALX.SQL.Add('UPDATE CLIENTE SET CLIENTE.EXPORT='+#39+'X'+#39);
   DMPESSOA.TALX.ExecSQL;
   DMPESSOA.TransacPessoa.CommitRetaining;
   SelecionaCliente;

   // numero de clientes selecionados
   NumeroClientesSelecionados;
end;

procedure TFCtasReceberLote.BitBtn2Click(Sender: TObject);
begin
  inherited;
   DMPESSOA.TALX.Close;
   DMPESSOA.TALX.SQL.Clear;
   DMPESSOA.TALX.SQL.Add('UPDATE CLIENTE SET CLIENTE.EXPORT='+#39+''+#39);
   DMPESSOA.TALX.ExecSQL;
   DMPESSOA.TransacPessoa.CommitRetaining;
   SelecionaCliente;

   // numero de clientes selecionados
   NumeroClientesSelecionados;
   
end;

procedure TFCtasReceberLote.DbGridClienteDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
     If DMFINANC.TAlx.FieldByName('EXPORT').AsString='X'
     then Begin
         DbGridCliente.Canvas.Font.Color:=clRed
     End
     Else Begin
         DbGridCliente.Canvas.Font.Color:=clblack;
     End;
//     DbGridCliente.Canvas.Font.Style:= [fsbold];
     DbGridCliente.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFCtasReceberLote.btngerarClick(Sender: TObject);
Var
   XNumParc: Integer;
   Year, Month, Day:word;
   XControle: Integer;//variavel q controle se tudo ocorreu corretamente
   XDia: Integer;//Armazena temporariamente o dia de vencimento
begin
  inherited;
   //inicializa variavel de controle da primeira parcela
   XCod_PrimeiraParcela:=-1;
   XControle:=1;

   If (CBTipoValor.Text = 'RATEIO POR CONTAS') and (RGTipo.ItemIndex = 0)
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','Não é possível utilizar a conta "Fundo de Reserva" para efetuar rateio.','',1,1,false,'I');
       Exit;
   End;

   if not DMMACS.TExiste.IsEmpty
   Then Begin
       Mensagem(' A T E N Ç Ã O ', 'Número de documento já existente. Por favor, informe outro.', '', 1, 1, False, 'E');
       EdDocRadical.Text := '0,00';
       EdDocRadical.SetFocus;
       Exit;
   End;

   If (EdDia.ValueInteger<1) or (EdDia.ValueInteger>30)
   Then Begin
     Mensagem('INFORMAÇÃO AO USUÁRIO', 'Verifique o dia informado!', '', 1, 1, False, 'i');
     EdDia.SetFocus;
     Exit;
   End;

   If (EdMes.ValueInteger<1) or (EdMes.ValueInteger>12)
   Then Begin
     Mensagem('INFORMAÇÃO AO USUÁRIO', 'Verifique o mês informado!', '', 1, 1, False, 'i');
     EdMes.SetFocus;
     Exit;
   End;

   // Se o numero de parcelas for menor que 1 eh exibida a mensagem
   If EdNumParc.ValueInteger<1
   Then Begin
       Mensagem('INFORMAÇÃO AO USUÁRIO', 'O Número de parcelas deve ser superior a "0" !', '', 1, 1, False, 'i');
       EdNumParc.ValueInteger:=1;
       EdNumParc.SetFocus;
       Exit;
   End;

   // Deve ser selecionado plano de contas, senao eh exibida a msg
   if num_plncta <> 1
   Then Begin
       Mensagem('A T E N Ç Ã O', 'Por favor, informe um plano de conta!', '', 1, 1, False, 'i');
       Exit;
   End;

   // O historico nao pode estar vazio
   if EdHistorico.Text = ''
   Then Begin
     Mensagem('A T E N Ç Ã O', 'Por favor, informe o histórico!', '', 1, 1, False, 'i');
     Exit;
   End;

   If Mensagem('C O N F I R M A Ç Ã O', 'Deseja realmente gerar as parcelas de acordo com as informações lançadas?', '', 2, 3, False, 'i')=3 Then
   	Exit;

   //SELECIONA TODOS OS CLIENTES MARCADOS PARA GERAR PARCELAS
   If Clientes_selecionados=True
   Then Begin
       If (CBTipoValor.Text = 'RATEIO DE CUSTOS') or (CBTipoValor.Text = 'RATEIO CUST. PERÍODO') or (CBTipoValor.Text = 'RATEIO POR CONTAS')
       Then Begin
           // Seleciona o tamanho total das lojas do shopping
           If Dados_Cliente=False
           Then Begin
       		Mensagem('A T E N Ç Ã O', 'A função de Rateio de Custos esta indisponível!'+#13+'O Somatório do campo Cálculo retornou nulo', '', 1, 1, False, 'i');
               XControle:=0;
               Exit;
			End;
       End;

       XDia:=EdDia.ValueInteger;
       while Not DMFINANC.TAlx.Eof do
       Begin
           //insere cabeçalho de conta
           InsereCtasReceber;

           XIncNumParc:=1;
           Xmes:=StrToInt(EdMes.Text);
           DecodeDate(Date(), Year, Month, Day);
           XAno:=Year;

           For XNumParc:=1 to EdNumParc.ValueInteger do
           Begin
           	//Controle para dia de vencimento
           	If cbvencimento.Checked=True
               Then Begin
               	If DMFINANC.TAlx.FieldByName('diavencimento').AsInteger<=1 Then
                       EdDia.ValueNumeric:=XDia
                   Else
               		EdDia.ValueInteger:=DMFINANC.TAlx.FieldByName('diavencimento').AsInteger;
               End;
               AjustaDataVenc;
               AjustaDataRef;

               If CBTipoValor.Text = 'RATEIO CUST. PERÍODO'
               Then Begin
                   // Faz o calculo referente ao tamanho da loja
                   Rateio_Custo;
               End;

               If CBTipoValor.Text = 'RATEIO POR CONTAS'
               Then Begin
                   // se for para promoção eh apenas dividir o total financeiro pelo numero de clientes selecionados
                   If RGTipo.ItemIndex = 1
                   Then Begin
                       // Procedure para informar o numero de clientes selecionados
                       Numero_clientes;

                       // dividindo o total da conta pelo numero de clientes selecionados
                       XValor := EdValor.ValueNumeric / DMMACS.TALX.FieldByName('contador').AsInteger;
                   End
                   Else Begin
                       // se for para condominio eh fazer o calculo do tamanho da loja em relação ao total do shopping e apartir dessa porcentagem realizar o calculo financeiro
                       Rateio_Custo;
                   End;

               End;

               if CBTipoValor.Text = 'RATEIO DE CUSTOS'
               Then Begin
                   // Seleciona valor total entre a data inicial e final
                   Parcelas;
                   // Faz o calculo referente ao tamanho da loja
                   Rateio_Custo;
               End;

               //Utilizado para gerar parcelas de acordo com os parametros passados
               If GeraParcela=False
               Then Begin
                   XControle:=0;
                   Mensagem(' A T E N Ç Ã O ', 'Problemas em gerar parcela', '', 1, 1, False, 'E');
               	Exit;
               End;
               AjustaNumParc;

               XIncNumParc:=XIncNumParc+1;
           End;
       	DMFINANC.TAlx.Next;
       End;
   End
   Else Begin
       Mensagem(' A T E N Ç Ã O ', 'Não há nenhum cliente selecionado.', '', 1, 1, False, 'E');
       Exit;
   End;
   If XControle=1
   Then Begin
   	Mensagem('N O T I F I C A Ç Ã O', 'Contas Geradas com Sucesso!', '', 1, 1, False, 'i');
       DMFINANC.Transaction.CommitRetaining;
       DMCONTA.IBT.CommitRetaining;
   	BtnConsulta.Click();
   End
   Else Begin
   	Mensagem('N O T I F I C A Ç Ã O', 'Ocorreram problemas durante o processo!'+#13+'A Operação foi abortada.', '', 1, 1, False, 'i');
       DMFINANC.Transaction.RollbackRetaining;
       DMCONTA.IBT.RollbackRetaining;
   End;
end;

procedure TFCtasReceberLote.EdNumParcExit(Sender: TObject);
begin
  inherited;
   If EdNumParc.ValueInteger>12
   Then Begin
       Mensagem('INFORMAÇÃO AO USUÁRIO', 'Verifique o Número de Parcelas a serem geradas!', '', 1, 1, False, 'i');
   End;
end;

procedure TFCtasReceberLote.FrmContaBTNOPENClick(Sender: TObject);
Var
	Oper: Char;
begin
  inherited;
   Oper:='C';
   num_plncta := 1;

   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   XTIPO_CONTA := 'C';

   // PLANO DE CONTAS DE CREDITOS
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XCod_Conta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
end;

procedure TFCtasReceberLote.BtnLancamentoClick(Sender: TObject);
begin
  inherited;
  	//Antes de entrara na tela de lançamentos o sistema atualiza os valores por extenso
   AtualizaValorExtenso;

   EdValor.ValueNumeric := 0;

   PConsulta.Visible := false;
   PConsulta.SendToBack;
   PLanc.Visible:=True;
   PLanc.BringToFront;
   SelecionaCliente;
end;

procedure TFCtasReceberLote.BtnConsultaClick(Sender: TObject);
begin
  inherited;

  PLanc.Visible := False;
  PLanc.SendToBack;

   // Seleciona clientes com campo export preenchido
   Clientes_selecionados;

   //Seleciona codigo de CTARECEBER
   Seleciona_Codigo_ctareceber;

   //Seleciona dados da tabela PARCELACR
   Dados_ParcelaCR;

   PConsulta.Visible:=True;
   PConsulta.BringToFront;
end;

procedure TFCtasReceberLote.BBAtualizarClick(Sender: TObject);
var
aux : integer;
begin
  inherited;
end;

procedure TFCtasReceberLote.DBGridConsultaCellClick(Column: TColumn);
begin
  inherited;
   //Seleciona codigo de CTARECEBER
   Seleciona_Codigo_ctareceber;

   //Seleciona dados da tabela PARCELACR
   Dados_ParcelaCR;
end;

procedure TFCtasReceberLote.DBGridConsultaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   //Seleciona codigo de CTARECEBER
   Seleciona_Codigo_ctareceber;

   //Seleciona dados da tabela PARCELACR
   Dados_ParcelaCR;

end;

procedure TFCtasReceberLote.DBGridConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   //Seleciona codigo de CTARECEBER
   Seleciona_Codigo_ctareceber;

   //Seleciona dados da tabela PARCELACR
   Dados_ParcelaCR;

end;

procedure TFCtasReceberLote.RGOpcaoReferenciaEnter(Sender: TObject);
var
XAno, aux : integer;
XDia, XMes : string;
Year, Month, Day:word;
begin
  inherited;
{
   //ON ENTER

  DecodeDate(Date(), Year, Month, Day);
  XAno := Year;

  // 1 MES ANTES DO VENCIMENTO
  If RGOpcaoReferencia.ItemIndex=1
  Then Begin
       // Ajusta o mes
      If EDMes.Text = '1'
      Then Begin
          XAno:=XAno-1;
          XMes:='12';
      End
      Else Begin
          XAno:=XAno;
          aux := StrtoInt(EDmes.Text);
          XMes := InttoStr(aux - 1);
          if(length(XMes) = 1) Then
               XMes := '0' + XMes;
      End;
      // Ajusta o dia
      If (Length(eddia.Text) = 1)
      then Begin
           xdia := '0' + eddia.Text
      End
      Else Begin
           xdia := eddia.Text;
      End;
//  EdDtReferencia.Text := XDia + '/' + XMes + '/' + InttoStr(XAno);
  End;

  // se for selecionado a mesma data de vencimento
  If RGOpcaoReferencia.ItemIndex = 2
  Then Begin
     XDia := eddia.Text;
     XMes := edMes.Text;
  End;

    EdDtReferencia.Text := XDia + '/' + XMes + '/' + InttoStr(XAno);}

end;

procedure TFCtasReceberLote.RGOpcaoReferenciaClick(Sender: TObject);
var
XAno, aux : integer;
XDia, XMes : string;
Year, Month, Day:word;
begin
  inherited;

{  // ON CLICK

  DecodeDate(Date(), Year, Month, Day);
  XAno := Year;
  If RGOpcaoReferencia.ItemIndex=2
  Then Begin
       // Ajusta o mes
      If EDMes.Text = '1'
      Then Begin
          XAno:=XAno-1;
          XMes:='12';
      End
      Else Begin
          XAno:=XAno;
          aux := StrtoInt(EDmes.Text);
          XMes := InttoStr(aux - 1);
          if(length(XMes) = 1) Then
               XMes := '0' + XMes;
      End;
      // Ajusta o dia
      If (Length(eddia.Text) = 1)
      then Begin
           xdia := '0' + eddia.Text
      End
      Else Begin
           xdia := eddia.Text;
      End;

  End;
  EdDtReferencia.Text := XDia + '/' + XMes + '/' + InttoStr(XAno);}


end;

procedure TFCtasReceberLote.BBImprimirClick(Sender: TObject);
begin
  inherited;
  //Antes de imprimir o sistema atuliza os valores por extenso
  AtualizaValorExtenso;
  XAux := 0;

  DMFINANC.TAlx.Close;
  DMFINANC.TAlx.SQL.Clear;
  DMFINANC.TAlx.SQL.Add('select cliente.export from cliente');
  DMFINANC.TAlx.Open;
  if DMFINANC.TAlx.IsEmpty
  Then Begin
       Mensagem('N O T I F I C A Ç Ã O','Não há dados selecionados para serem impressos', '', 1, 1, FALSE, '!');
       Exit;
  End;

  PImprimir.Visible := True;
  PImprimir.BringToFront;
  RGTipoImp.Visible := true;
  RGTipoImp.BringToFront;
  PImprimir.Repaint;
  PImprimir.Refresh;
{  Panel1.Visible := true;
  Panel1.BringToFront;
  Label15.Visible := true;
  Label15.BringToFront;}

end;

procedure TFCtasReceberLote.PShow(Sender: TObject);
begin
  inherited;
  	iF P.PrintToFile=True Then
	  MessageDlg('IMPRESSORA ATIVA', mtWarning, [], 0);
end;

procedure TFCtasReceberLote.BitBtn5Click(Sender: TObject);
begin
  inherited;
   PImprimir.Visible := False;
   PImprimir.SendToBack;

   // Seleciona todos os clientes que tem o campo export com X
   Clientes_selecionados;

   //Seleciona codigo de CTARECEBER
   Seleciona_Codigo_ctareceber;

   //Seleciona dados da tabela PARCELACR
   Dados_ParcelaCR;

end;

procedure TFCtasReceberLote.BitBtn4Click(Sender: TObject);
begin
  inherited;
   PImprimir.Visible := False;
   PImprimir.SendToBack;

   // Seleciona todos os clientes que tem o campo export com X
   Clientes_selecionados;

   //Seleciona codigo de CTARECEBER
   Seleciona_Codigo_ctareceber;

   //Seleciona dados da tabela PARCELACR
   Dados_ParcelaCR;

end;

procedure TFCtasReceberLote.BitBtn3Click(Sender: TObject);
var
YearAtu, MonthAtu, DayAtu : word;
aux : integer;
begin
  inherited;
   PImprimir.Visible := False;
   PImprimir.SendToBack;
   LBoleto.Visible := False;
   LBoleto.SendToBack;
   LDuplicata.Visible := False;
   LDuplicata.SendToBack;
   LRecibo.Visible := False;
   LRecibo.SendToBack;
   RGBoleto.Visible := False;
   RGBoleto.SendToBack;
   RGRegistro.Visible := false;
   RGRegistro.SendToBack;
   BBRetornar.Visible := false;
   BBRetornar.SendToBack;
   RBNovo.Visible := false;
   RBNovo.SendToBack;
   RBOutraVia.Visible := False;
   RBOutraVia.SendToBack;

  if RGRegistro.ItemIndex = 0
  Then Begin
       XTIPOBOLTO:='R';
  End;
  if RGRegistro.ItemIndex = 1
  Then Begin
       XTIPOBOLTO:='N';
  End;

  if (XTIPOBOLTO = '') and (XAux = 1)
  then begin
       Mensagem(' A T E N Ç Ã O ', 'Informe o tipo de boleto que deseja utilizar.', '', 1, 1, False, 'E');
       PImprimir.Visible := True;
       PImprimir.BringToFront;
       RGRegistro.Visible := True;
       RGRegistro.BringToFront;
       BBRetornar.Visible := True;
       BBRetornar.BringToFront;
       Exit;
  end;

  IF RGTipoImp.ItemIndex = 0
  Then Begin
       if Clientes_selecionados = true
       Then Begin
           if RBNovo.Checked = true
           Then Begin
               Novo_boleto;
           End
           Else Begin
               Outra_via;
           End;
       End
       Else Begin
           Mensagem(' A T E N Ç Ã O ', 'Não há nenhum cliente selecionado.', '', 1, 1, False, 'E');
           Exit;
       End;
  End;

  // Se o tipo de impressao for Duplicata
  If RGTipoImp.ItemIndex = 1
  Then Begin
        DMCONTA.TRel.Close;
        DMCONTA.TRel.SQL.Clear;
        DMCONTA.TRel.SQL.Add('select vwparcr.cod_parcelacr, vwparcr.numdoc, vwparcr.numparc, vwparcr.dtlanc, vwparcr.dtvenc, parcelacr.valor, vwparcr.nome,');
        DMCONTA.TRel.SQL.Add('pessoa.telrel, cidade.nome AS CIDADE, pessoa.endnumero, pessoa.endereco, pessoa.cep, estado.uf_estado, pessoa.cpfcnpj, parcelacr.valext from vwparcr');
        DMCONTA.TRel.SQL.Add('left join ctareceber on vwparcr.cod_ctareceber = ctareceber.cod_ctareceber ');
        DMCONTA.TRel.SQL.Add('left join parcelacr on vwparcr.cod_parcelacr = parcelacr.cod_parcelacr');
        DMCONTA.TRel.SQL.Add('left join Cliente on VWParcr.COD_CLIENTE = Cliente.Cod_Cliente');
        DMCONTA.TRel.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
        DMCONTA.TRel.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
        DMCONTA.TRel.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
        DMCONTA.TRel.SQL.Add(' Where (vwparcr.cod_loja =:CODLOJA) AND (vwparcr.cod_parcelacr>=:Codigo)');
        DMCONTA.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
        DMCONTA.TRel.ParamByName('codigo').AsInteger:=XCod_PrimeiraParcela;
        DMCONTA.TRel.SQL.Add(' order by vwparcr.numparc');
  End;

  // Se tipo de impressao for Listagem
  if RGTipoImp.ItemIndex = 2
  Then Begin
       if Clientes_selecionados = true
       Then Begin
           DMCONTA.IBT.CommitRetaining;
           DMCONTA.TRel.Close;
           DMCONTA.TRel.SQL.Clear;
           DMCONTA.TRel.SQL.Add(' select * From vwparcr ');
           DMCONTA.TRel.SQL.Add(' Left Join Cliente on VWParcr.COD_CLIENTE = Cliente.Cod_Cliente ');
           DMCONTA.TRel.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
           DMCONTA.TRel.SQL.Add(' Where (vwparcr.cod_loja=:CODLOJA)');
           DMCONTA.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
           DMCONTA.TRel.SQL.Add(' AND cliente.export = '+#39+'X'+#39);

           Case RGOrdenado.ItemIndex of
           0 : DMCONTA.TRel.SQL.Add(' order by vwparcr.cod_parcelacr');
           1 : DMCONTA.TRel.SQL.Add(' order by vwparcr.dtvenc');
           2 : DMCONTA.TRel.SQL.Add(' order by vwparcr.valor');
   End;

       End
       Else Begin
           Mensagem(' A T E N Ç Ã O ', 'Não há nenhum cliente selecionado.', '', 1, 1, False, 'E');
           Exit;
       End;
  End;

  // Se tipo de impressao for Recibo
  if RGTipoImp.ItemIndex = 3
  Then Begin
    DMCONTA.TRel.Close;
    DMCONTA.TRel.SQL.Clear;
    DMCONTA.TRel.SQL.Add('SELECT distinct(parcelacr.cod_parcelacr), parcelacr.dtvenc AS VENCIMENTO, parcelacr.valorpg, parcelacr.numparc, parcelacr.valExt, parcelacr.valor, ');
    DMCONTA.TRel.SQL.Add('pessoa.bairro, pessoa.cep, Pessoa.Telrel, pessoa.cpfcnpj, pessoa.endnumero, pessoa.endereco, pessoa.nome, ');
    DMCONTA.TRel.SQL.Add('CtaReceber.NumDoc, CtaReceber.DTLanc, cidade.nome AS cidade, estado.uf_estado ');
    DMCONTA.TRel.SQL.Add('FROM parcelacr join ctareceber ON parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
    DMCONTA.TRel.SQL.Add('JOIN cliente on cliente.cod_cliente = ctareceber.cod_cliente ');
    DMCONTA.TRel.SQL.Add('join pessoa ON pessoa.cod_pessoa = cliente.cod_pessoa ');
    DMCONTA.TRel.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
    DMCONTA.TRel.SQL.Add('left join estado ON estado.cod_estado = cidade.cod_estado ');
    DMCONTA.TRel.SQL.Add(' where parcelacr.cod_parcelacr = :codigo');
    DMCONTA.TRel.ParamByName('codigo').AsString := DMCONTA.TParcCR.FieldByName('cod_parcelacr').AsString;
    DMCONTA.TRel.SQL.Add(' AND cliente.export =' + #39 + 'X'+ #39);
  End;

   DMCONTA.TRel.Open;

   Case RGTipoImp.ItemIndex of
       1 : QRDUPLICATA.Preview;
       2 : QuickRep1.Preview;
       3 : QRRECIBO.Preview;
   End;

   //a variavel XAux recebe 1 para ser comparada no activate
   XAux := 1;
end;

procedure TFCtasReceberLote.RGTipoImpClick(Sender: TObject);
begin
  inherited;
   If RGTipoImp.ItemIndex <> 2
   Then Begin
       RGOrdenado.Visible := False;
       RGOrdenado.SendToBack;
   End;

   If RGTipoImp.ItemIndex = 0
   Then Begin
       XAux := 1;
       BBRetornar.Visible := false;
       BBRetornar.SendToBack;
       LDuplicata.Visible := False;
       LDuplicata.SendToBack;
       LRecibo.Visible := False;
       LRecibo.SendToBack;
       RGRegistro.Visible := false;
       RGRegistro.SendToBack;
       RBNovo.Checked := false;
       RBOutraVia.Checked := false;
       RGBoleto.Visible := True;
       RGBoleto.BringToFront;
       RBNovo.Visible := True;
       RBNovo.BringToFront;
       RBOutraVia.Visible := True;
       RBOutraVia.BringToFront;
   End;

   If RGTipoImp.ItemIndex = 1
   Then Begin
       XAux := 0;
       RGBoleto.Visible := False;
       RGBoleto.SendToBack;
       LBoleto.Visible := False;
       LBoleto.SendToBack;
       RGRegistro.Visible := false;
       RGRegistro.SendToBack;
       BBRetornar.Visible := False;
       BBRetornar.SendToBack;
       RBNovo.Visible := false;
       RBNovo.SendToBack;
       RBOutraVia.Visible := False;
       RBOutraVia.SendToBack;
       LDuplicata.Visible := true;
       LDuplicata.BringToFront;
   End;

   If RGTipoImp.ItemIndex = 2
   Then Begin
       XAux := 0;
       LBoleto.Visible := False;
       LBoleto.SendToBack;
       LDuplicata.Visible := False;
       LDuplicata.SendToBack;
       RGBoleto.Visible := False;
       RGBoleto.SendToBack;
       LRecibo.Visible := False;
       LRecibo.SendToBack;
       RGRegistro.Visible := false;
       RGRegistro.SendToBack;
       BBRetornar.Visible := false;
       BBRetornar.SendToBack;
       RGOrdenado.Visible := True;
       RGOrdenado.BringToFront;
   End;

   if RGTipoImp.ItemIndex = 2 then
       XAux := 0;

   If RGTipoImp.ItemIndex = 3
   Then Begin
       XAux := 0;
       LBoleto.Visible := False;
       LBoleto.SendToBack;
       LDuplicata.Visible := False;
       LDuplicata.SendToBack;
       RGRegistro.Visible := false;
       RGRegistro.SendToBack;
       BBRetornar.Visible := False;
       BBRetornar.SendToBack;
       RBNovo.Visible := false;
       RBNovo.SendToBack;
       RBOutraVia.Visible := False;
       RBOutraVia.SendToBack;
       LRecibo.Visible := True;
       LRecibo.BringToFront;
   End;

end;

procedure TFCtasReceberLote.BBRetornarClick(Sender: TObject);
begin
  inherited;
   RGRegistro.Visible := False;
   RGRegistro.SendToBack;
   BBRetornar.Visible := False;
   BBRetornar.SendToBack;
   RGTipoImp.Visible := True;
   RGTipoImp.BringToFront;
   RGBoleto.Visible := True;
   RGBoleto.SendToBack;
   RBNovo.Checked := False;
   RBOutraVia.Checked := False;
   RBNovo.Visible := True;
   RBNovo.BringToFront;
   RBOutraVia.Visible := True;
   RBOutraVia.BringToFront;
end;

procedure TFCtasReceberLote.RBNovoClick(Sender: TObject);
begin
  inherited;
   RGBoleto.Visible := False;
   RGBoleto.SendToBack;
   RGTipoImp.Visible := False;
   RGTipoImp.SendToBack;
   LDuplicata.Visible := False;
   LDuplicata.SendToBack;
   LRecibo.Visible := False;
   LRecibo.SendToBack;
   RBNovo.Visible := False;
   RBNovo.SendToBack;
   RBOutraVia.Visible := False;
   RBOutraVia.SendToBack;
   RGRegistro.Visible := True;
   RGRegistro.BringToFront;
   BBRetornar.Visible := True;
   BBRetornar.BringToFront;
end;

procedure TFCtasReceberLote.RBOutraViaClick(Sender: TObject);
begin
  inherited;
   RGBoleto.Visible := False;
   RGBoleto.SendToBack;
   RGTipoImp.Visible := False;
   RGTipoImp.SendToBack;
   LDuplicata.Visible := False;
   LDuplicata.SendToBack;
   LRecibo.Visible := False;
   LRecibo.SendToBack;
   RBNovo.Visible := False;
   RBNovo.SendToBack;
   RBOutraVia.Visible := False;
   RBOutraVia.SendToBack;
   RGRegistro.Visible := True;
   RGRegistro.BringToFront;
   BBRetornar.Visible := True;
   BBRetornar.BringToFront;
end;

procedure TFCtasReceberLote.RGBoletoClick(Sender: TObject);
begin
  inherited;
   XAux := 1;
end;

procedure TFCtasReceberLote.RGOrdenadoClick(Sender: TObject);
begin
  inherited;
   // a variavel recebe 0 para ser comparada no activate
   if (RGOrdenado.ItemIndex = 0) or (RGOrdenado.ItemIndex = 1) or (RGOrdenado.ItemIndex = 2) or (RGOrdenado.ItemIndex = 3) then
           XAux := 0;
end;

procedure TFCtasReceberLote.BtnFechaClick(Sender: TObject);
begin
  inherited;
  	//Antes de fechar a tela o sistema atualiza os valores por extenso
   AtualizaValorExtenso;
   XAux := 0;
end;


procedure TFCtasReceberLote.CBTipoValorClick(Sender: TObject);
begin
  inherited;

   if (CBTipoValor.Text = 'RATEIO DE CUSTOS') OR (CBTipoValor.Text =  'ULTIMO LANÇAMENTO') or (CBTipoValor.Text = 'DO CADASTRO')
   Then Begin
       EdValor.Text := '0,00';
       EdValor.Enabled := False;
       EdDataIni.Enabled := false;
       EdDataFim.Enabled := false;
       RGTipo.Enabled := false;
   End
   Else Begin
       EdValor.Enabled := True;
       If (CBTipoValor.Text = 'RATEIO CUST. PERÍODO') or (CBTipoValor.Text = 'FIXO')
       Then Begin
           EdValor.Text := '0,00';
           EdValor.SetFocus;
           EdDataIni.Enabled := false;
           EdDataFim.Enabled := false;
           RGTipo.Enabled := false;
       End;
       If (CBTipoValor.Text = 'RATEIO POR CONTAS')
       Then Begin
           EdDataIni.Enabled := true;
           EdDataFim.Enabled := true;
           RGTipo.Enabled := true;
           EdValor.ReadOnly := TRUE;
       End
       Else Begin

           EdValor.ReadOnly := false;
       End;
       EdValor.Text := '0,00';
   End;
end;

procedure TFCtasReceberLote.FrmContaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin

 		If FrmConta.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+')  AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+FrmConta.EDCodigo.Text+#39+ ')')=True
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
   End;  FrmConta.EDCodigoKeyPress(Sender, Key);

end;

procedure TFCtasReceberLote.EdMesExit(Sender: TObject);
var
XDia, XMes : string;
Year, Month, Day : word;
begin
  inherited;

   if (EdDia.Text >= '1') and (EdDia.Text <= '9')
   Then Begin
       XDia := '0' + EdDia.Text;
   End;

   If (EdMes.Text >= '1') and (EdMes.Text <= '9')
   then Begin
       XMes := '0' + EdMes.Text;
   end;
   DecodeDate(Date(), Year, Month, Day);
   XAno:=Year;

   EdDtReferencia.Text := XDia + '/' + XMes + '/' + IntToStr(XAno);

end;

// calcula total financiro das contas a pagar referente ao pediodo indicado junto com o tipo de rateio
procedure TFCtasReceberLote.CalculaRateioPeriodo;
begin

   // eh necessario informar a data
   If (EdDataIni.Text <> '  /  /    ') and (EdDataFim.Text <> '  /  /    ')
   Then Begin
       DMMACS.TAlx.Close;
       DMMACS.TAlx.SQL.Clear;
       DMMACS.TAlx.SQL.Add(' select SUM(parcelacp.valor) as TOTAL from ctapagar ');
       DMMACS.TAlx.SQL.Add('  left join parcelacp on ctapagar.cod_ctapagar = parcelacp.cod_ctapagar ');
       DMMACS.TAlx.SQL.Add(' where (parcelacp.dtvenc Between :DATA_INI and :DATA_FINAL)');

       // se for para reserva
       If RGTipo.ItemIndex = 0 Then
           DMMACS.TALX.SQL.Add('AND (parcelacp.tipo = ' + #39 + '2' + #39 + ')');

       // se for para promocao
       If RGTipo.ItemIndex = 1 Then
           DMMACS.TALX.SQL.Add('AND (parcelacp.tipo = ' + #39 + '3' + #39 + ')');

       //se for condominio
       If RGTipo.ItemIndex = 2 Then
           DMMACS.TALX.SQL.Add('AND (parcelacp.tipo = ' + #39 + '4' + #39 + ')');

       DMMACS.TAlx.ParamByName('DATA_INI').AsString := EdDataIni.Text;
       DMMACS.TAlx.ParamByName('DATA_FINAL').AsString := EdDataFim.Text;
       DMMACS.TAlx.Open;

       EdValor.ValueNumeric := DMMACS.TALX.FieldByname('TOTAL').AsCurrency;

   End;

end;

procedure TFCtasReceberLote.RGTipoClick(Sender: TObject);
begin
  inherited;
    // calcula total financiro das contas a pagar referente ao pediodo indicado junto com o tipo de rateio
    CalculaRateioPeriodo;

end;

procedure TFCtasReceberLote.DBGrid1Exit(Sender: TObject);
begin
  inherited;
     DMCONTA.TParcCR.Edit;       
     DMCONTA.TParcCR.Post;
end;

// verifica se no numero do boleto contem apenas numero "0". Se retorna TRUE eh pq o numero de boleto esta correto
function TFCtasReceberLote.VerificaNumBoleto(NumeroBoleto: string): boolean;
var
I: integer;
begin
   If Length(NumeroBoleto) = 0
   Then Begin
       Result := false;
       Exit;
   End;

   // faz verificação de valores para não liberar nnumero de boleto zerado
   For I := 1 to Length(NumeroBoleto) do
   Begin
       If (NumeroBoleto[I] <> '0')
       Then Begin
           If (NumeroBoleto[I] <> '/')
           Then Begin
               If (NumeroBoleto[I] <> '-')
               Then Begin
                   If (NumeroBoleto[I] <> ' ')
                   Then Begin
                       Result := True;
                       Exit;
                   End;
               End;
           End;
       End;
   End;
   Result := false;
end;

// numero de clientes selecionados
procedure TFCtasReceberLote.NumeroClientesSelecionados;
begin
    // numero de clientes selecionados
    DMPESSOA.TALX.Close;
    DMPESSOA.TALX.SQL.Clear;
    DMPESSOA.TALX.SQL.Add('select count(cliente.cod_cliente) AS NUMERO_CLIENTES from cliente where cliente.export = ' + #39 + 'X' + #39);
    DMPESSOA.TALX.Open;

    If DMPESSOA.TALX.FieldByName('NUMERO_CLIENTES').AsInteger <= 1
    Then Begin
       LNumCliente.Caption := DMPESSOA.TALX.FieldByName('NUMERO_CLIENTES').AsString + ' cliente';
    End;
    If DMPESSOA.TALX.FieldByName('NUMERO_CLIENTES').AsInteger > 1
    Then Begin
       LNumCliente.Caption := DMPESSOA.TALX.FieldByName('NUMERO_CLIENTES').AsString + ' clientes';
    End;
end;


procedure TFCtasReceberLote.SelecionaGrid;
begin
   DbGridCliente.SelectedIndex := 2;
end;
End.
