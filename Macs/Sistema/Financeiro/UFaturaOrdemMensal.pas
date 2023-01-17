unit UFaturaOrdemMensal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, ExtCtrls, StdCtrls, ComCtrls, EditFloat, Spin,
  UFrmBusca, ColorEditFloat, Grids, DBGrids, Mask, ColorMaskEdit,
  FashionPanel, StrUtils, TFlatEditUnit;

type
  TFFaturaOrdemMensal = class(TFPadrao)
    Panel1: TPanel;
    PcFaturas: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    PUltimaFatura: TPanel;
    Label1: TLabel;
    EdUltimoPeriodoApurado: TEdit;
    Shape3: TShape;
    POrdem: TPanel;
    Shape4: TShape;
    EdNumero: TEdit;
    EdData: TEdit;
    EdNome: TEdit;
    EdValor: TFloatEdit;
    Panel2: TPanel;
    Shape5: TShape;
    Label2: TLabel;
    EdNumeroMeses: TSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    EdPeriodoInicialNovaFatura: TEdit;
    EdPeriodoFinalNovaFatura: TEdit;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    EdVlrFinal: TColorEditFloat;
    DBGridCadastroPadrao: TDBGrid;
    DBGrid1: TDBGrid;
    TabSheet4: TTabSheet;
    DbgaFaturar: TDBGrid;
    PLimpaOSSelecionada: TPanel;
    Label6: TLabel;
    EdNumeroFiltroAFaturar: TColorMaskEdit;
    EdNomeFiltroAFaturar: TColorMaskEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EdDtFiltroAFaturar: TColorMaskEdit;
    Label10: TLabel;
    PDadosFatura: TPanel;
    EdDiaVencimento: TSpinEdit;
    Label12: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    CBPagamento: TComboBox;
    btnCancelaFatura: TBitBtn;
    PFinanceiro: TPanel;
    PBanco: TPanel;
    Label115: TLabel;
    DBGCTA: TDBGrid;
    FPFinanceiro: TFashionPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    BtnMoedaOK: TBitBtn;
    BtnMoedaCancelar: TBitBtn;
    CBPagamento2: TComboBox;
    FrmFormPag: TFrmBusca;
    DBDATAENTREGA: TColorMaskEdit;
    DBHORAENTREGA: TColorMaskEdit;
    FrmContaServ: TFrmBusca;
    Panel7: TPanel;
    Label29: TLabel;
    EdDtFech: TColorMaskEdit;
    Label15: TLabel;
    Label16: TLabel;
    EDCodigoFormPag: TFlatEdit;
    EdDescricaoFormPag: TFlatEdit;
    btnBuscaFormPag: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure EdNumeroMesesChange(Sender: TObject);
    procedure FrmFormaPagamentoBTNOPENClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure PcFaturasChange(Sender: TObject);
    procedure EdDtFiltroAFaturarKeyPress(Sender: TObject; var Key: Char);
    procedure DbgaFaturarDblClick(Sender: TObject);
    procedure BtnMoedaOKClick(Sender: TObject);
    procedure BtnMoedaCancelarClick(Sender: TObject);
    procedure FrmFormPagBTNOPENClick(Sender: TObject);
    procedure FrmFormPagBTNMINUSClick(Sender: TObject);
    procedure FrmContaServBTNOPENClick(Sender: TObject);
    procedure FrmContaServBTNMINUSClick(Sender: TObject);
    procedure btnCancelaFaturaClick(Sender: TObject);
    procedure EDCodigoFormPagKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnBuscaFormPagClick(Sender: TObject);
    procedure EdValorExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //Alex: 19/11/2014 - Função para preencher os dados da OS selecionada
    Function EscreveDadosOS: Boolean;
	 //Alex: 19/11/2014 - Função para pesquisar a ultima fatura encontrada
	 Function BuscaPeriodoUltimaFatura: Boolean;
	 //Alex: 21/11/2014 - Função para Fechar e Faturar o Período
	 Function FaturaPeriodo: Boolean;
	 //Alex: 21/11/2014 - Função para gerar contas a receber
	 Function GeraCtasREceber: Boolean;
	 //Alex: 21/11/2014 - Função para gerar parcelas de contas a receber
	 Function GeraParcelaCtasREceber: Boolean;
	 //Alex: 21/11/2014 - Função para retornar a data de vencimento
	 Function RetornaDtVencimento(XDia: Integer; XQtdeMes: Integer; XDtInicio: TDateTime): TDateTime;
	 //Alex: 21/11/2014 - Função para Filtrar as parcelas abertas de ctas receber de acordo com a OS e o Período
	 Function FiltraPeriodosAbertos: Boolean;
	 //Alex: 21/11/2014 - Função para Filtrar as parcelas fechadas de ctas receber de acordo com a OS e o Período
	 Function FiltraPeriodosFechados: Boolean;
	 //Alex: 21/11/2014 - Função para Filtrar as Ordens de Serviços para serem faturadas
	 Function FiltraOSaFaturar: Boolean;
    //Edmar - 20/01/2015 - Função auxiliar para atualiza o status de faturamento da OS
    Function AtualizaFaturaOS(xCodigoOrdem: Integer): Boolean;
    //Edmar - 20/01/2015 - Função auxiliar usada para fechar a ordem de serviço gerando o financeiro
    function FechaOrd(xCodigoOrdem: Integer): Boolean;
    //Edmar - 20/01/2015 -
 	 function PreparaFechamentoOrd: Boolean;
    //Função utilizada para cancelar/estornar todos os lançamentos emitidos por uma determinada OS
    Function CancelLanOrd(xCodCtaReceber: String):Boolean;    
  end;

var
  FFaturaOrdemMensal: TFFaturaOrdemMensal;
  XDataUltimoPeriodo, XDataPrimeiroPeriodo, XDataNovoPeriodoInicial, XDataNovoPeriodoFinal : TDateTime;
  XCodCliente, XCodFatura, XCodOrdem, XCODCTA, XCOD_Parcela, NumPeriodo:Integer;
  XFlag: Boolean;
  XNumLinhaErro: String;
  XCodFormPag, XCOD_CONTA: Integer;
  XVALOR_ADIANTAMENTO: Real;
  XDATAREF: String;  
  
implementation

uses UDmServ, DB, UDMFinanc, UFormPag, Alxor32, Alxorprn, AlxMessage, UMDO,
  UMenu, UDMMacs, UDMConta, JLLabel, UDMEstoque, UDMPessoa, UDmBanco,
  UDMCaixa;

{$R *.dfm}

//Alex: 21/11/2014 - Função para Filtrar as parcelas em fechado de ctas receber de acordo com a OS e o Período
Function TFFaturaOrdemMensal.FiltraOSaFaturar: Boolean;
Var
	XCodigosOS, XCodPeriodos: String;
   XCOD_TMP: Integer;
Begin
	Try
       XCodigosOS:='';
   	//Filtramos apenas OS que não possuem Fatura
       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       {
       Edmar - 29/01/2015 - Trecho comentado para corrigir SQL incorreta
       DMServ.TAlx1.SQL.Add(' Select distinct(vwordem.cod_ordem) from vwordem ');
       DMServ.TAlx1.SQL.Add(' Where (vwordem.formapag=''MENSAL'') And not exists (Select * from periodofatura where (periodofatura.cod_ordem=vwordem.cod_ordem)) ');
       }
		DMServ.TAlx1.SQL.Add(' SELECT DISTINCT(VWORDEM.COD_ORDEM) FROM VWORDEM ');
		DMServ.TAlx1.SQL.Add(' WHERE (VWORDEM.FORMAPAG = ''MENSAL'') AND ');
		DMServ.TAlx1.SQL.Add(' (VWORDEM.DTABERT <= :DATA) ');
		DMServ.TAlx1.SQL.Add(' AND NOT EXISTS (SELECT * FROM PERIODOFATURA WHERE (PERIODOFATURA.COD_ORDEM = VWORDEM.COD_ORDEM)) ');
       DMServ.TAlx1.ParamByName('DATA').AsDate := StrToDate(EdDtFiltroAFaturar.Text);
		DMServ.TAlx1.Open;
       
       If not DMServ.TAlx1.IsEmpty
       Then Begin
           DMServ.TAlx1.First;
           While not DMServ.TAlx1.Eof do
           Begin
               If XCodigosOS='' Then
               	XCodigosOS:=XCodigosOS+DMServ.TAlx1.FieldByName('cod_ordem').AsString
               Else
               	XCodigosOS:=XCodigosOS+', '+DMServ.TAlx1.FieldByName('cod_ordem').AsString;
               DMServ.TAlx1.Next;
           End;
       End;
   	//Filtramos apenas OS que possuem Fatura
       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add(' Select distinct(vwordem.cod_ordem) from vwordem ');
       DMServ.TAlx1.SQL.Add(' left join periodofatura on vwordem.cod_ordem = periodofatura.cod_ordem ');
       DMServ.TAlx1.SQL.Add(' Where (vwordem.formapag=''MENSAL'') AND (periodofatura.dtfim<:Data) ');
       DMServ.TAlx1.ParamByName('Data').AsString:=EdDtFiltroAFaturar.Text;
		DMServ.TAlx1.Open;

     { Edmar - 29/01/2015 - Trecho comentado para não trazer mais os códigos do periodo
     	If not DMServ.TAlx1.IsEmpty
       Then Begin
           DMServ.TAlx1.First;
           While not DMServ.TAlx1.Eof do
           Begin
               DMEstoque.Alx1.Close;
               DMEstoque.Alx1.SQL.Clear;
               DMEstoque.Alx1.SQL.Add(' Select periodofatura.cod_periodofatura, periodofatura.dtfim, periodofatura.cod_ordem from periodofatura Where (periodofatura.cod_ordem=:codigo)  order by periodofatura.dtfim desc ');
               DMESTOQUE.Alx1.ParamByName('codigo').AsInteger:=DMServ.TAlx1.FieldByName('cod_ordem').AsInteger;
               DMEstoque.Alx1.Open;
               If not DMESTOQUE.Alx1.IsEmpty
               Then Begin
                   If XCodPeriodos='' Then
                       XCodPeriodos:=XCodPeriodos+DMEstoque.Alx1.FieldByName('cod_periodofatura').AsString
                   Else
                       XCodPeriodos:=XCodPeriodos+', '+DMEstoque.Alx1.FieldByName('cod_periodofatura').AsString;
               End;

               If XCodigosOS='' Then
               	XCodigosOS:=XCodigosOS+DMServ.TAlx1.FieldByName('cod_ordem').AsString
               Else
               	XCodigosOS:=XCodigosOS+', '+DMServ.TAlx1.FieldByName('cod_ordem').AsString;

               DMServ.TAlx1.Next;
           End;
       End;}

       DMServ.TAlx1.First;
       if not DMServ.TAlx1.IsEmpty then
       begin
       	If XCodigosOS='' Then
           	XCodigosOS:=XCodigosOS+DMServ.TAlx1.FieldByName('cod_ordem').AsString
        	Else
           	XCodigosOS:=XCodigosOS+', '+DMServ.TAlx1.FieldByName('cod_ordem').AsString;

       	DMServ.TAlx1.Next;
       end;
       
       If XCodigosOS='' Then
           XCodigosOS:='-666';
           
       //Filtra as OS de acordo com os codigos informados
       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add(' SELECT DISTINCT(VWORDEM.COD_ORDEM), VWORDEM.NUMERO, VWORDEM.DTFECH, VWORDEM.CLIENTE, VWORDEM.TOTAL, ');
       DMServ.TAlx1.SQL.Add(' PERIODOFATURA.DTINI, PERIODOFATURA.DTFIM, PERIODOFATURA.DTFATURA FROM VWORDEM ');
       DMServ.TAlx1.SQL.Add(' LEFT JOIN PERIODOFATURA ON VWORDEM.COD_ORDEM = PERIODOFATURA.COD_ORDEM ');
       DMServ.TAlx1.SQL.Add(' WHERE (VWORDEM.COD_ORDEM IN ('+XCodigosOS+')) ');
       
       If EdNumeroFiltroAFaturar.Text<>'' Then
       	DMServ.TAlx1.SQL.Add('  AND (UPPER(VWORDEM.NUMERO)) LIKE (UPPER ('+#39+TRIM(EdNumeroFiltroAFaturar.Text)+'%'+#39+')) ');
       If EdNomeFiltroAFaturar.Text<>'' Then
       	DMServ.TAlx1.SQL.Add(' AND (UPPER (VWORDEM.CLIENTE)) LIKE (UPPER ('+#39+TRIM(EdNomeFiltroAFaturar.Text)+'%'+#39+')) ');
           
       DMServ.TAlx1.SQL.Add(' ORDER BY VWORDEM.COD_ORDEM, PERIODOFATURA.DTFIM DESC ');
       DMServ.TAlx1.SQL.Text;
       DMServ.TAlx1.Open;
       DMServ.TAlx1.First;

       try
       	DMMACS.TMP.Close;
           DMMACS.TMP.SQL.Clear;
       	DMMACS.TMP.SQL.Add(' DELETE FROM TMP ');
       	DMMACS.TMP.ExecSQL;

       	DMMACS.Transaction.CommitRetaining;
       except
			MessageDlg('Não foi possível limpar a tabela TMP. Por favor reinicie o sistema, se o problema persistir entrar em contato com o suporte técnico.', mtWarning, [mbOK], 0);
       	DMMACS.Transaction.RollbackRetaining;
           Exit;
       end;

       //Edmar - 29/01/2015 - Depois de buscar as ordens que estão para faturar, adiciona-los na tabela TMP
       //caso a ordem de serviço tenha mais de uma fatura, considerar apenas a ultima fatura válida
       XCOD_TMP := 1;
       XCodigosOS := '';
       
       try
       	//Edmar - 30/01/2015 - Percorre as OS retornadas
       	while not DMServ.TAlx1.Eof do
           begin
               //só adiciona a OS na tabela TMP se ela já não foi adicionada anteriormente
               if not AnsiContainsStr(XCodigosOS, DMServ.TAlx1.FieldByName('COD_ORDEM').AsString) then
               begin
                   MDO.Query.Close;
                   MDO.Query.SQL.Clear;
                   MDO.Query.SQL.Add(' INSERT INTO TMP (COD_TMP, INT1, DESC1, DESC2, DESC3) VALUES (:COD_TMP, :COD_ORDEM, :DTINI, :DTFIM, :DTFATURA) ');
                   MDO.Query.ParamByName('COD_TMP').AsInteger := XCOD_TMP;
                   MDO.Query.ParamByName('COD_ORDEM').AsInteger := DMServ.TAlx1.FieldByName('COD_ORDEM').AsInteger;
                   MDO.Query.ParamByName('DTINI').AsString := DMServ.TAlx1.FieldByName('DTINI').AsString;
                   MDO.Query.ParamByName('DTFIM').AsString := DMServ.TAlx1.FieldByName('DTFIM').AsString;
                   MDO.Query.ParamByName('DTFATURA').AsString := DMServ.TAlx1.FieldByName('DTFATURA').AsString;
                   MDO.Query.ExecSQL;

                   if XCodigosOS='' Then
                       XCodigosOS:=XCodigosOS+DMServ.TAlx1.FieldByName('COD_ORDEM').AsString
                   else
                       XCodigosOS:=XCodigosOS+', '+DMServ.TAlx1.FieldByName('COD_ORDEM').AsString;

                   Inc(XCOD_TMP);
               end;

               DMServ.TAlx1.Next;
           end;
           
           MDO.Transac.CommitRetaining;
       except
           MDO.Transac.RollbackRetaining;
  			MessageDlg('Não foi possível atualizar a tabela TMP. Por favor reinicie o sistema, se o problema persistir entrar em contato com o suporte técnico.', mtWarning, [mbOK], 0);
           Exit;
       end;

       //Filtra as OS que foram adicionadas na tabela TMP
       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add(' SELECT TMP.COD_TMP, TMP.INT1 COD_ORDEM, VWORDEM.NUMERO, VWORDEM.DTFECH, VWORDEM.CLIENTE, VWORDEM.TOTAL, ');
       DMServ.TAlx1.SQL.Add(' TMP.DESC1 DTINI, TMP.DESC2 DTFIM, TMP.DESC3 DTFATURA FROM TMP ');
       DMServ.TAlx1.SQL.Add(' LEFT JOIN VWORDEM ON VWORDEM.COD_ORDEM = TMP.INT1 ');
       DMServ.TAlx1.SQL.Text;
       DMServ.TAlx1.Open;
       DMServ.TAlx1.First;       

       DbgaFaturar.DataSource:=DMServ.DSAlx1;
   Except
   End
End;

//Alex: 21/11/2014 - Função para Filtrar as parcelas em fechado de ctas receber de acordo com a OS e o Período
Function TFFaturaOrdemMensal.FiltraPeriodosFechados: Boolean;
Begin
	Try
       DMFINANC.TAlx.close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add(' Select parcelacr.cod_parcelacr, ctareceber.cod_ctareceber, periodofatura.cod_periodofatura, ');
       DMFINANC.TAlx.SQL.Add('     periodofatura.dtfatura, periodofatura.dtini, periodofatura.dtfim, parcelacr.dtvenc, parcelacr.valor, ');
       DMFINANC.TAlx.SQL.Add('     parcelacr.dtdebito, parcelacr.valorpg ');
       DMFINANC.TAlx.SQL.Add(' from parcelacr ');
       DMFINANC.TAlx.SQL.Add(' left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
       DMFINANC.TAlx.SQL.Add(' left join periodofatura on ctareceber.cod_gerador = periodofatura.cod_periodofatura ');
       DMFINANC.TAlx.SQL.Add(' Where (ctareceber.tipogerador=''FOS'') and (periodofatura.cod_ordem=:CodigoOrdem)  and (parcelacr.fech=''S'')');
       DMFINANC.TAlx.Parambyname('CodigoOrdem').Asinteger:=XCodOrdem;
       DMFINANC.TAlx.Open;
	Except
	End;
End;

//Alex: 21/11/2014 - Função para Filtrar as parcelas em aberto de ctas receber de acordo com a OS e o Período
Function TFFaturaOrdemMensal.FiltraPeriodosAbertos: Boolean;
Begin
	Try
       DMFINANC.TAlx.close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add(' SELECT PARCELACR.COD_PARCELACR, CTARECEBER.COD_CTARECEBER, PERIODOFATURA.COD_PERIODOFATURA, ');
       DMFINANC.TAlx.SQL.Add(' PERIODOFATURA.DTFATURA, PERIODOFATURA.DTINI, PERIODOFATURA.DTFIM, PARCELACR.DTVENC, PARCELACR.VALOR, ');
       DMFINANC.TAlx.SQL.Add(' PARCELACR.DTDEBITO, PARCELACR.VALORPG ');
       DMFINANC.TAlx.SQL.Add(' FROM PARCELACR ');
       DMFINANC.TAlx.SQL.Add(' LEFT JOIN CTARECEBER ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
       DMFINANC.TAlx.SQL.Add(' LEFT JOIN PERIODOFATURA ON CTARECEBER.COD_GERADOR = PERIODOFATURA.COD_PERIODOFATURA ');
       DMFINANC.TAlx.SQL.Add(' WHERE (CTARECEBER.TIPOGERADOR = ''FOS'') AND (PERIODOFATURA.COD_ORDEM = :COD_ORDEM) AND (PARCELACR.FECH <> ''S'') ');
       DMFINANC.TAlx.Parambyname('COD_ORDEM').Asinteger:=XCodOrdem;
       DMFINANC.TAlx.Open;
	Except
	End;
End;
//Alex: 21/11/2014 - Função para gerar contas a receber
Function TFFaturaOrdemMensal.GeraCtasREceber: Boolean;
var
	XFlag:Integer;
Begin
	Try
   	if True{EdDescricaoFormPag.Text = 'MENSAL'} then
       begin
       	Result:=True;
           //Alex 25/11/2014 - Cria contas a receber
           DMMACS.Transaction.CommitRetaining;
           XCODCTA:=DMMACS.TCodigo.FieldByName('COD_CTARECEBER').AsInteger;
           Try
              XFlag:=0;
              While XFlag=0 do
              Begin
                 DMMACS.TALX.Close;
                 DMMACS.TALX.SQL.Clear;
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
              DMMACS.TCodigo.Edit;
              DMMACS.TCodigo.FieldByName('COD_CTARECEBER').AsInteger:=XCODCTA+1;
              DMMACS.TCodigo.Post;
              DMMACS.IBTCodigo.CommitRetaining;
           Except
             MessageDlg('ERRO: 1971'+#13+'Conflito ao gerar próximo codigo do cabeçalho da conta:'+#13+'Para corrigir este erro será necessário efetuar o comando de Stop/Start do Firebird no servidor'+#13+'Por favor, repasse este código de erro ao suporte', mtWarning, [mbOK], 0);
           End;

           DMCONTA.TCtaR.Insert;
           DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsInteger:=XCODCTA;
           DMCONTA.TCtaR.FieldByName('NUMDOC').AsString:=EdNumero.Text;
           DMCONTA.TCtaR.FieldByName('DTLANC').AsDateTime:=Date();
           DMCONTA.TCtaR.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
           DMCONTA.TCtaR.FieldByName('COBRANCA').AsString:=CBPagamento.Text;
           DMCONTA.TCtaR.FieldByName('COD_CLIENTE').AsInteger:=XCodCliente;
           DMCONTA.TCtaR.FieldByName('COD_PLNCTA').AsString:= DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsString;
           DMCONTA.TCtaR.FieldByName('HISTORICO').AsString:='Fat. OS N. '+EdNumero.Text;
           DMCONTA.TCtaR.FieldByName('TIPOGERADOR').AsString:='FOS';
           DMCONTA.TCtaR.FieldByName('COD_GERADOR').AsInteger:=XCodFatura;
           DMCONTA.TCtaR.FieldByName('VALOR').AsCurrency:=EdValor.ValueNumeric;
           DMCONTA.TCtaR.FieldByName('COD_FORMPAG').AsInteger:= XCodFormPag; //DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
           DMCONTA.TCtaR.FieldByName('COD_VENDEDOR').AsString:=FMenu.LCODUSUARIO.Caption;
           DMCONTA.TCtaR.post;
       end
       else begin
       	LancConta('ORDEM', XCodFatura, XCodCliente, CBPagamento.Text, EdValor.ValueNumeric, 0, DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger, -1, -1, 'Fat OS N. '+EdNumero.Text+' Período: '+DateToStr(XDataNovoPeriodoInicial)+' - '+DateToStr(XDataNovoPeriodoFinal), XCodFormPag, EdNumero.Text+'/'+IntToStr(NumPeriodo), 'FOS', Date(), 0, DateToStr(Date()), '');
			Result := FMenu.LancAutConta;           
		end;           
   Except
       Result:=False;
   End;
End;
//Alex: 21/11/2014 - Função para retornar a data de vencimento
Function TFFaturaOrdemMensal.RetornaDtVencimento(XDia: Integer; XQtdeMes: Integer; XDtInicio: TDateTime): TDateTime;
Var
XResultado: TDateTime;
Ano, Mes, Dia: Word;
Begin
	Try
		XResultado:=(IncMonth(XDtInicio, XQtdeMes));
		Result:=XResultado;
		DecodeDate(XDtInicio, Ano, Mes, Dia);
       Try
           XResultado:=StrToDate(IntToStr(XDia)+'/'+IntToStr(Mes)+'/'+IntToStr(Ano) )
       Except
           Try
               XResultado:=StrToDate(IntToStr(XDia-1)+'/'+IntToStr(Mes)+'/'+IntToStr(Ano) )
           Except
               Try
                   XResultado:=StrToDate(IntToStr(XDia-2)+'/'+IntToStr(Mes)+'/'+IntToStr(Ano) )
               Except
                   Try
                       XResultado:=StrToDate(IntToStr(XDia-3)+'/'+IntToStr(Mes)+'/'+IntToStr(Ano) )
                   Except
                       Try
                           XResultado:=StrToDate(IntToStr(XDia-4)+'/'+IntToStr(Mes)+'/'+IntToStr(Ano) )
                       Except
                       End;
                   End;
               End;
           End;
       End;
		Result:=XResultado;       
	Except;
       Result:=XResultado; 
   End;
End;
//Alex: 21/11/2014 - Função para gerar parcelas de contas a receber
Function TFFaturaOrdemMensal.GeraParcelaCtasREceber: Boolean;
var
    I, PrimPar, Intervalo, QtdParcela: Integer;
    ValorProd, ValorServ: Real;
    XDataVenc,Vencimento:String;
    Ano, Mes, Dia: Word;
    XtesteMes:Integer;
Begin
	Try
       Result:=True;

       if EdDescricaoFormPag.Text = 'MENSAL' then
       begin
       	//Realiza Inserção de Valores
           XCOD_Parcela:=InserReg(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR');
           DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsInteger:=XCOD_Parcela;
           DMCONTA.TParcCR.FieldByName('COD_CTARECEBER').AsInteger:=XCODCTA;
           DMCONTA.TParcCR.FieldByName('NUMPARC').AsString:=EdNumero.Text+'/'+IntToStr(NumPeriodo);
           DMCONTA.TParcCR.FieldByName('NUMORDEM').AsString:=EdNumero.Text;
           DMCONTA.TParcCR.FieldByName('DTVENC').AsDateTime:=RetornaDtVencimento(EdDiaVencimento.Value, NumPeriodo, XDataNovoPeriodoFinal);
           DMCONTA.TParcCR.FieldByName('DTREF').AsString:=DMCONTA.TParcCR.FieldByName('DTVENC').AsString;

           //Edmar - 05/02/2015 - Se o valor da fatura for menor ou igual ao valor do adiantamento
           if EdValor.ValueNumeric <= XVALOR_ADIANTAMENTO then
           begin
               //lança o valor da conta com o valor integral
               DMCONTA.TParcCR.FieldByName('VALORPROD').Value:=EdValor.ValueNumeric;
               DMCONTA.TParcCR.FieldByName('VALOR').Value:=EdValor.ValueNumeric;
               //e fecha a parcela com o valor pago
               DMCONTA.TParcCR.FieldByName('FECH').AsString:='S';
               DMCONTA.TParcCR.FieldByName('VALORPG').Value:=EdValor.ValueNumeric;
               //ao final, caso o adiantamento ultrapasse o valor da conta
               //subtrai os dois pra tirar o restante do adiantamento na proxima parcela
               XVALOR_ADIANTAMENTO := XVALOR_ADIANTAMENTO - EdValor.ValueNumeric;
           end
           else begin
               //caso contrario, apenas subtrai o valor total no adiantamento e deixa a parcela em aberto
               DMCONTA.TParcCR.FieldByName('VALORPROD').Value:=EdValor.ValueNumeric - XVALOR_ADIANTAMENTO;
               DMCONTA.TParcCR.FieldByName('VALOR').Value:=EdValor.ValueNumeric - XVALOR_ADIANTAMENTO;
               DMCONTA.TParcCR.FieldByName('FECH').AsString:='N';
               //zera o adiantamento para não haver descontos indevidos
               XVALOR_ADIANTAMENTO := 0;
           end;

           DMCONTA.TParcCR.FieldByName('COBRANCA').AsString:=CBPagamento.Text;
           DMCONTA.TParcCR.FieldByName('HISTORICO').AsString:='Fat OS N. '+EdNumero.Text+' Período: '+DateToStr(XDataNovoPeriodoInicial)+' - '+DateToStr(XDataNovoPeriodoFinal);
           FMenu.Extenso.Numero:=FormatFloat('0.00', DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency);
           DMCONTA.TParcCR.FieldByName('VALEXT').AsString:=FMenu.Extenso.Extenso;
           DMCONTA.TParcCR.FieldByName('ESTRU').AsString:='1';
           DMCONTA.TParcCR.FieldByName('exporta').AsString := '0';
           DMCONTA.TParcCR.Post;
       end
       else begin
//			LancConta('ORDEM', xCodigoOrdem, DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, DMServ.TOrd.FieldByName('TOTPROD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, XCOD_CONTA, -1, -1, 'Fech. Ordem de Serviço '+DMServ.TOrd.FieldByName('NUMERO').AsString, XCodFormPag, DMServ.TOrd.FieldByName('NUMERO').AsString, 'O', Date(), 0, EdDtFech.Text, DMServ.TOrd.FieldByName('numfiscal').AsString);
                  
       	{
       	FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(XCodFormPag), '');

           //Intervalo para primeira parcela
           PrimPar := DMFINANC.TFormPag.FieldByName('PrimParcela').AsInteger;
           //Intervalo entre as demais parcelas
           Intervalo := DMFinanc.TFormPag.FieldByName('Intervalo').AsInteger;
           //Quantidade de Parcelas a serem Geradas
           QtdParcela := DMFinanc.TFormPag.FieldByName('QuantParcela').AsInteger;

    		ValorProd := EdValor.ValueNumeric / QtdParcela;           

           DecodeDate(Date, Ano, Mes, Dia);

           //Edmar - 18/02/2015 - Gera a primeira parcela
           Mes := Mes + 1;
           if Mes = 13 then
           begin
           	Mes := 1;
               Ano := Ano + 1;
           end;
           
           GeraParcela(EdNumero.Text+'/'+IntToStr(NumPeriodo)+'-1/'+IntToStr(QtdParcela), EdDiaVencimento.Text+'/'+IntToStr(Mes)+'/'+IntToStr(Ano), ValorProd , 0, 0, CBPagamento.Text, 0, DateToStr(Date), StrToInt(EdNumero.Text));

       	//gera as demais parcelas
           Vencimento:=DateToStr(StrToDate(EdDiaVencimento.Text+'/'+IntToStr(Mes)+'/'+IntToStr(Ano))+PrimPar);

    		for I:=2 to QtdParcela do
    		begin
           	Mes := Mes+1;
               Vencimento := EdDiaVencimento.Text+'/'+IntToStr(Mes)+'/'+IntToStr(Ano);
               if mes=13 then
               begin
               	Mes:=1;
                   Ano:=Ano+1;
               end;
           	XDATAREF:=DateToStr(StrToDate(Vencimento)-intervalo); 
           	GeraParcela(EdNumero.Text+'/'+IntToStr(NumPeriodo)+'-'+IntToStr(I)+'/'+IntToStr(QtdParcela), Vencimento, ValorProd , 0, 0, CBPagamento.Text, 0, XDATAREF, StrToInt(EdNumero.Text));
	    	end;
       	}
       end;
   except
       Result:=False;
   End;
End;

//Alex: 21/11/2014 - Função para Fechar e Faturar o Período
	Function TFFaturaOrdemMensal.FaturaPeriodo: Boolean;
Begin
	Try
   	Result:=True;
       XFlag:=True;
       XVALOR_ADIANTAMENTO := 0;
       For NumPeriodo:=1 to EdNumeroMeses.Value do
       Begin
       	//Edmar - 05/02/2015 - Busca se existe uma fatura para essa ordem de serviço
       	if not FiltraTabela(DMServ.Alx, 'PERIODOFATURA', 'COD_ORDEM', IntToStr(XCodOrdem), '') then
			begin
           	//se não existir uma fatura, busca o valor do adiantamento da ordem
              	FiltraTabela(DMServ.Alx, 'ORDEM', 'COD_ORDEM', IntToStr(XCodOrdem), '');
               XVALOR_ADIANTAMENTO := DMServ.Alx.FieldByName('VLRADIANTAMENTO').AsCurrency;
           end;

       	If NumPeriodo=1 Then
				XDataNovoPeriodoInicial:=XDataUltimoPeriodo
           Else
				XDataNovoPeriodoInicial:= (IncMonth(XDataUltimoPeriodo, NumPeriodo-1));
               
           XDataNovoPeriodoFinal:=(IncMonth(XDataUltimoPeriodo, NumPeriodo)); 
       	//Alex 21/11/2014: Busca a proxima Pk de fatura atravez do generator
       	Try
           	MDO.Transac.CommitRetaining;
           	XNumLinhaErro:=XNumLinhaErro+' 77';
           	MDO.Query.close;
           	MDO.Query.SQL.Clear;
           	MDO.Query.SQL.Add(' select gen_id(GEN_PERIODOFATURA_ID, 0) as COD_PERIODOFATURA from rdb$database ');
           	MDO.Query.Open;
           	XCodFatura:=MDO.Query.FieldByName('COD_PERIODOFATURA').AsInteger+1;
       	Except
       		XFlag:=False;
       	End;
           
			If XFlag=True
       	Then Begin
           	//Alex: 21/11/2014 - Grava Registro de Fatura
           	Try
                   MDO.Query.Close;
                   MDO.Query.SQL.Clear;
                   MDO.Query.SQL.Add('  insert into periodofatura(COD_ORDEM, COD_USUARIO, DTFATURA, DTINI, DTFIM) ');
                   MDO.Query.SQL.Add('               values(:COD_ORDEM, :COD_USUARIO, :DTFATURA, :DTINI, :DTFIM)  ');
                   MDO.Query.ParamByName('COD_ORDEM').AsInteger:=XCodOrdem;
                   MDO.Query.ParamByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
                   MDO.Query.ParamByName('DTFATURA').AsDateTime:=Date();
                   MDO.Query.ParamByName('DTINI').AsDateTime:=XDataNovoPeriodoInicial;
                   MDO.Query.ParamByName('DTFIM').AsDateTime:=XDataNovoPeriodoFinal;
                   MDO.Query.ExecSQL;
           	Except
	            	XNumLinhaErro:=XNumLinhaErro+' 110';
           		XFlag:=False;
           	End;

               if not GeraCtasREceber then
               begin
               	MDO.Transac.RollbackRetaining;
               	DMFINANC.Transaction.RollbackRetaining;
               	DMCONTA.IBT.CommitRetaining;
               	MessageDlg('O processo foi abortado!', mtWarning, [mbOK], 0);
                   Exit;
               end;
               
               GeraParcelaCtasREceber;
       	End;                                                                            
       	If XFlag=False
       	Then Begin
           	MDO.Transac.RollbackRetaining;
           	DMFINANC.Transaction.RollbackRetaining;
               DMCONTA.IBT.CommitRetaining;
           	MessageDlg('Não foi possível efetuar fatura da OS. Entre em contato com o suporte e informe o erro abaixo:'+#13+XNumLinhaErro, mtWarning, [mbOK], 0);
       	End
       	Else Begin
       		Try
               	XNumLinhaErro:='';
               	XNumLinhaErro:=' 123';
               	MDO.Transac.CommitRetaining;
               	XNumLinhaErro:=' 125';
               	DMFINANC.Transaction.CommitRetaining;
					DMCONTA.IBT.CommitRetaining;
           	Except
               	MDO.Transac.RollbackRetaining;
               	DMFINANC.Transaction.RollbackRetaining;
                   DMCONTA.IBT.RollbackRetaining;
               	MessageDlg('Não foi possível efetuar fatura da OS. Entre em contato com o suporte e informe o erro abaixo:'+#13+XNumLinhaErro, mtWarning, [mbOK], 0);
           	End;
       	End;
       	If XFlag=False Then
           	Result:=False;
       End;
	Except
       Result:=False;
   	MessageDlg('Erro indefinido ao faturar OS!', mtWarning, [mbOK], 0);
   End;
End;
//Alex: 19/11/2014 - Função para preencher os dados da OS selecionada
Function TFFaturaOrdemMensal.EscreveDadosOS: Boolean;
var
Ano, Mes, Dia: Word;
Begin
	Try
       PLimpaOSSelecionada.Visible:=false;
       PLimpaOSSelecionada.SendToBack;
       XCodOrdem:=DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
       XCodCliente:=DMServ.WOrdemDesp.FieldByName('cod_cliente').AsInteger;
       EdNumero.Text := DMServ.WOrdemDesp.FieldByName('NUMERO').AsString;
       EdNome.Text := DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString;
       EdData.Text := DMServ.WOrdemDesp.FieldByName('DTABERT').AsString;
       EdValor.ValueNumeric := DMServ.WOrdemDesp.FieldByName('TOTAL').AsCurrency;
       EdVlrFinal.ValueNumeric:=EdNumeroMeses.Value*EdValor.ValueNumeric;
		DecodeDate(XDataUltimoPeriodo, Ano, Mes, Dia);
       EdDiaVencimento.Value:=Dia;
       FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO', 'MENSAL', '');
   Except
   End
End;

//Alex: 19/11/2014 - Função para pesquisar a ultima fatura encontrada
Function TFFaturaOrdemMensal.BuscaPeriodoUltimaFatura: Boolean;
Begin
	Try
       Result:=True;
       DMServ.IBT.CommitRetaining;
       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add(' select * from periodofatura where periodofatura.cod_ordem=:Codigo order by periodofatura.dtfim desc');
       DMServ.TAlx1.ParamByName('Codigo').AsInteger:=DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
       DMServ.TAlx1.Open;
       
       If DMServ.TAlx1.IsEmpty
       Then Begin
			//Como não temos periodos, o último período fica sendo a data de fechamento da OS
           XDataUltimoPeriodo:=DMServ.WOrdemDesp.FieldByName('dtabert').AsDateTime;
           XDataPrimeiroPeriodo:=DMServ.WOrdemDesp.FieldByName('dtabert').AsDateTime;
       End
       Else Begin
			//Como não temos periodos, o último período fica sendo a data de fechamento da OS
           XDataUltimoPeriodo:=DMServ.TAlx1.FieldByName('DTFIM').AsDateTime;
           XDataPrimeiroPeriodo:=DMServ.TAlx1.FieldByName('DTINI').AsDateTime;
       End;
       
       EdUltimoPeriodoApurado.Text:=DateToStr(XDataPrimeiroPeriodo)+' - '+DateToStr(XDataUltimoPeriodo);
       EdPeriodoInicialNovaFatura.Text:=DateToStr(XDataUltimoPeriodo);
       EdPeriodoFinalNovaFatura.Text:=DateToStr(IncMonth(XDataUltimoPeriodo, EdNumeroMeses.Value));
   Except
   	EdUltimoPeriodoApurado.Text:='Fora do Intervalo';
       Result:=False;
   End;

End;

procedure TFFaturaOrdemMensal.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Fatura Ordens';  
  	xCodFormPag := -1;
   XNumLinhaErro:='';
	EdDtFiltroAFaturar.Text:=DateToStr(Date());
   EdNumeroMeses.Height := 25;
   //Filtra OS
   dmserv.WOrdemDesp.Close;
   DMServ.WOrdemDesp.SQL.Clear;
   DMServ.WOrdemDesp.SQL.Add(' select VWORDEM.cod_cliente, equipamento.descricao AS OBRA, VWORDEM.COD_VENDEDOR, formpag.descricao as FORMPAG, VWORDEM.status, VWORDEM.cod_ordem, ');
   DMServ.WOrdemDesp.SQL.Add(' VWORDEM.NUMERO, VWORDEM.numero, VWORDEM.cliente, VWORDEM.dtabert, VWORDEM.dtfech, VWORDEM.total, ORDEM.LOCALAT ');
   DMServ.WOrdemDesp.SQL.Add(' from vwordem ');
   DMServ.WOrdemDesp.SQL.Add(' left join ordem on vwordem.cod_ordem = ordem.cod_ordem ');
   DMServ.WOrdemDesp.SQL.Add(' Left join vwcliente on vwordem.cod_cliente = vwcliente.cod_cliente ');
   DMServ.WOrdemDesp.SQL.Add(' left join cliente on vwordem.cod_vendedor = cliente.cod_cliente ');
   DMServ.WOrdemDesp.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
   DMServ.WOrdemDesp.SQL.Add(' left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
   DMServ.WOrdemDesp.SQL.Add(' Left join equipamento ON ordem.cod_equipamento = equipamento.cod_equipamento ');
   DMServ.WOrdemDesp.SQL.Add(' Where vwordem.cod_ordem = :codigo ');
   DMServ.WOrdemDesp.ParamByName('codigo').AsInteger:=FMenu.XCodSlave;
   DMServ.WOrdemDesp.SQL.text;
   DMServ.WOrdemDesp.Open;
   
   If (DMServ.WOrdemDesp.FieldByName('FORMPAG').AsString <> 'MENSAL') AND (DMServ.WOrdemDesp.FieldByName('LOCALAT').AsString='SIM') then
   begin
   	Mensagem(' I N F O R M A Ç Ã O ', 'A ordem número '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+' não pode mais ser faturada.', '', 1, 1, False, 'A');
   	Exit;
   end;
   
   //If (DMServ.WOrdemDesp.FieldByName('FORMPAG').AsString='MENSAL') AND (DMServ.WOrdemDesp.FieldByName('status').AsString='FECHADO')
   //Then Begin
   	If BuscaPeriodoUltimaFatura=False then
   		Exit;   
       EscreveDadosOS;
   	PcFaturas.ActivePageIndex:=0;
   	EdNumeroMeses.SetFocus;
   	If BuscaPeriodoUltimaFatura=False then
   		Exit;
   {End
   Else Begin
       PLimpaOSSelecionada.Visible:=True;
       PLimpaOSSelecionada.BringToFront;
   	PcFaturas.ActivePageIndex:=3;
   End;
   PcFaturas.OnChange(Sender);
   }
   //Edmar - 18/02/2015 - Já deixa pré selecionado a forma de pagamento mensal
   if FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO', 'MENSAL', '') then
   begin
       xCodFormPag := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       EDCodigoFormPag.Text := DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
       EdDescricaoFormPag.Text := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
   end;

   if FMenu.XTipoRel = 'CANCFAT' then
   begin
   	PcFaturas.ActivePage := TabSheet2;
		FiltraPeriodosAbertos;        
   end;
end;

procedure TFFaturaOrdemMensal.EdNumeroMesesChange(Sender: TObject);
begin
  inherited;
  	If EdNumeroMeses.Text='' Then
       EdNumeroMeses.Text:='1';
  	If (EdNumeroMeses.Value>=1) and (EdNumeroMeses.Value<=12)
   Then Begin
       EdPeriodoFinalNovaFatura.Text:=DateToStr(IncMonth(XDataUltimoPeriodo, EdNumeroMeses.Value));
		EdVlrFinal.ValueNumeric:=EdNumeroMeses.Value*EdValor.ValueNumeric
   End
   Else Begin
       EdNumeroMeses.Value:=1;
   End;
end;

procedure TFFaturaOrdemMensal.FrmFormaPagamentoBTNOPENClick(
  Sender: TObject);
begin
//  inherited;
end;

procedure TFFaturaOrdemMensal.BitBtn1Click(Sender: TObject);
begin
  inherited;
	if FMenu.XTipoRel = 'CANCFAT' then
   begin
   	MessageDlg('Sessão destinada apenas para cancelamento da fatura. Feche este tela e clique no botão "Faturar" novamente.', mtWarning, [mbOK], 0);
       Exit;
   end;

   if EdValor.ValueNumeric <= 0 then
   begin
   	Mensagem(' A T E N Ç Ã O ', 'Não é permitido faturar O.S com valor menor ou igual a zero.', '', 1, 1, False, 'A');

		Exit;          	
   end;
   
   If Mensagem('   A T E N Ç Ã O   ','Faturar a OS para os Períodos de '+EdPeriodoInicialNovaFatura.Text+' - '+EdPeriodoFinalNovaFatura.Text+' ?','',2,3,false,'A')=2
   Then Begin
   	//Edmar - 20/01/2015 - Verifica se a ordem é mensal ou normal
       //caso seja mensal, usa a função existente
       //caso seja qualquer outra forma de pagamento, usar o metodo padrão de fechamento de ordem de serviço
       if DMServ.WOrdemDesp.FieldByName('FORMPAG').AsString = 'MENSAL' then
       begin
           If FaturaPeriodo AND FMenu.LancAutConta then
           begin
               MessageDlg('A Fatura ocorreu com sucesso!', mtInformation, [mbOK], 0);
               //Edmar - 20/01/2015 - Se retornou true significa que o periodo foi faturado com sucesso
               //Nesse Caso, atualiza LOCALAT da OS para SIM, que sinaliza que a ordem foi faturada
               if not AtualizaFaturaOS(DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger) then
               	Mensagem(' A T E N Ç Ã O ', 'Não foi possível alterar o status da ordem de serviço Nº'+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+' para faturado. Informar a situação ao suporte.', '', 1, 1, False, 'A');
			end
			else
               MessageDlg('A OS não pode ser faturada!', mtWarning, [mbOK], 0);

           Close;
       end
       else begin
       	if DMServ.WOrdemDesp.FieldByName('LOCALAT').AsString = 'Sim' then
           begin
           	Mensagem(' A T E N Ç Ã O ', 'A O.S. Nº'+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+' já foi faturada.', '', 1, 1, False, 'A');
               
           	Exit;
           end;

           PreparaFechamentoOrd;
       end;
   End;
end;

procedure TFFaturaOrdemMensal.PcFaturasChange(Sender: TObject);
begin
  inherited;
	If PcFaturas.ActivePageIndex=1
   Then Begin
       FiltraPeriodosAbertos;
   End;
	If PcFaturas.ActivePageIndex=2
   Then Begin
       FiltraPeriodosFechados;
   End;
	If PcFaturas.ActivePageIndex=3
   Then Begin
       FiltraOSaFaturar;
   End;
end;

procedure TFFaturaOrdemMensal.EdDtFiltroAFaturarKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
       FiltraOSaFaturar;
   End;
end;

procedure TFFaturaOrdemMensal.DbgaFaturarDblClick(Sender: TObject);
begin
  inherited;
	//filtramos a view e chamamos o activate do formulário para pegar a fatura
   FMenu.XCodSlave:=DMServ.TAlx1.FieldByName('COD_ORDEM').AsInteger;
   //Filtra OS
   dmserv.WOrdemDesp.Close;
   DMServ.WOrdemDesp.SQL.Clear;
   DMServ.WOrdemDesp.SQL.Add('   select vwordem.cod_cliente, equipamento.descricao AS OBRA, vwordem.COD_VENDEDOR, formpag.descricao as FORMPAG, vwordem.status, vwordem.cod_ordem, ');
   DMServ.WOrdemDesp.SQL.Add('      vwordem.numero, vwordem.cliente, vwordem.dtabert, vwordem.dtfech, vwordem.total ');
   DMServ.WOrdemDesp.SQL.Add('       from vwordem ');
   DMServ.WOrdemDesp.SQL.Add('       left join ordem on vwordem.cod_ordem = ordem.cod_ordem ');
   DMServ.WOrdemDesp.SQL.Add('       Left join vwcliente on vwordem.cod_cliente = vwcliente.cod_cliente ');
   DMServ.WOrdemDesp.SQL.Add('       left join cliente on vwordem.cod_vendedor = cliente.cod_cliente ');
   DMServ.WOrdemDesp.SQL.Add('       left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
   DMServ.WOrdemDesp.SQL.Add('       left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
   DMServ.WOrdemDesp.SQL.Add('       left join equipamento ON ordem.cod_equipamento = equipamento.cod_equipamento ');
   DMServ.WOrdemDesp.SQL.Add(' Where vwordem.cod_ordem = :codigo ');
   DMServ.WOrdemDesp.ParamByName('codigo').AsInteger:=FMenu.XCodSlave;
   DMServ.WOrdemDesp.SQL.text;
   DMServ.WOrdemDesp.Open;

   If (DMServ.WOrdemDesp.FieldByName('FORMPAG').AsString='MENSAL')
   Then Begin
   	PcFaturas.ActivePageIndex:=0;
   	EdNumeroMeses.SetFocus;
   	If BuscaPeriodoUltimaFatura=False then
   		Exit;
       EscreveDadosOS;
   End
   Else Begin
       PLimpaOSSelecionada.Visible:=True;
       PLimpaOSSelecionada.BringToFront;
   	PcFaturas.ActivePageIndex:=3;
   End;
   PcFaturas.OnChange(Sender);
end;

function TFFaturaOrdemMensal.AtualizaFaturaOS(
  xCodigoOrdem: Integer): Boolean;
begin
	try
   	//Atualiza o campo LOCALAT de ordem para SIM
       //sinalizando que a ordem foi faturada com sucesso
   	MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' UPDATE ORDEM SET ORDEM.LOCALAT = ''Sim'' WHERE ORDEM.COD_ORDEM = :ORDEM ');
       MDO.Query.ParamByName('ORDEM').AsInteger := xCodigoOrdem;
       MDO.Query.ExecSQL;

       MDO.Transac.CommitRetaining;
       Result := True;
   except
       MDO.Transac.RollbackRetaining;
       Result := False;
   end;
end;

function TFFaturaOrdemMensal.FechaOrd(xCodigoOrdem: Integer): Boolean;
Var
	 ATUFINANC: Boolean; //controle financeiro foram efetivados
   XVLRDESP:Real;//O VLR DAS DESPESAS É DIV POR DOIS ENTRE PROD E SERV.
Begin
	//inicializa as variaveis como true, caso encontre erro na passagem da função eslas passaram a false
	FechaOrd:=True;
   ATUFINANC:=True;
	// Tenta filtrar a ordem
  	if FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '') = True then
   begin
		XVLRDESP:=DMServ.TOrd.FIELDBYNAME('TOTDESP').AsCurrency/2;
       //Filtra loja
       FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

       //***********************************************
       // INICIO DE PROCESSO PARA CONTROLE FINANCEIRO **
       //***********************************************
       //Filtra cliente
       FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMServ.TOrd.FIELDBYNAME('COD_CLIENTE').AsString, '');

       //Filtra Forma de Pagamento
       If FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(XCodFormPag), '') = True then
       begin// Encontrou forma de pagamento, continua processo
       	//verifica moeda padrão para lançamento
         	if DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA' then
         	begin// caso o pedido tenha sido feito à vista deve-se lançar o valor direto no caixa
           	if CBPagamento2.Text='Cheque' then
             	begin//LANÇAMENTO EM CONTROLE DE CHEQUE
               	If LancChEnt(XCOD_CONTA, -1, 'Fech. Ordem'+DMServ.TOrd.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, Date(), '', DMServ.TOrd.FieldByName('TOTPROD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, '', '', 0, '', '', 'ORDEM', IntToStr(XCodOrdem))=True
                 	Then  ////informa que a atualização do financeiro foi efetivada
                   	ATUFINANC:=True
                 	Else//informa que a finalização do financeiro falhou
                   	ATUFINANC:=False;
             	end;

             	if CBPagamento2.Text = 'Cartão' then
             	begin
               	If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCOD_CONTA,'(Produtos) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMServ.TOrd.FieldByName('TOTPROD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, 'TOTPROD', xCodigoOrdem, 'ORDSERV',StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE then
                   	//informa que a atualização do financeiro foi efetivada
                   	ATUFINANC:=True
                 	else begin//informa que a finalização do financeiro falhou
                   	ATUFINANC:=False;
                   	Exit;
                 	end;

                 	if LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCOD_CONTA,'(Serviços) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, 'TOTSERV', xCodigoOrdem, 'ORDSERV',StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE then
                     	//informa que a atualização do financeiro foi efetivada
                   	ATUFINANC:=True
                 	else
                   	//informa que a finalização do financeiro falhou
                     	ATUFINANC:=False;
               End;

             	if (CBPagamento2.Text <> 'Cheque') and (CBPagamento2.Text <> 'Cartão') then
             	begin
               	//REALIZA LANÇAMENTOS EM CAIXA REFERENTE A PRODUTOS
                 	if LanCaixa(-1, DateToStr(Date()), XCOD_CONTA, '(Produtos) Fech. Ordem Serv. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString,  DMServ.TOrd.FieldByName('TOTPROD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, 'ORDSERV', xCodigoOrdem, CBPagamento.Text, 'E', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1')=True then
                   	//informa que a atualização do financeiro foi efetivada
                     	ATUFINANC:=True
                 	else//informa que a finalização do financeiro falhou
                   	ATUFINANC:=False;

	                //REALIZA LANÇAMENTOS EM CAIXA REFERENTE A SERVIÇOS
                 	if LanCaixa(-1, DateToStr(Date()), XCOD_CONTA, '(Serviços) Fech. Ordem Serv. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString,  DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, 'ORDSERV', xCodigoOrdem, CBPagamento.Text, 'E', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1')=True then
                   	//informa que a atualização do financeiro foi efetivada
                     	ATUFINANC:=True
                 	else//informa que a finalização do financeiro falhou
                   	ATUFINANC:=False;
             	end;
           end
           else begin//Não é à vista
           	if LancConta('ORDEM', xCodigoOrdem, DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, DMServ.TOrd.FieldByName('TOTPROD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, XCOD_CONTA, -1, -1, 'Fech. Ordem de Serviço '+DMServ.TOrd.FieldByName('NUMERO').AsString, XCodFormPag, DMServ.TOrd.FieldByName('NUMERO').AsString, 'O', Date(), 0, EdDtFech.Text, DMServ.TOrd.FieldByName('numfiscal').AsString)=True then
               	ATUFINANC:=True
               else
               	ATUFINANC:=False;
           End;
       end
       else//não achou a forma de pagamento
         ATUFINANC := False;

			//Verifica se todas as atualizações foram possíveis
       if ATUFINANC=True then
       begin //então tenta-se confirmar operação
       	Try
           	//FECHA PEDIDO
               DMServ.TOrd.Edit;
               //DMServ.TOrd.FieldByName('STATUS').AsString:='FECHADO';
               DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger:=XCodFormPag;
               DMServ.TOrd.FieldByName('DTENTREGA').AsString:=DBDATAENTREGA.Text;
               DMServ.TOrd.FieldByName('TIPOPAG').AsString:=CBPagamento.Text;
               //DMServ.TOrd.FieldByName('DTFECH').AsString:=EdDtFech.Text;
               DMServ.TOrd.FieldByName('TIPOPAG').AsString:=CBPagamento2.Text;
               DMServ.TOrd.FieldByName('HRENTREGA').AsString:=DBHORAENTREGA.Text;
               DMServ.TOrd.FieldByName('COMISSAO').AsCurrency:=0;
               DMServ.TOrd.Post;
               DMServ.TOrd.ApplyUpdates;

               //EFETUA TRANSAÇÕES
               DMServ.IBT.CommitRetaining;
               DMBANCO.IBT.CommitRetaining;
               DMCAIXA.IBT.CommitRetaining;
               MDO.Transac.CommitRetaining;

               Try
                   MdoQueryClear;
                   MDO.Query.SQL.Add(' Update itprodord set itprodord.qtdret=-5000 where (itprodord.cod_ordem=:codigo) ');
                   MDO.Query.ParamByName('codigo').AsString := IntToStr(xCodigoOrdem);
                   MDO.Query.ExecSQL;
                   MDO.Transac.CommitRetaining;
               Except
                   MDO.Transac.RollbackRetaining;
               End;
               
				Mensagem('INFORMAÇÃO AO USUÁRIO', 'ORDEM DE SERVIÇO FECHADA COM SUCESSO!', '', 1, 1, false, 'a');
           Except
				Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao fechar a ordem de serviço, os dados serão mantidos e a ordem aberto.', 'Ocorreram problemas ao gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');

				DMCAIXA.IBT.RollbackRetaining;
				DMServ.IBT.RollbackRetaining;
               DMBANCO.IBT.RollbackRetaining;
               MDO.Transac.RollbackRetaining;
           End;
       End
       Else Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao fechar a ordem de serviço, os dados serão mantidos e a ordem aberto.', 'Ocorreram problemas ao gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
           DMCAIXA.IBT.RollbackRetaining;
			DMServ.IBT.RollbackRetaining;
       End;
   End
   Else Begin //else de filtragem de pedido
       FechaOrd:=false;
   End;
end;

function TFFaturaOrdemMensal.PreparaFechamentoOrd: Boolean;
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('FECHORD', 'M')=False Then
   	Exit;

   //repassando valor do cidgo da ordem para variavel
   XCodOrdem := DMServ.WOrdemDesp.FieldByname('cod_ordem').AsInteger;

   // BUSCANDO DADOS DA ORDEM
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCodOrdem),'');

   // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
   If DMServ.TOrd.FieldByName('EDIT').AsString = '1' then
   begin
       Mensagem('    A T E N Ç Ã O   ','A ORDEM ESTÁ SENDO USADA NO MOMENTO.'+#13+'Use Ctrl+D para destravar','',1,1,false,'I');
       Exit;
	end;

   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   If DMServ.WOrdemDesp.IsEmpty then
   begin
       Mensagem('A T E N Ç Ã O', 'Não existe nenhuma ordem a ser fechada!', '', 1, 1, False, 'a');
       Exit;
	end;

   If DMServ.WOrdemDesp.FieldByName('TOTAL').AsCurrency = 0 then
   begin
       Mensagem('OPÇÃO BLOQUEADA', 'Esta ordem não contém produto ou serviços. Por isso não pode ser fechada!', '', 1, 1, False, 'i');
       Exit;
	end;

   if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja Realmente fechar a ordem de serviço '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+'?', '', 2, 3, False, 'C')=2 then
   begin
       // BUSCANDO DADOS DA ORDEM
       FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM', DMServ.WOrdemDesp.FieldByname('cod_ordem').AsString,'');

       // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
       If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
       Then Begin
           Mensagem('    A T E N Ç Ã O   ','A ordem está sendo usada no momento.'+#13+'Use Ctrl+D para destravar','',1,1,false,'I');
           Exit;
       End
       Else Begin
           DMServ.TOrd.Edit;
           DMServ.TOrd.FieldByName('EDIT').AsString := '1';
           DMServ.TOrd.Post;
           DMServ.IBT.CommitRetaining;
       End;

       {
       CBGeraFinanceiro.Checked:=False;
       CBGeraFinanceiro.Visible:=False;
       }
       CBPagamento2.Text := 'Carteira';
       //LIMPA VALORES ANTIGOS
       FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '');
		{
       If ControlAccess('GERAFINANC', '')=True Then
           CBGeraFinanceiro.Visible:=true;

       //FORMA DE PAGAMENTO
       XCodCliente:=DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger;
       }
       If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '')=True
       Then Begin
           XCodFormPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
           FrmFormPag.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
           FrmFormPag.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
       End
       Else Begin
       	XCodFormPag:=-1;
           FrmFormPag.EDCodigo.Text:='';
           FrmFormPag.EdDescricao.Text:='';
       End;

       {
       //Paulo 15/02/2012: mostra o checkbox para imprimir o recibo somente se for à vista
       if FrmFormPag.EdDescricao.Text = 'À VISTA' then
           CBImpRecibo.Visible:=true
       else
           CBImpRecibo.Visible:=false;
       }
       XCOD_CONTA:=-1;
       FrmContaServ.EdDescricao.Text:='';
       FrmContaServ.EDCodigo.Text:='';
       DBDATAENTREGA.Clear;
       DBDATAENTREGA.Text:=DateTostr(Date());
       DBHORAENTREGA.Text:=TimeTostr(Time());
       If DMServ.TOrd.FieldByName('DTFECH').AsString<>'' Then
           EdDtFech.Text:=DMServ.TOrd.FieldByName('DTFECH').AsString
       Else
           EdDtFech.Text:=DateToStr(Date());
       //BUSCA CONTAS PADRÕES
       If DMServ.WOrdemDesp.FieldByName('STATUS').AsString='FORMAPAG'
       Then Begin//Busca contas para À VISTA
           //PRODUTO
           If DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString<>''
           Then Begin//se existir uma conta padrao configurada
               XCOD_CONTA:=DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
               FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCOD_CONTA), '');
               FrmContaServ.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
               FrmContaServ.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
           End
           Else Begin
               XCOD_CONTA:=-1;
               FrmContaServ.EDCodigo.Text:='';
               FrmContaServ.EdDescricao.Text:='';
           End;
       End
       Else Begin//Busca conta para À Prazo
           //PRODUTO
           If DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsString<>''
           Then Begin//se existir uma conta padrao configurada
               XCOD_CONTA:=DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger;
               FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCod_Conta), '');
               FrmContaServ.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
               FrmContaServ.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
           End
           Else Begin
               XCOD_CONTA:=-1;
               FrmContaServ.EDCodigo.Text:='';
               FrmContaServ.EdDescricao.Text:='';
           End;
       End;
       PFinanceiro.Visible:=True;
       PFinanceiro.Enabled:=True;
       PFinanceiro.BringToFront;
   End;
end;

procedure TFFaturaOrdemMensal.BtnMoedaOKClick(Sender: TObject);
var
   XCodPedidoGerador :Integer; // - 16/03/2009: guarda codigo do pedido
   XFlag : Boolean; // - 13/03/2009: verifica se deve imprimir NF depois do cupom conforme configurado em caixa
   XNumAuxECF:String; // - 16/03/2009: armazena numero auxiliar cupom
begin
  inherited;
   //valida quanto a forma de pagamento
	If CBPagamento2.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe se o pagamento será feito em carteira ou cheque!', '', 1, 1, False, 'i');
       CBPagamento.SetFocus;
       Exit;
   End;

   //valida quanto a data de entrega
	If DBDataEntrega.Text='  /  /    '
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe a data de entrega do equipamento/Veículo ao cliente!', '', 1, 1, False, 'i');
       DBDataEntrega.SetFocus;
       Exit;
   End;

   //valida quanto a hora de entrega
	If DBHoraEntrega.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe a hora de entrega do equipamento/Veículo ao cliente!', '', 1, 1, False, 'i');
       DBHoraEntrega.SetFocus;
       Exit;
   End;

   //valida quanto a Conta
	If XCOD_CONTA = -1
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma conta para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmContaServ.EDCodigo.SetFocus;
       Exit;
   End;

   //Valida Quanto a conta
   If Not FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', '', '', 'Where (COD_FILIAL='+FMenu.LCODEMPRESA.Caption+') And (CLASSIFICACAO='+FrmContaServ.EDCodigo.Text+')')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma conta válida para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmContaServ.EDCodigo.SetFocus;
       Exit;
   End;

   //valida quanto a forma de pagamento
	If XCodFormPag=-1
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma forma de pagamento para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmFormPag.EDCodigo.SetFocus;
       Exit;
   End;

   XCodPedidoGerador := DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsInteger;
	XCodOrdem:=DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsInteger;

   XFlag := True; // - 13/03/2009: deixar como true caso não for ECF poderá ser emitido NF igual

   PFinanceiro.Visible:=False;
   // BUSCANDO DADOS DA ORDEM
   DMServ.TOrd.Close;
   DMServ.TOrd.Open;
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString,'');

   // EDITANDO ORDEM DE SERVICO PARA LIBERAR SEU USO CASO SEJA NECESSARIO
   DMServ.TOrd.Edit;
   DMServ.TOrd.FieldByName('EDIT').AsString := '0';
   DMServ.TOrd.Post;
   DMServ.IBT.CommitRetaining;

   if FechaOrd(DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsInteger) then
   begin
       AtualizaFaturaOS(XCodOrdem);
   	Close;
   end;

  	{
   //Paulo 15/02/2012: Para imprimir recibo caso for a vista
   if CBImpRecibo.Checked = true then
      ImpRecibo(XCodOrdem);
   }
end;

procedure TFFaturaOrdemMensal.BtnMoedaCancelarClick(Sender: TObject);
begin
  inherited;
  PFinanceiro.Visible := False;
  
  // BUSCANDO DADOS DA ORDEM
  FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString, '');

  // EDITANDO ORDEM DE SERVICO PARA LIBERAR SEU USO CASO SEJA NECESSARIO
  DMServ.TOrd.Edit;
  DMServ.TOrd.FieldByName('EDIT').AsString := '0';
  DMServ.TOrd.Post;
  DMServ.IBT.CommitRetaining;
end;

procedure TFFaturaOrdemMensal.FrmFormPagBTNOPENClick(Sender: TObject);
begin
  inherited;
   If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
		XCodFormPag:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       FrmFormPag.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
       FrmFormPag.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   End;
end;

procedure TFFaturaOrdemMensal.FrmFormPagBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmFormPag.BTNMINUSClick(Sender);
end;

procedure TFFaturaOrdemMensal.FrmContaServBTNOPENClick(Sender: TObject);
begin
  inherited;
  FrmContaServ.BTNOPENClick(Sender);
end;

procedure TFFaturaOrdemMensal.FrmContaServBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmContaServ.BTNMINUSClick(Sender);
end;

procedure TFFaturaOrdemMensal.btnCancelaFaturaClick(Sender: TObject);
var
	XCOD_CTAREC, XCOD_PARC, XCOD_FAT: Integer;
begin
  inherited;
  	MessageDlg('Ao cancelar uma fatura, todas as parcelas que estiverem ligadas a ela também serão removidas.', mtInformation, [mbOK], 0);
	if Mensagem('   A T E N Ç Ã O   ','Deseja realmente cancelar esta fatura?','',2,3,false,'A') = 2 then
   begin
   	//Edmar - 05/03/2015 - Joga a PK da fatura na variavel auxiliar
   	XCOD_FAT := DMFINANC.TAlx.FieldByName('COD_PERIODOFATURA').AsInteger;

   	try
           //Edmar - 05/03/2015 - remove a parcela da fatura
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' DELETE FROM PERIODOFATURA WHERE PERIODOFATURA.COD_PERIODOFATURA = :FATURA ');
           MDO.Query.ParamByName('FATURA').AsInteger := XCOD_FAT;
           MDO.Query.ExecSQL;

	        if CancelLanOrd(DMFINANC.TAlx.FieldByName('COD_CTARECEBER').AsString) then
           begin
           	//caso o cancelamento tenha ocorrido
               //atualiza a ordem para Não faturada caso não tenha nenhuma outra fatura da ordem
           	DMFINANC.TAlx.Close;
               DMFINANC.TAlx.SQL.Clear;
               DMFINANC.TAlx.SQL.Add(' UPDATE ORDEM SET ORDEM.LOCALAT = ''Não'' WHERE NOT EXISTS(SELECT * FROM PERIODOFATURA WHERE PERIODOFATURA.COD_ORDEM = :ORDEM) AND (ORDEM.COD_ORDEM = :ORDEM) ');
               DMFINANC.TAlx.ParamByName('ORDEM').AsInteger := XCodOrdem;
               DMFINANC.TAlx.ExecSQL;

               DMFINANC.Transaction.CommitRetaining;               
           	MDO.Transac.CommitRetaining;
           end;
           
			FiltraPeriodosAbertos;
       except
           MDO.Transac.RollbackRetaining;
			Mensagem(' A T E N Ç Ã O ', 'Não foi possível cancelar a fatura. Caso o problema continue, reinicie o sistema e tente novamente.', '', 1, 1, False, 'A');
       end;
   end;
end;

procedure TFFaturaOrdemMensal.EDCodigoFormPagKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	if Key = VK_RETURN then
   begin
   	//seleciona a forma de pagamento
       if FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_INTERNO', EDCodigoFormPag.Text, '') then
       begin
           XCodFormPag := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
           EDCodigoFormPag.Text := DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
           EdDescricaoFormPag.Text := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
       end
       else begin
           XCodFormPag := -1;
           EDCodigoFormPag.Text := '';
           EdDescricaoFormPag.Text := '';
       end;
       Exit;
   end;

   if Key = VK_ESCAPE then
   begin
   	XCodFormPag := -1;
     	EDCodigoFormPag.Text := '';
     	EdDescricaoFormPag.Text := '';
   end;
end;

procedure TFFaturaOrdemMensal.btnBuscaFormPagClick(Sender: TObject);
begin
  inherited;
	if AbrirForm(TFFormPag, FFormPag, 1) = 'Selected' then
   begin
       XCodFormPag := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       EDCodigoFormPag.Text := DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
       EdDescricaoFormPag.Text := DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   end
   else begin
   	XCodFormPag := -1;
       EDCodigoFormPag.Text := '';
       EdDescricaoFormPag.Text := '';
   end;
end;

function TFFaturaOrdemMensal.CancelLanOrd(xCodCtaReceber: String): Boolean;
var
	CodPedido, XCampo: String;
begin
	//Inicia resultado como falso
   Result:=True;

	//filtra loja para capturar as configurações
	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

	//filtra DADOS DA VIEW
   DMServ.WOrdemDesp.Close;
   DMServ.WOrdemDesp.SQL.Clear;
   DMServ.WOrdemDesp.SQL.Add(' SELECT VWORDEM.*, PERIODOFATURA.COD_PERIODOFATURA FROM VWORDEM ');
   DMServ.WOrdemDesp.SQL.Add(' LEFT JOIN PERIODOFATURA ON PERIODOFATURA.COD_ORDEM = VWORDEM.COD_ORDEM ');
   DMServ.WOrdemDesp.SQL.Add(' LEFT JOIN CTARECEBER ON CTARECEBER.COD_GERADOR = PERIODOFATURA.COD_PERIODOFATURA ');
   DMServ.WOrdemDesp.SQL.Add(' WHERE (CTARECEBER.TIPOGERADOR = ''FOS'') AND (CTARECEBER.COD_CTARECEBER = :COD_CTA) ');
   DMServ.WOrdemDesp.ParamByName('COD_CTA').AsString := xCodCtaReceber;
   DMServ.WOrdemDesp.Open;
   
   if DMServ.WOrdemDesp.IsEmpty then
   begin
   	MessageDlg('O Registro de ordem não foi encontrado', mtWarning, [mbOK], 0);
    	Exit;
	end;

   CodPedido := DMServ.WOrdemDesp.FieldByName('COD_PERIODOFATURA').AsString;

   FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '');

   if DMServ.TOrd.FieldByName('TIPOPAG').AsString = 'Cheque' then
   begin
   	MessageDlg('Pagamentos realizados em Cheque não podem ser cancelados.', mtWarning, [mbOK], 0);
    	Exit;
   end;

   FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '');

   //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em caixa
	if FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (COD_GERADOR = ' + #39 + DMServ.TOrd.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'ORDEM' + #39 + ') ') = True then
   begin
   	DMBANCO.TMovBanco.Delete;
       DMBANCO.TMovBanco.ApplyUpdates;
   end;

   //VERIRIFA SE A OS FOI À VISTA
   if DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA' then
   begin
   	//FILTRA LANÇAMENTO EM CAIXA E GERA OUTRO LANÇAMENTO DE ESTORNO EM CX
       DMCAIXA.TLanCaixa.Close;
       DMCAIXA.TLanCaixa.SQL.Clear;
       DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA WHERE (TIPOGERADOR='+#39+'ORDSERV'+#39+') AND (COD_GERADOR=:CODPEDIDO)');
   	DMCAIXA.TLanCaixa.ParamByName('CODPEDIDO').AsString:=CodPedido;
       DMCAIXA.TLanCaixa.Open;
       DMCAIXA.TLanCaixa.First;
       
       if not DMCAIXA.TLanCaixa.IsEmpty then
       begin//se foi encontrado algum lançamento em caixa deve se realizar outro de estorno
       	while not DMCAIXA.TLanCaixa.Eof do begin
           	if LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. O.S. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TOS', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.TOrd.FieldByName('NUMERO').AsString, Date(), '1')= True Then
               	MDO.Transac.CommitRetaining
               else
                   Result:=False;
                   
               DMCAIXA.TLanCaixa.Next;
           end;
       end;
       
       if DMServ.TOrd.FieldByName('TIPOPAG').AsString = 'Cartão' then
       begin
       	if FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.WOrdemDesp.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'TOTPROD' + #39 + ')') = True then
           begin
           	DMBANCO.TMovBanco.Delete;
               DMBANCO.TMovBanco.ApplyUpdates;
           end;

           if FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.WOrdemDesp.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'TOTSERV' + #39 + ')') = true then
           begin
           	DMBANCO.TMovBanco.Delete;
               DMBANCO.TMovBanco.ApplyUpdates;
           end;

           DMBANCO.IBT.CommitRetaining;
       end;
     end
     else begin
			//SE A VENDA NÃO FOI À VISTA
           //FILTRA CTA RECEBER PARA LOCALIZAR LANÇAMENTOS
           if FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', '', ' (TIPOGERADOR = '+#39+'FOS'+#39+') AND (COD_GERADOR='+CodPedido+')') = True then
           begin//se foi encontrado alguma conta
           	//FILTRA PARCELAS
				if FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_CTARECEBER', DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '') = True then
               begin//se foi encontrado alguma conta
               	//PARA CADA PARCELA VERIFICA SE ESTA FECHADA
                 	DMCONTA.TParcCR.First;

                 	while not DMCONTA.TParcCR.Eof do
                 	begin
                   	//deleta lançamentos de caixa caso seja forma de pagamento carteira.
                     	if DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Carteira' then
                       begin
                       	FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', '','(lancaixa.tipogerador='+#39+'CTAR'+#39+') AND (lancaixa.cod_gerador =' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39')');
                          	while not DMCAIXA.TLanCaixa.Eof
                          	do begin
                           	if LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. O.S. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TOS', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.TOrd.FieldByName('NUMERO').AsString, Date(), '1')= True Then
                                    MDO.Transac.CommitRetaining
                             	else
                               	Result:=False;
                             	DMCAIXA.TLanCaixa.Next;
                          	end;
                       end;

						//filtra movimentação bancaria da parcela em questão
                      	FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + IntToStr(DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsInteger) + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39')');
                       //filtra cheque da parcela
                       FiltraTabela(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC', '', '(COD_MOVBANCO = ' + #39 + IntToStr(DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsInteger) + #39 +')');

                       //variável utilizada para apos apagar a movimentação bancaria sejam apagados os cheques ligados as parcelas
                       XCampo:=DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;

                       //filtra os lançamentos de caixa ligados a parcela
                       FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', '','(lancaixa.tipogerador='+#39+'LCHR'+#39+') or (lancaixa.tipogerador='+#39+'DCHR'+#39+') or (lancaixa.tipogerador='+#39+'MCHR'+#39+') AND (lancaixa.cod_gerador =' + #39 + IntToStr(DMBANCO.TChequeRec.FieldByname('COD_CHEQUEREC').AsInteger) + #39')');

                       if FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (TIPOGERADOR='+#39+'CTARCH'+#39+') AND (COD_GERADOR='+DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString+')')=True then
                       begin
                      		//se o codigo de abertura do caixa atual for diferente do codigo de lançamento de caixa da ordem e este cheque foi movimentado em caixa faz o estorno
                           if (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption) and (FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= false) then
                           begin//só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
                           	LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fech. Ped. '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'ORDEM', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString, Date(), '1');
                           end;

                           DMCAIXA.IBT.CommitRetaining;
                           MDO.Transac.CommitRetaining;
                           DMCAIXA.TLanCaixa.First;

                           while not DMCAIXA.TLanCaixa.Eof do
                           	//se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
                           	if (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption) AND (DMCAIXA.TLanCaixa.FieldByName('COD_GERADOR').AsString = DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsString) then
                               begin
                               	if ((DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'LCHR') OR (DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'MCHR') or (DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'DCHR')) then
                                   begin
                                   	DMCAIXA.TLanCaixa.Delete;
                                       DMCAIXA.TLanCaixa.ApplyUpdates;
									end;
                               end
                               else
                               	DMCAIXA.TLanCaixa.Next;

                            	DMCAIXA.IBT.CommitRetaining;
                            	MDO.Transac.CommitRetaining;
                         	end;

                           //
                           //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em conta corrente
                           if FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + IntToStr(DMBANCO.TChequeRec.FieldByname('COD_CHEQUEREC').AsInteger) + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')') = True then
                           begin
                           	DMBANCO.TMovBanco.First;

                               while not DMBANCO.TMovBanco.Eof do
                               	DMBANCO.TMovBanco.Delete;
                                   DMBANCO.TMovBanco.ApplyUpdates;

                               	DMBANCO.TMovBanco.Next;
                               end;

                            	DMBANCO.IBT.CommitRetaining;

                            //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em caixa
                            If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39 + ')')= true then
                            begin
                            	DMBANCO.TMovBanco.Delete;
                               DMBANCO.TMovBanco.ApplyUpdates;
                            end;
                            
                            DMBANCO.IBT.CommitRetaining;

                     		 DMCONTA.TParcCR.Delete;
                            DMCONTA.TParcCR.ApplyUpdates;
                   	end;
               end;
				DMCONTA.TCtaR.Delete;
             	DMCONTA.TCtaR.ApplyUpdates;

             	Result := true;
           End;
   End;

	try
   	DMCONTA.IBT.CommitRetaining;
       DMBANCO.IBT.CommitRetaining;
       DMCAIXA.IBT.CommitRetaining;
       MDO.Transac.CommitRetaining;
   except
   end;
end;

procedure TFFaturaOrdemMensal.EdValorExit(Sender: TObject);
begin
  inherited;
	EdNumeroMesesChange(sender);
end;

end.


