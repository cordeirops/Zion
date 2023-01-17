unit UAntecipaCR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, ExtCtrls, UFrmBusca, StdCtrls, EditFloat,
  ColorEditFloat, Buttons, Grids, DBGrids, Mask, ColorMaskEdit, Menus;

type
  TFAntecipaCR = class(TFPadrao)
    PAntecipar: TPanel;
    PCancelar: TPanel;
    Label1: TLabel;
    edValorAntecipacao: TColorEditFloat;
    lbTaxaImportacao: TLabel;
    edTaxaAntecipacao: TColorEditFloat;
    FrmConta: TFrmBusca;
    Label3: TLabel;
    edSaldoAntecipacao: TColorEditFloat;
    btnAnteciparValores: TBitBtn;
    GroupBox1: TGroupBox;
    rbCaixa: TRadioButton;
    rbBanco: TRadioButton;
    PAntecipaBanco: TPanel;
    Label2: TLabel;
    DbgSelecionaCtaCorrente: TDBGrid;
    PAntecipaCaixa: TPanel;
    Label4: TLabel;
    DbgSelecionaCaixa: TDBGrid;
    Label5: TLabel;
    edDataReferencia: TColorMaskEdit;
    PLiquidar: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    EdNumParc: TColorMaskEdit;
    Label8: TLabel;
    EdVencimento: TColorMaskEdit;
    edvencimento2: TColorMaskEdit;
    Label9: TLabel;
    ColorMaskEdit1: TColorMaskEdit;
    DBGridCadastroPadrao: TDBGrid;
    PLiquida: TPopupMenu;
    LiquidarConta1: TMenuItem;
    PEstornoLancamento: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    EdValorEstorno: TColorEditFloat;
    btnEstornaValores: TBitBtn;
    GroupBox2: TGroupBox;
    PAntecipaBancoEstorno: TPanel;
    Label14: TLabel;
    DbgSelecionaCtaCorrenteEstorno: TDBGrid;
    PAntecipaCaixaEstorno: TPanel;
    Label15: TLabel;
    DbgSelecionaCaixaEstorno: TDBGrid;
    rbCaixaEstorno: TRadioButton;
    rbBancoEstorno: TRadioButton;
    EdDataReferenciaEstorno: TColorMaskEdit;
    MValoresEstornados: TMemo;
    Label12: TLabel;
    EdTaxaEstorno: TColorEditFloat;
    FrmContaTaxaEstorno: TFrmBusca;
    procedure FormActivate(Sender: TObject);
    procedure edTaxaAntecipacaoExit(Sender: TObject);
    procedure rbCaixaClick(Sender: TObject);
    procedure rbBancoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DbgSelecionaCtaCorrenteKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure DbgSelecionaCaixaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAnteciparValoresClick(Sender: TObject);
    procedure LiquidarConta1Click(Sender: TObject);
    procedure EdNumParcKeyPress(Sender: TObject; var Key: Char);
    procedure EdVencimentoKeyPress(Sender: TObject; var Key: Char);
    procedure rbCaixaEstornoClick(Sender: TObject);
    procedure rbBancoEstornoClick(Sender: TObject);
    procedure btnEstornaValoresClick(Sender: TObject);
    procedure FrmContaTaxaEstornoBTNOPENClick(Sender: TObject);
    procedure FrmContaTaxaEstornoEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure FrmContaEDCodigoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
	//Função para preaparar os dados para realizar as antecipações
	Function PreparaAntecipacao: Boolean;
	//Função para preaparar os dados para liquodação das antecipações
	Function FiltraContasLiquidacao(xFiltroLiquida: String): Boolean;
	//Função para preaparar os dados para liquodação das antecipações
	Function PreparaLiquidacao: Boolean;
	//Função para preaparar os dados para Estorno
	Function PreparaEstorno: Boolean;
	//Função para selecionar os caixas disponíveis para o usuário
	Function SelecionaCaixas: Boolean;
	//Função para selecionar os caixas disponíveis para o usuário no caso de estorno
	Function SelecionaCaixasEstorno: Boolean;
	//Função para selecionar os bancos ou ctas correntes disponíveis para o usuário no caso de estorno
	Function SelecionaBancoEstorno: Boolean;
	//Função para selecionar os bancos ou ctas correntes disponíveis para o usuário
	Function SelecionaBanco: Boolean;
	//Função que inicializa os lançamentos de antecipação
	Function LancaAntecipacao: Boolean;
	//Função que inicializa os lançamentos de estorno de antecipação
	Function LancaEstornoAntecipacao: Boolean;
	//Função que efetua lançamentos em bancos
	Function LancaAntecipacaoBanco: Boolean;
	//Função que efetua lançamentos de Estornos em bancos
	Function LancaEstornoAntecipacaoBanco: Boolean;
	//Função que efetua lançamentos em caixa
	Function LancaAntecipacaoCaixa: Boolean;
	//Função utilizada para lançar os dados de antecipação junto as tabelas
	Function LancaDadosAntecipacao: Boolean;
	//Função utilizada para lançar estorno dos dados de antecipação junto as tabelas
	Function LancaEstornoDadosAntecipacao: Boolean;
	//Função utilizada para lançar os dados de estorno de antecipação junto as tabelas
	Function LancaDadosEstornoAntecipacao: Boolean;
	//Função para validar as contas pelo plano de conta, para não ocorrer o caso de contas diferentes
	Function ValidarContasPlanoDiferente: Boolean;
	//Função para recuperar valores de contas e serviços
	Function RecuperDadosParaLancamento: Boolean;
	//Função para recuperar valores de contas e serviços para estorno
	Function RecuperDadosParaLancamentoEstorno: Boolean;
	//Função para validar as contas para verificar se existem contas selecionadas como antecipadas
	Function ValidarContasJaAntecipadas: Boolean;
	//Função para lançar valores na tabela de itens de antecipação
	Function LancaDadosTabelaItensAntecipacao: Boolean;
	//Função para recuperar valores de contas e serviços
	Function LancaDadosTabelaAntecipacao: Boolean;
	//Função para recuperar valores de contas e serviços
	Function LancaDadosTabelaAtualizaParcela: Boolean;
	//Função que efetua lançamentos de estorno em caixa
	Function LancaEstornoAntecipacaoCaixa: Boolean;
  public
    { Public declarations }
  end;

var
   FAntecipaCR: TFAntecipaCR;
   xCodigoContaTaxaAntecipacao, xCodigoContaTaxaEstorno, xCodigoContaProdutos, xCodigoContaServicos, xCodigoAbCaixa, xCodigoAbBanco, xCodigoCaixaMenu, xCodigoTabelaAntecipacao: Integer;
	xPercentualServicos, xValorServico: Real;
	xValidacao: Boolean;

implementation

uses UMenu, UMDO, UDMConta, Alxor32, Math, UDMMacs, DB, JLLabel,
  UConsPlncta;

{$R *.dfm}

//Função para recuperar valores de contas e serviços
Function TFAntecipaCR.LancaDadosTabelaAtualizaParcela: Boolean;
Begin
	Try
       Result := True;
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' update parcelacr set parcelacr.antecipado=''1'', parcelacr.estru=''0'', parcelacr.mark='' '',  parcelacr.valorpg = parcelacr.valor, parcelacr.dtdebito=:DtBaixa  ');
       MDO.QConsulta.SQL.Add(' Where (parcelacr.mark=''X'') and (parcelacr.fech=''N'')');
       MDO.QConsulta.ParamByName('DtBaixa').AsDate := Date();
       MDO.QConsulta.ExecSQL;
	Except
		Result := False;
	End;
End;
//Função para recuperar valores de contas e serviços
Function TFAntecipaCR.LancaDadosTabelaAntecipacao: Boolean;
Begin
	Try
       Result := True;
  		MDO.Query.Close;
  		MDO.Query.SQL.Clear;
  		MDO.Query.SQL.Add(' SELECT GEN_ID(GEN_ANTECIPACR_ID, 0) AS CODIGO FROM RDB$DATABASE ');
  		MDO.Query.Open;
  		xCodigoTabelaAntecipacao := MDO.Query.FieldByName('CODIGO').AsInteger;
       MDO.Query.Close;
  		MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add('  insert into ANTECIPACR (COD_USUARIO, COD_INSTITUICAO, TIPOINSTITUICAO, COD_CONTAANTECIPACAO, COD_CONTADESCONTO, DATAANTECIPACAO, VALORTOTAL, VALORDESCONTO, VALORSALDO) ');
       MDO.Query.SQL.Add( '        values (:COD_USUARIO, :COD_INSTITUICAO, :TIPOINSTITUICAO, :COD_CONTAANTECIPACAO, :COD_CONTADESCONTO, :DATAANTECIPACAO, :VALORTOTAL, :VALORDESCONTO, :VALORSALDO) ');
       MDO.Query.ParamByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
		If rbBanco.Checked = True
		Then Begin
       	MDO.Query.ParamByName('COD_INSTITUICAO').AsInteger := xCodigoAbBanco;
       	MDO.Query.ParamByName('TIPOINSTITUICAO').AsString := 'BANCO';
		End
       Else Begin
       	MDO.Query.ParamByName('COD_INSTITUICAO').AsInteger := xCodigoAbCaixa;
       	MDO.Query.ParamByName('TIPOINSTITUICAO').AsString := 'CAIXA';
		End;
       MDO.Query.ParamByName('COD_CONTAANTECIPACAO').AsInteger := xCodigoContaProdutos;
       MDO.Query.ParamByName('COD_CONTADESCONTO').AsInteger := xCodigoContaTaxaAntecipacao;
       MDO.Query.ParamByName('DATAANTECIPACAO').AsDate := Date();
       MDO.Query.ParamByName('VALORTOTAL').AsCurrency := edValorAntecipacao.ValueNumeric;
       MDO.Query.ParamByName('VALORDESCONTO').AsCurrency := edTaxaAntecipacao.ValueNumeric;
       MDO.Query.ParamByName('VALORSALDO').AsCurrency := edSaldoAntecipacao.ValueNumeric;
       MDO.Query.ExecSQL;
	Except
       Result := False;
	End;
End;

//Função para lançar valores na tabela de itens de antecipação
Function TFAntecipaCR.LancaDadosTabelaItensAntecipacao: Boolean;
Begin
	Try
       Result := True;

       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' select * from parcelacr');
       MDO.QConsulta.SQL.Add(' Where (parcelacr.mark=''X'') and (parcelacr.fech=''N'')');
       MDO.QConsulta.Open;

       MDO.QConsulta.First;
		While not MDO.QConsulta.eof do
		Begin
  			MDO.Query.Close;                                     
  			MDO.Query.SQL.Clear;
       	MDO.Query.SQL.Add('  insert into ANTECIPARCR_ITENS (COD_ANTECIPARCR, COD_PARCELACR, STATUS) ');
       	MDO.Query.SQL.Add( '        values (:COD_ANTECIPARCR, :COD_PARCELACR, :STATUS) ');
       	MDO.Query.ParamByName('COD_ANTECIPARCR').AsInteger := xCodigoTabelaAntecipacao;
       	MDO.Query.ParamByName('COD_PARCELACR').AsInteger := MDO.QConsulta.FieldByName('cod_parcelacr').AsInteger;
       	MDO.Query.ParamByName('STATUS').AsString := 'ATIVO';
       	MDO.Query.ExecSQL;
           MDO.QConsulta.Next;
		End;
	Except
       Result := false;
	End;
End;

//Função para recuperar valores de contas e serviços
Function TFAntecipaCR.RecuperDadosParaLancamento: Boolean;
Begin
	Try
       Result := true;
       //Verifica instituição selecionada                       
		If rbBanco.Checked=true Then
           xCodigoAbBanco := MDO.QConsulta.FieldByName('cod_ctacor').AsInteger
		else
           xCodigoAbCaixa := MDO.QConsulta.FieldByName('cod_caixa').AsInteger;
		//Recupera conta para serviços
       mdo.QConsulta.close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('  Select parcelacr.pervlrserv, ctareceber.cod_plnctaserv from parcelacr ');
       MDO.QConsulta.SQL.Add('  Left Join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
       MDO.QConsulta.SQL.Add('  Where (parcelacr.mark=''X'') and (parcelacr.fech=''N'') and (ctareceber.cod_plnctaserv is not null) ');
       MDO.QConsulta.Open;
       If not MDO.QConsulta.IsEmpty
		Then Begin
           xCodigoContaServicos := MDO.QConsulta.FieldByName('cod_plnctaserv').AsInteger;
           xPercentualServicos := MDO.QConsulta.FieldByName('pervlrserv').AsCurrency;
		End
		Else Begin
           xCodigoContaServicos := -1;
           xPercentualServicos := 0;
		End;
       //Recupera valor de serviços
       mdo.QConsulta.close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('  Select sum(((parcelacr.valor * parcelacr.pervlrserv)/100)) as VALORSERVICO from parcelacr ');
       MDO.QConsulta.SQL.Add('  Left Join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
       MDO.QConsulta.SQL.Add('  Where (parcelacr.mark=''X'') and (parcelacr.fech=''N'') and (ctareceber.cod_plnctaserv is not null) ');
       MDO.QConsulta.Open;
       If not MDO.QConsulta.IsEmpty
		Then Begin
           xValorServico := MDO.QConsulta.FieldByName('VALORSERVICO').AsCurrency;
		End
		Else Begin
           xValorServico := 0;
		End;
		//Verifica dados de produtos
       mdo.QConsulta.close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('   Select ctareceber.cod_plncta from parcelacr ');
       MDO.QConsulta.SQL.Add('    Left Join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
       MDO.QConsulta.SQL.Add('    Where (parcelacr.mark=''X'') and (parcelacr.fech=''N'') and (ctareceber.cod_plncta is not null) ');
       MDO.QConsulta.Open;
       If not MDO.QConsulta.IsEmpty
		Then Begin
           xCodigoContaProdutos := MDO.QConsulta.FieldByName('cod_plncta').AsInteger;
		End
		Else Begin
           xCodigoContaProdutos := -1;
		End;
	Except
       Result := False;
	End;
End;

//Função para recuperar valores de contas e serviços para estorno
Function TFAntecipaCR.RecuperDadosParaLancamentoEstorno: Boolean;
Begin
	Try
		//Recupera conta para serviços
       mdo.QConsulta.close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('  Select parcelacr.pervlrserv, ctareceber.cod_plnctaserv from parcelacr ');
       MDO.QConsulta.SQL.Add('  Left Join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
       MDO.QConsulta.SQL.Add('  Where (parcelacr.mark=''X'') and (parcelacr.fech=''N'') and (parcelacr.antecipado=''1'')  and (ctareceber.cod_plnctaserv is not null) ');
       MDO.QConsulta.Open;
       If not MDO.QConsulta.IsEmpty
		Then Begin
           xCodigoContaServicos := MDO.QConsulta.FieldByName('cod_plnctaserv').AsInteger;
           xPercentualServicos := MDO.QConsulta.FieldByName('pervlrserv').AsCurrency;
		End
		Else Begin
           xCodigoContaServicos := -1;
           xPercentualServicos := 0;
		End;
       //Recupera valor de serviços
       mdo.QConsulta.close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('  Select sum(((parcelacr.valor * parcelacr.pervlrserv)/100)) as VALORSERVICO from parcelacr ');
       MDO.QConsulta.SQL.Add('  Left Join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
       MDO.QConsulta.SQL.Add('  Where (parcelacr.mark=''X'') and (parcelacr.fech=''N'')  and (parcelacr.antecipado=''1'') and (ctareceber.cod_plnctaserv is not null) ');
       MDO.QConsulta.Open;
       If not MDO.QConsulta.IsEmpty
		Then Begin
           xValorServico := MDO.QConsulta.FieldByName('VALORSERVICO').AsCurrency;
		End
		Else Begin
           xValorServico := 0;
		End;
		//Verifica dados de produtos
       mdo.QConsulta.close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('   Select ctareceber.cod_plncta from parcelacr ');
       MDO.QConsulta.SQL.Add('    Left Join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
       MDO.QConsulta.SQL.Add('    Where (parcelacr.mark=''X'') and (parcelacr.fech=''N'')  and (parcelacr.antecipado=''1'') and (ctareceber.cod_plncta is not null) ');
       MDO.QConsulta.Open;
       If not MDO.QConsulta.IsEmpty
		Then Begin
           xCodigoContaProdutos := MDO.QConsulta.FieldByName('cod_plncta').AsInteger;
		End
		Else Begin
           xCodigoContaProdutos := -1;
		End;
	Except
       Result := False;
	End;
End;

//Função para validar as contas para verificar se existem contas selecionadas como antecipadas
Function TFAntecipaCR.ValidarContasJaAntecipadas: Boolean;
Begin
	Try
       mdo.QConsulta.close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' select distinct(vwparcr.COD_PARCELACR) from vwparcr ');
       MDO.QConsulta.SQL.Add('  Where (vwparcr.mark=''X'') and (vwparcr.fech=''N'') and  (vwparcr.ANTECIPADO=''1'')');
       MDO.QConsulta.Open;
       If MDO.QConsulta.RecordCount>1 Then
           Result := False
		Else
           Result := True;

	Except
       Result := False;
	End;
End;

//Função para validar as contas pelo plano de conta, para não ocorrer o caso de contas diferentes
Function TFAntecipaCR.ValidarContasPlanoDiferente: Boolean;
Begin
	Try
       mdo.QConsulta.close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' select distinct(vwparcr.cod_plncta) from vwparcr ');
       MDO.QConsulta.SQL.Add('  Where (vwparcr.mark=''X'') and (vwparcr.fech=''N'') ');
       MDO.QConsulta.Open;
       If MDO.QConsulta.RecordCount>1 Then
           Result := False
		Else
           Result := True;

	Except
       Result := False;
	End;
End;

//Função utilizada para lançar estorno dos dados de antecipação junto as tabelas
Function TFAntecipaCR.LancaEstornoDadosAntecipacao: Boolean;
Begin
	Try
		Result := True;
       mdo.Query.close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' update anteciparcr_itens SET anteciparcr_itens.status=''ESTORNADO'' ');
       MDO.Query.SQL.Add('   Where exists (Select * from parcelacr where (parcelacr.cod_parcelacr = anteciparcr_itens.cod_parcelacr) ');
       MDO.Query.SQL.Add('   and (parcelacr.mark=''X'') and (parcelacr.fech=''N'') and (parcelacr.antecipado=''1''))' );
       MDO.Query.ExecSQL;

       mdo.Query.close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' update parcelacr set parcelacr.antecipado=0, parcelacr.mark=''''  ' );
       MDO.Query.SQL.Add(' Where (parcelacr.mark=''X'') and (parcelacr.fech=''N'') and (parcelacr.antecipado=''1'')' );
       MDO.Query.ExecSQL;
	Except
		Result := False
	End
End;

//Função utilizada para lançar os dados de antecipação junto as tabelas
Function TFAntecipaCR.LancaDadosAntecipacao: Boolean;
Begin
	Try
		If LancaDadosTabelaAntecipacao=True
		Then Begin
			If LancaDadosTabelaItensAntecipacao=True
			Then Begin
               Result := True;
				If LancaDadosTabelaAtualizaParcela = True Then
                   Result := True
				Else
                   Result := False;
			End
			Else Begin
				Result := False;
			End;
		End
		Else Begin
           Result := False;
		End;
	Except
	End;
End;

//Função utilizada para lançar os dados de estorno de antecipação junto as tabelas
Function TFAntecipaCR.LancaDadosEstornoAntecipacao: Boolean;
Begin
	Try
			If LancaDadosTabelaItensAntecipacao=True
			Then Begin
               Result := True;
				If LancaDadosTabelaAtualizaParcela = True Then
                   Result := True
				Else
                   Result := False;
			End
			Else Begin
				Result := False;
			End;
	Except
	End;
End;

//Função que efetua lançamentos em bancos
Function TFAntecipaCR.LancaAntecipacaoBanco: Boolean;
Begin
	Try
       Result := True;
   	If xValorServico>0
	    Then Begin
	       If (edSaldoAntecipacao.ValueNumeric-xValorServico)>0
	       Then Begin
	           //LanBanco(COD_CTACOR    ; COD_PLNCTA          ;  HISTORICO                                  ; Valor:Real                                  ; TipoGera    ; COD_GERA;                 TIPOOP  ;                           COD_USUARIO; COBRANCA  ; FECH; DTVENC           ; NUMCH; DTLANC          ; ESTRU; DTREF: STRING):Boolean;
	           //Lança valores de produtos
	           LanBanco(xCodigoAbBanco, xCodigoContaProdutos, 'Antecipações de Ctas a Receber [Produtos]', edValorAntecipacao.ValueNumeric-xValorServico, 'ANTECIPACR', xCodigoTabelaAntecipacao, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'T. BANCO', 'S' , DateToStr(Date()), ''   ,DateToStr(Date()), '1'  , edDataReferencia.Text);
	       End;
	       //Lança dados de serviços
		   LanBanco(xCodigoAbBanco, xCodigoContaServicos, 'Antecipações de Ctas a Receber [Serviços]', xValorServico, 'ANTECIPACR', xCodigoTabelaAntecipacao , 'ENTRADA',  StrToInt(FMenu.LCODUSUARIO.Caption), 'T. BANCO', 'S' , DateToStr(Date()), ''   ,DateToStr(Date()), '1'  , edDataReferencia.Text);
	    End
	    Else Begin
	       LanBanco(xCodigoAbBanco, xCodigoContaProdutos, 'Antecipações de Ctas a Receber', edValorAntecipacao.ValueNumeric, 'ANTECIPACR', xCodigoTabelaAntecipacao, 'ENTRADA',  StrToInt(FMenu.LCODUSUARIO.Caption), 'T. BANCO', 'S' , DateToStr(Date()), ''   ,DateToStr(Date()), '1'  , edDataReferencia.Text);
	    End;
   	//Lança valor de taxa de antecipação
   	If edTaxaAntecipacao.ValueNumeric>0 Then
       	LanBanco(xCodigoAbBanco, xCodigoContaTaxaAntecipacao, 'Taxa/Juros de Antecipações de Ctas a Receber', edTaxaAntecipacao.ValueNumeric, 'ANTECIPACR', xCodigoTabelaAntecipacao, 'SAIDA',  StrToInt(FMenu.LCODUSUARIO.Caption), 'T. BANCO', 'S' , DateToStr(Date()), ''   ,DateToStr(Date()), '1'  , edDataReferencia.Text);
	Except
       Result := False;
	End;
End;

//Função que efetua lançamentos de Estornos em bancos
Function TFAntecipaCR.LancaEstornoAntecipacaoBanco: Boolean;
Begin
	Try
       Result := True;
   	If xValorServico>0
	    Then Begin
	       If (edSaldoAntecipacao.ValueNumeric-xValorServico)>0
	       Then Begin
	           //LanBanco(COD_CTACOR    ; COD_PLNCTA          ;  HISTORICO                                  ; Valor:Real                                  ; TipoGera    ; COD_GERA;                 TIPOOP  ;                           COD_USUARIO; COBRANCA  ; FECH; DTVENC           ; NUMCH; DTLANC          ; ESTRU; DTREF: STRING):Boolean;
	           //Lança valores de produtos
	           LanBanco(xCodigoAbBanco, xCodigoContaProdutos, 'Estorno de Antecipações de Ctas a Receber [Produtos]', EdValorEstorno.ValueNumeric-xValorServico, 'ANTECIPACR', xCodigoTabelaAntecipacao, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), 'T. BANCO', 'S' , DateToStr(Date()), ''   ,DateToStr(Date()), '1'  , EdDataReferenciaEstorno.Text);
	       End;
	       //Lança dados de serviços
		   LanBanco(xCodigoAbBanco, xCodigoContaServicos, 'Estorno de Antecipações de Ctas a Receber [Serviços]', xValorServico, 'ANTECIPACR', xCodigoTabelaAntecipacao , 'SAIDA',  StrToInt(FMenu.LCODUSUARIO.Caption), 'T. BANCO', 'S' , DateToStr(Date()), ''   ,DateToStr(Date()), '1'  , EdDataReferenciaEstorno.Text);
	    End
	    Else Begin
	       LanBanco(xCodigoAbBanco, xCodigoContaProdutos, 'Estorno de Antecipações de Ctas a Receber', EdValorEstorno.ValueNumeric, 'ANTECIPACR', xCodigoTabelaAntecipacao, 'SAIDA',  StrToInt(FMenu.LCODUSUARIO.Caption), 'T. BANCO', 'S' , DateToStr(Date()), ''   ,DateToStr(Date()), '1'  , EdDataReferenciaEstorno.Text);
	    End;
   	//Lança valor de taxa de antecipação para estorno
   	If EdTaxaEstorno.ValueNumeric>0 Then
       	LanBanco(xCodigoAbBanco, xCodigoContaTaxaEstorno, 'Taxa/Juros referente ao Estorno de Antecipações de Ctas a Receber', EdTaxaEstorno.ValueNumeric, 'ANTECIPACR', xCodigoTabelaAntecipacao, 'SAIDA',  StrToInt(FMenu.LCODUSUARIO.Caption), 'T. BANCO', 'S' , DateToStr(Date()), ''   ,DateToStr(Date()), '1'  , EdDataReferenciaEstorno.Text);

	Except
       Result := False;
	End;
End;

//Função que efetua lançamentos em caixa
Function TFAntecipaCR.LancaAntecipacaoCaixa: Boolean;
Begin
	Try
       Result := True;
       xCodigoCaixaMenu := StrToInt(FMenu.LCODCAIXA.Caption);
       FMenu.LCODCAIXA.Caption:=IntToStr(xCodigoAbCaixa);
   	If xValorServico>0
	    Then Begin
	       If (edSaldoAntecipacao.ValueNumeric-xValorServico)>0
	       Then Begin
	           //Lança valores de produtos
			   LanCaixa(0, DateToStr(Date()), xCodigoContaProdutos, 'Antecipações de Ctas a Receber [Produtos]',  edValorAntecipacao.ValueNumeric-xValorServico, 'ANTECIPACR', xCodigoTabelaAntecipacao, 'Carteira', 'E', '', StrToDate(edDataReferencia.Text), '1');
	       End;
	       //Lança dados de serviços
 		   LanCaixa(0, DateToStr(Date()), xCodigoContaServicos, 'Antecipações de Ctas a Receber [Serviços]',  xValorServico, 'ANTECIPACR', xCodigoTabelaAntecipacao, 'Carteira', 'E', '', StrToDate(edDataReferencia.Text), '1');
	    End
	    Else Begin
		   LanCaixa(0, DateToStr(Date()), xCodigoContaProdutos, 'Antecipações de Ctas a Receber',  edValorAntecipacao.ValueNumeric, 'ANTECIPACR', xCodigoTabelaAntecipacao, 'Carteira', 'E', '', StrToDate(edDataReferencia.Text), '1');
	    End;
   	//Lança valor de taxa de antecipação
   	If edTaxaAntecipacao.ValueNumeric>0 Then
		   	LanCaixa(0, DateToStr(Date()), xCodigoContaTaxaAntecipacao, 'Taxa/Juros de Antecipações de Ctas a Receber',  edTaxaAntecipacao.ValueNumeric, 'ANTECIPACR', xCodigoTabelaAntecipacao, 'Carteira', 'S', '', StrToDate(edDataReferencia.Text), '1');
       FMenu.LCODCAIXA.Caption:=IntToStr(xCodigoCaixaMenu);
	Except
       Result := False;
	End;
End;

//Função que efetua lançamentos de estorno em caixa
Function TFAntecipaCR.LancaEstornoAntecipacaoCaixa: Boolean;
Begin
	Try
       Result := True;
       xCodigoCaixaMenu := StrToInt(FMenu.LCODCAIXA.Caption);
       FMenu.LCODCAIXA.Caption:=IntToStr(xCodigoAbCaixa);
   	If xValorServico>0
	    Then Begin
	       If (edSaldoAntecipacao.ValueNumeric-xValorServico)>0
	       Then Begin
	           //Lança valores de produtos
			   LanCaixa(0, DateToStr(Date()), xCodigoContaProdutos, 'Estorno de Antecipações de Ctas a Receber [Produtos]',  EdValorEstorno.ValueNumeric-xValorServico, 'ANTECIPACR', xCodigoTabelaAntecipacao, 'Carteira', 'S', '', StrToDate(EdDataReferenciaEstorno.Text), '1');
	       End;
	       //Lança dados de serviços
 		   LanCaixa(0, DateToStr(Date()), xCodigoContaServicos, 'Estorno de Antecipações de Ctas a Receber [Serviços]',  xValorServico, 'ANTECIPACR', xCodigoTabelaAntecipacao, 'Carteira', 'S', '', StrToDate(EdDataReferenciaEstorno.Text), '1');
	    End
	    Else Begin
		   LanCaixa(0, DateToStr(Date()), xCodigoContaProdutos, 'Estorno de Antecipações de Ctas a Receber',  EdValorEstorno.ValueNumeric, 'ANTECIPACR', xCodigoTabelaAntecipacao, 'Carteira', 'S', '', StrToDate(EdDataReferenciaEstorno.Text), '1');
	    End;
   	//Lança valor de taxa de antecipação para estorno
   	If EdTaxaEstorno.ValueNumeric>0 Then
		   	LanCaixa(0, DateToStr(Date()), xCodigoContaTaxaEstorno, 'Taxa/Juros referente a Estorno de Antecipações de Ctas a Receber',  EdTaxaEstorno.ValueNumeric, 'ANTECIPACR', xCodigoTabelaAntecipacao, 'Carteira', 'S', '', StrToDate(edDataReferencia.Text), '1');
       FMenu.LCODCAIXA.Caption:=IntToStr(xCodigoCaixaMenu);
	Except
       Result := False;
	End;
End;

//Função que inicializa os lançamentos de antecipação
Function TFAntecipaCR.LancaAntecipacao: Boolean;
Begin
	Try
       Result := True;
       If RecuperDadosParaLancamento = True
       Then Begin
			If LancaDadosAntecipacao=True
			Then Begin
       		If rbBanco.Checked = True
				Then Begin
                   LancaAntecipacaoBanco;
				End
				Else Begin
                   LancaAntecipacaoCaixa;
				End;
       	End
			Else Begin
               Result := False;
			End;
		End
		Else Begin
           Result := False;
		End;
		//Se tudo correu certo até o momento, confirmamos transação em banco de dados
       MDO.Transac.CommitRetaining;
	Except
       Result := False;
	End;
End;

//Função que inicializa os lançamentos de estorno de antecipação
Function TFAntecipaCR.LancaEstornoAntecipacao: Boolean;
Begin
	Try
       Result := True;
       If LancaEstornoDadosAntecipacao=True
       Then Begin
       		If rbBancoEstorno.Checked = True
				Then Begin
           		xCodigoAbBanco := MDO.QConsulta.FieldByName('cod_ctacor').AsInteger;
					LancaEstornoAntecipacaoBanco;
				End
				Else Begin
		           	xCodigoAbCaixa := MDO.QConsulta.FieldByName('cod_caixa').AsInteger;
                   LancaEstornoAntecipacaoCaixa;
				End;
       	End
			Else Begin
               Result := False;
			End;
		//Se tudo correu certo até o momento, confirmamos transação em banco de dados
       MDO.Transac.CommitRetaining;
	Except
       Result := False;
	End;
End;

//Função para selecionar os bancos ou ctas correntes disponíveis para o usuário
Function TFAntecipaCR.SelecionaBanco: Boolean;
begin
	try
       Result := True;
		If (FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'codusuario', FMenu.LCODUSUARIO.Caption, '')) or (FMenu.LCODUSUARIO.Caption='111522')
		Then Begin
       	mdo.QConsulta.close;
       	MDO.QConsulta.SQL.Clear;
       	MDO.QConsulta.SQL.Add('  select Distinct(vwctacor.cod_ctacor), vwctacor.numctacor as NUMERO, vwctacor.descbanco as INSTITUICAO, abbanco.fechado, abbanco.cod_abbanco FROM vwctacor ');
       	MDO.QConsulta.SQL.Add('  left join abbanco on vwctacor.cod_ctacor = abbanco.cod_ctacor ');
       	MDO.QConsulta.SQL.Add('  where (abbanco.fechado=''N'') ');
           MDO.QConsulta.Open;
			DbgSelecionaCtaCorrente.DataSource := MDO.DConsulta;
           DbgSelecionaCtaCorrente.SetFocus;
		End
		Else Begin
			MessageDlg('Entre com outro usuário para obter permissão para esse módulo.', mtInformation, [mbOK], 0);
           PAntecipaCaixa.Visible:=False;
		End;
	Except
       Result := false;
   	MessageDlg('Entre com outro usuário para obter permissão para esse módulo.', mtInformation, [mbOK], 0);
   	PAntecipaCaixa.Visible:=False;
	End;
End;

//Função para selecionar os bancos ou ctas correntes disponíveis para o usuário no caso de estorno
Function TFAntecipaCR.SelecionaBancoEstorno: Boolean;
begin
	try
       Result := True;
		If (FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'codusuario', FMenu.LCODUSUARIO.Caption, '')) or (FMenu.LCODUSUARIO.Caption='111522')
		Then Begin
       	mdo.QConsulta.close;
       	MDO.QConsulta.SQL.Clear;
       	MDO.QConsulta.SQL.Add('  select Distinct(vwctacor.cod_ctacor), vwctacor.numctacor as NUMERO, vwctacor.descbanco as INSTITUICAO, abbanco.fechado, abbanco.cod_abbanco FROM vwctacor ');
       	MDO.QConsulta.SQL.Add('  left join abbanco on vwctacor.cod_ctacor = abbanco.cod_ctacor ');
       	MDO.QConsulta.SQL.Add('  where (abbanco.fechado=''N'') ');
           MDO.QConsulta.Open;
			DbgSelecionaCtaCorrenteEstorno.DataSource := MDO.DConsulta;
           DbgSelecionaCtaCorrenteEstorno.SetFocus;
		End
		Else Begin
			MessageDlg('Entre com outro usuário para obter permissão para esse módulo.', mtInformation, [mbOK], 0);
           PAntecipaCaixaEstorno.Visible:=False;
		End;
	Except
       Result := false;
   	MessageDlg('Entre com outro usuário para obter permissão para esse módulo.', mtInformation, [mbOK], 0);
   	PAntecipaCaixaEstorno.Visible:=False;
	End;
End;

//Função para selecionar os caixas disponíveis para o usuário
Function TFAntecipaCR.SelecionaCaixas: Boolean;
begin
	try
       Result := true;
		If (FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'codusuario', FMenu.LCODUSUARIO.Caption, '')) or (FMenu.LCODUSUARIO.Caption='111522')
		Then Begin
       	mdo.QConsulta.close;
       	MDO.QConsulta.SQL.Clear;
       	MDO.QConsulta.SQL.Add('  select Distinct(caixa.cod_caixa), caixa.descricao  as INSTITUICAO, abcaixa.fechado, abcaixa.cod_abcaixa FROM caixa ');
       	MDO.QConsulta.SQL.Add('  left join caixausu ON caixausu.cod_caixa = caixa.cod_caixa ');
       	MDO.QConsulta.SQL.Add('  left join abcaixa on caixa.cod_caixa = abcaixa.cod_caixa ');
       	MDO.QConsulta.SQL.Add('  where (caixa.cod_loja=:CODLOJA) and (abcaixa.fechado=''N'') ');
           MDO.QConsulta.ParamByName('CODLOJA').AsString := FMenu.LCODLOJA.Caption;
			If (FMenu.LCODUSUARIO.Caption<>'111522')
			Then Begin
       		MDO.QConsulta.SQL.Add(' and (caixausu.cod_usuario=: CODUSUARIO) ');
				MDO.QConsulta.ParamByName('CODUSUARIO').AsString := FMenu.LCODUSUARIO.Caption;
			End;
           MDO.QConsulta.Open;
			DbgSelecionaCaixa.DataSource := MDO.DConsulta;
           DbgSelecionaCaixa.SetFocus;
		End
		Else Begin
			MessageDlg('Entre com outro usuário para obter permissão para esse módulo.', mtInformation, [mbOK], 0);
           PAntecipaCaixa.Visible:=False;
		End;
	Except
       Result := false;
   	MessageDlg('Entre com outro usuário para obter permissão para esse módulo.', mtInformation, [mbOK], 0);
   	PAntecipaCaixa.Visible:=False;
	End;
End;

//Função para selecionar os caixas disponíveis para o usuário no caso de estorno
Function TFAntecipaCR.SelecionaCaixasEstorno: Boolean;
begin
	try
       Result := true;
		If (FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'codusuario', FMenu.LCODUSUARIO.Caption, '')) or (FMenu.LCODUSUARIO.Caption='111522')
		Then Begin
       	mdo.QConsulta.close;
       	MDO.QConsulta.SQL.Clear;
       	MDO.QConsulta.SQL.Add('  select Distinct(caixa.cod_caixa), caixa.descricao  as INSTITUICAO, abcaixa.fechado, abcaixa.cod_abcaixa FROM caixa ');
       	MDO.QConsulta.SQL.Add('  left join caixausu ON caixausu.cod_caixa = caixa.cod_caixa ');
       	MDO.QConsulta.SQL.Add('  left join abcaixa on caixa.cod_caixa = abcaixa.cod_caixa ');
       	MDO.QConsulta.SQL.Add('  where (caixa.cod_loja=:CODLOJA) and (abcaixa.fechado=''N'') ');
           MDO.QConsulta.ParamByName('CODLOJA').AsString := FMenu.LCODLOJA.Caption;
			If (FMenu.LCODUSUARIO.Caption<>'111522')
			Then Begin
       		MDO.QConsulta.SQL.Add(' and (caixausu.cod_usuario=: CODUSUARIO) ');
				MDO.QConsulta.ParamByName('CODUSUARIO').AsString := FMenu.LCODUSUARIO.Caption;
			End;
           MDO.QConsulta.Open;
			DbgSelecionaCaixaEstorno.DataSource := MDO.DConsulta;
           DbgSelecionaCaixaEstorno.SetFocus;
		End
		Else Begin
			MessageDlg('Entre com outro usuário para obter permissão para esse módulo.', mtInformation, [mbOK], 0);
           PAntecipaCaixaEstorno.Visible:=False;
		End;
	Except
       Result := false;
   	MessageDlg('Entre com outro usuário para obter permissão para esse módulo.', mtInformation, [mbOK], 0);
   	PAntecipaCaixaEstorno.Visible:=False;
	End;
End;

//Função para preaparar os dados para Estorno
Function TFAntecipaCR.PreparaEstorno: Boolean;
begin
	try
       Result := True;
       xValidacao := true;
		If ValidarContasPlanoDiferente = False
		Then Begin
			MessageDlg('Existem parcelas de contas a receber selecionadas, que possuem contas do plano de contas diferentes.'+#13+#10+'Apenas contas a receber com mesma conta do plano de contas são permitidos. Verifique isso antes de continuar.', mtWarning, [mbOK], 0);
           xValidacao := false;
		End;
       rbBancoEstorno.Checked := true;
       SelecionaBancoEstorno;

		If xValidacao = true
		Then begin
               xCodigoContaTaxaAntecipacao := -1;
               xCodigoContaTaxaEstorno := -1;
               xCodigoContaProdutos := -1;
               xCodigoContaServicos := -1;
               xPercentualServicos := 0;
               xCodigoContaTaxaAntecipacao := -1;
               xCodigoAbCaixa := -1;
               xCodigoAbBanco := -1;

               //Verifica plano de contas para taxa de desconto de antecipações
               mdo.QConsulta.close;
               MDO.QConsulta.SQL.Clear;
               MDO.QConsulta.SQL.Add(' Select loja.cod_contaantecipacaocr from loja ');
               MDO.QConsulta.SQL.Add(' where loja.cod_loja = :CodigoLoja ');
               MDO.QConsulta.ParamByName('CodigoLoja').AsString := FMenu.LCODLOJA.Caption;
               MDO.QConsulta.open;
               If not MDO.QConsulta.IsEmpty
               Then Begin
                   xCodigoContaTaxaEstorno := MDO.QConsulta.FieldByName('cod_contaantecipacaocr').AsInteger;
                   If FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = ' + FMenu.LCODEMPRESA.Caption + ') and (plncta.cod_plncta = ' + IntToStr(xCodigoContaTaxaEstorno) +')') = True
                   Then Begin
                       FrmContaTaxaEstorno.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
                       FrmContaTaxaEstorno.EDCodigo.text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                   End
                   Else Begin
                       FrmContaTaxaEstorno.EdDescricao.Text := '';
                       FrmContaTaxaEstorno.EDCodigo.text := '';
                   End;
               End
               Else Begin
                   MessageDlg('Nenhuma conta para lançamento de descontos para a taxa de antecipação foi encontrada.'+#13+' Configure em loja', mtWarning, [mbOK], 0);
                   xValidacao := false;
               End;

				EdDataReferenciaEstorno.Text := DateToStr(Date());
       		EdDataReferenciaEstorno.SetFocus;

               mdo.QConsulta.close;
               MDO.QConsulta.SQL.Clear;
               MDO.QConsulta.SQL.Add(' Select Sum(vwparcr.valor) as TOTAL from vwparcr ');
               MDO.QConsulta.SQL.Add(' Where (vwparcr.mark=''X'') and (vwparcr.fech=''N'')  and (vwparcr.antecipado=''1'')');
               MDO.QConsulta.open;
               If MDO.QConsulta.FieldByName('TOTAL').AsCurrency>0
               Then Begin
                   EdValorEstorno.ValueNumeric := MDO.QConsulta.FieldByName('TOTAL').AsCurrency;
                   rbBancoEstorno.Checked := True;
                   rbBancoEstornoClick(Self);
               End
               Else Begin
                   EdValorEstorno.ValueNumeric := 0;
                   MessageDlg('Nenhuma conta selecionada para estorno foi encontrada.', mtWarning, [mbOK], 0);
                   xValidacao := False;
               End;

               If RecuperDadosParaLancamentoEstorno= True
               Then Begin
                   MValoresEstornados.Lines.Clear;
                   If ((EdValorEstorno.ValueNumeric-xValorServico)>0)
                   Then Begin
                       If FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'cod_plncta', IntToStr(xCodigoContaProdutos), '') = True
                       Then Begin
                           MValoresEstornados.Lines.Add('R$ '+FormatFloat('0,00', (EdValorEstorno.ValueNumeric-xValorServico)));
                           MValoresEstornados.Lines.Add(DMCONTA.TPlnCta.FieldByName('classificacao').AsString+' - '+DMCONTA.TPlnCta.FieldByName('descricao').AsString);
                       End;
                   End;
                   If (xValorServico>0)
                   Then Begin
                       If ((EdValorEstorno.ValueNumeric-xValorServico)>0) Then
                           MValoresEstornados.Lines.Add('');//adiciona linha em branco
                       If FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'cod_plncta', IntToStr(xCodigoContaServicos), '') = True
                       Then Begin
                           MValoresEstornados.Lines.Add('R$ '+FormatFloat('0.00', xValorServico));
                           MValoresEstornados.Lines.Add(DMCONTA.TPlnCta.FieldByName('classificacao').AsString+' - '+DMCONTA.TPlnCta.FieldByName('descricao').AsString);
                       End;
                   End;
               End
               Else Begin
                   xValidacao := false;
               End;
       	rbBancoEstorno.Checked := true;
       	SelecionaBancoEstorno;
			EdTaxaEstorno.SetFocus;
		End
	Except
		Result := False;
	End;
End;

//Função para preaparar os dados para liquodação das antecipações
Function TFAntecipaCR.PreparaLiquidacao: Boolean;
begin
	try
       Result := True;
       FiltraTabela(DMCONTA.WParR, 'VWPARCR', 'COD_CTARECEBER', '', '((FECH<>'+#39+'S'+#39+')   OR (FECH IS NULL)) and (ANTECIPADO=''1'') ORDER BY VWPARCR.DTVENC DESCENDING');
	Except
		Result := False;
	End;
End;

//Função para preaparar os dados para liquodação das antecipações
Function TFAntecipaCR.FiltraContasLiquidacao(xFiltroLiquida: String): Boolean;
begin
	try
       DMCONTA.WParR.Close;
       DMCONTA.WParR.SQL.Clear;
       DMCONTA.WParR.SQL.Add(' Select * From VWparCR  ');
       DMCONTA.WParR.SQL.Add(' Where (COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+') ');
       DMCONTA.WParR.SQL.Add(' AND ((SCPC = ''0'') OR (SCPC IS NULL)) ');
       DMCONTA.WParR.SQL.Add(' And (Fech <> '+#39+'S'+#39+')  and (ANTECIPADO=''1'') ');
		If xFiltroLiquida='DOCUMENTO'
		Then Begin
       	DMCONTA.WParR.SQL.Add(' And (upper(NUMPARC) like upper('+#39+EdNumParc.Text+'%'+#39+')) ')
		End;
		If xFiltroLiquida='VENCIMENTO'
		Then Begin
           If (EdVencimento.Text<>'  /  /    ') and (edvencimento2.Text<>'  /  /    ')
			Then Begin
       		DMCONTA.WParR.SQL.Add(' And  (vwparcr.dtvenc between :DATA01 and :DATA02) ');
           	DMCONTA.WParR.ParamByName('data01').AsDate:=StrToDate(EdVencimento.Text);
           	DMCONTA.WParR.ParamByName('data02').AsDate:=StrToDate(edvencimento2.Text);
			End;
		End;

       DMCONTA.WParR.SQL.Add(' ORDER BY NUMPARC, DTVENC, NOME');
       DMCONTA.WParR.Open;
	Except
	End;
End;
//Função para preaparar os dados para realizar as antecipações
Function TFAntecipaCR.PreparaAntecipacao: Boolean;
begin
	try
       xValidacao := true;
		edDataReferencia.Text := DateToStr(Date());
		If ValidarContasPlanoDiferente = False
		Then Begin
			MessageDlg('Existem parcelas de contas a receber selecionadas, que possuem contas do plano de contas diferentes.'+#13+#10+'Apenas contas a receber com mesma conta do plano de contas são permitidos. Verifique isso antes de continuar.', mtWarning, [mbOK], 0);
           xValidacao := false;
		End;
		If ValidarContasJaAntecipadas = False
		Then Begin
			MessageDlg('Existem parcelas já antecipadas junto a seleção.'+#13+#10+'Você precisa desmarcar as contas já antecipadas que aparecem em fonte de cor azul', mtWarning, [mbOK], 0);
           xValidacao := false;
		End;

		If xValidacao = true
		Then begin
               xCodigoContaTaxaAntecipacao := -1;
               xCodigoContaTaxaEstorno := -1;
               xCodigoContaProdutos := -1;
               xCodigoContaServicos := -1;
               xPercentualServicos := 0;
               xCodigoContaTaxaAntecipacao := -1;
               xCodigoAbCaixa := -1;
               xCodigoAbBanco := -1;

               //Verifica plano de contas para taxa de desconto de antecipações
               mdo.QConsulta.close;
               MDO.QConsulta.SQL.Clear;
               MDO.QConsulta.SQL.Add(' Select loja.cod_contaantecipacaocr from loja ');
               MDO.QConsulta.SQL.Add(' where loja.cod_loja = :CodigoLoja ');
               MDO.QConsulta.ParamByName('CodigoLoja').AsString := FMenu.LCODLOJA.Caption;
               MDO.QConsulta.open;
               If not MDO.QConsulta.IsEmpty
               Then Begin
                   xCodigoContaTaxaAntecipacao := MDO.QConsulta.FieldByName('cod_contaantecipacaocr').AsInteger;
                   If FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = ' + FMenu.LCODEMPRESA.Caption + ') and (plncta.cod_plncta = ' + IntToStr(xCodigoContaTaxaAntecipacao) +')') = True
                   Then Begin
                       FrmConta.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
                       FrmConta.EDCodigo.text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                   End
                   Else Begin
                       FrmConta.EdDescricao.Text := '';
                       FrmConta.EDCodigo.text := '';
                   End;
               End
               Else Begin
                   MessageDlg('Nenhuma conta para lançamento de descontos para a taxa de antecipação foi encontrada.'+#13+' Configure em loja', mtWarning, [mbOK], 0);
                   xValidacao := false;
               End;
               mdo.QConsulta.close;
               MDO.QConsulta.SQL.Clear;
               MDO.QConsulta.SQL.Add(' Select Sum(vwparcr.valor) as TOTAL from vwparcr ');
               MDO.QConsulta.SQL.Add(' Where (vwparcr.mark=''X'') and (vwparcr.fech=''N'')');
               MDO.QConsulta.open;
               If MDO.QConsulta.FieldByName('TOTAL').AsCurrency>0
               Then Begin
                   edValorAntecipacao.ValueNumeric := MDO.QConsulta.FieldByName('TOTAL').AsCurrency;
                   rbBanco.Checked := True;
                   rbBancoClick(Self);
                   edTaxaAntecipacao.SetFocus;
               End
               Else Begin
                   edValorAntecipacao.ValueNumeric := MDO.QConsulta.FieldByName('TOTAL').AsCurrency;
                   MessageDlg('Nenhuma conta selecionada para antecipação foi encontrada.', mtWarning, [mbOK], 0);
                   xValidacao := False;
               End;
		End;
	except
	End;
end;
procedure TFAntecipaCR.FormActivate(Sender: TObject);
begin
  inherited;
   xValidacao := true;
   btnAnteciparValores.Enabled := true;
	If FMenu.XTipoRel = 'ANTECIPACAO'
	Then Begin
       Caption := 'Antecipações de contas a receber';
       PAntecipar.Visible := True;
       PAntecipar.BringToFront;
       PreparaAntecipacao;
	End;

   If FMenu.XTipoRel = 'ESTORNAR'
	Then Begin
       Caption := 'Estorno de antecipações de contas a receber';
       PEstornoLancamento.Visible := True;
       PEstornoLancamento.BringToFront;
       PreparaEstorno;
	End;

   If FMenu.XTipoRel = 'LIQUIDAR'
	Then Begin
       Caption := 'Liquidar antecipações de contas a receber';
       PLiquidar.Visible := True;
       PLiquidar.BringToFront;
       PreparaLiquidacao;
	End;
	//Se a validação for negativa o formulário é fechado
	If xValidacao=false
	Then Begin
        btnAnteciparValores.Enabled := false;
        btnEstornaValores.Enabled := false;
	End;
end;

procedure TFAntecipaCR.edTaxaAntecipacaoExit(Sender: TObject);
begin
  inherited;
   edSaldoAntecipacao.ValueNumeric := edValorAntecipacao.ValueNumeric - edTaxaAntecipacao.valuenumeric;
end;

procedure TFAntecipaCR.rbCaixaClick(Sender: TObject);
begin
  inherited;
	If rbCaixa.Checked
	Then Begin
       rbBanco.Checked:=false;
       PAntecipaBanco.Visible := false;
       PAntecipaCaixa.Visible:=True;
       PAntecipaCaixa.BringToFront;
		SelecionaCaixas;
	End;
end;

procedure TFAntecipaCR.rbBancoClick(Sender: TObject);
begin
  inherited;
   If rbBanco.Checked
	Then Begin
		rbCaixa.Checked:=False;
       PAntecipaCaixa.Visible := false;
       PAntecipaBanco.Visible:=True;
       PAntecipaBanco.BringToFront;
       SelecionaBanco;
	End;
end;

procedure TFAntecipaCR.Button1Click(Sender: TObject);
begin
  inherited;
       rbBanco.Checked := True;
       rbBancoClick(Self);
end;

procedure TFAntecipaCR.DbgSelecionaCtaCorrenteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_RETURN
	Then Begin
       xCodigoAbBanco := MDO.QConsulta.FieldByName('COD_ABBANCO').AsInteger;
	End;
end;

procedure TFAntecipaCR.DbgSelecionaCaixaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_RETURN
	Then Begin
       xCodigoAbCaixa := MDO.QConsulta.FieldByName('COD_ABCAIXA').AsInteger;
	End;
end;

procedure TFAntecipaCR.btnAnteciparValoresClick(Sender: TObject);

begin
  inherited;
	If MessageDlg('Confirma a antecipação de R$ '+ edSaldoAntecipacao.Text + ' na instituição '+ MDO.QConsulta.FieldByName('INSTITUICAO').AsString+'?', mtConfirmation, [mbYes, mbNo], 0)=mryes
	Then Begin
       If LancaAntecipacao = true Then
           Close;
	End;
end;

procedure TFAntecipaCR.LiquidarConta1Click(Sender: TObject);
begin
  inherited;
	If MessageDlg('Confirma a liquidação da conta '+ DMCONTA.WParR.FieldByName('NUMPARC').AsString+ ' de valor R$ '+FormatFloat('0.00', DMCONTA.WParR.FieldByName('VALOR').AsCurrency)+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes
	Then Begin
		If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMCONTA.WParR.FieldByName('COD_PARCELACR').AsString, '')
		Then Begin
			DMCONTA.TParcCR.Edit;
       	DMCONTA.TParcCR.FieldByName('FECH').AsString := 'S';
       	DMCONTA.TParcCR.FieldByName('ESTRU').AsString := '1';
       	DMCONTA.TParcCR.Post;
       	DMCONTA.IBT.CommitRetaining;
           PreparaLiquidacao;
		End;
	End;
end;

procedure TFAntecipaCR.EdNumParcKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If key = #13
	Then Begin
       FiltraContasLiquidacao('DOCUMENTO');
	End;
	If key = #27
	Then Begin
       FiltraContasLiquidacao('');
	End;
end;

procedure TFAntecipaCR.EdVencimentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If key = #13
	Then Begin
       FiltraContasLiquidacao('VENCIMENTO');
	End;
	If key = #27
	Then Begin
       FiltraContasLiquidacao('');
	End;
end;

procedure TFAntecipaCR.rbCaixaEstornoClick(Sender: TObject);
begin
  inherited;
	If rbCaixaEstorno.Checked
	Then Begin
       rbBancoEstorno.Checked:=false;
       PAntecipaBancoEstorno.Visible := false;
       PAntecipaCaixaEstorno.Visible:=True;
       PAntecipaCaixaEstorno.BringToFront;
		SelecionaCaixasEstorno;
	End;

end;

procedure TFAntecipaCR.rbBancoEstornoClick(Sender: TObject);
begin
  inherited;
   If rbBancoEstorno.Checked
	Then Begin
		rbCaixaEstorno.Checked:=False;
       PAntecipaCaixaEstorno.Visible := false;
       PAntecipaBancoEstorno.Visible:=True;
       PAntecipaBancoEstorno.BringToFront;
       SelecionaBancoEstorno;
	End;
end;

procedure TFAntecipaCR.btnEstornaValoresClick(Sender: TObject);
begin
  inherited;
	If MessageDlg('Confirma o estorno de R$ '+ EdValorEstorno.Text + ' na instituição '+ MDO.QConsulta.FieldByName('INSTITUICAO').AsString+'?', mtConfirmation, [mbYes, mbNo], 0)=mryes
	Then Begin
       If LancaEstornoAntecipacao = true Then
           Close;
	End;
end;

procedure TFAntecipaCR.FrmContaTaxaEstornoBTNOPENClick(Sender: TObject);
begin
  inherited;
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+'D'+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');
   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	xCodigoContaTaxaEstorno:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmContaTaxaEstorno.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmContaTaxaEstorno.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;

end;

procedure TFAntecipaCR.FrmContaTaxaEstornoEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
 		If FrmContaTaxaEstorno.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+FrmContaTaxaEstorno.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	xCodigoContaTaxaEstorno:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmContaTaxaEstorno.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmContaTaxaEstorno.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	xCodigoContaTaxaEstorno:=0;
		      	FrmContaTaxaEstorno.EdDescricao.Text:='';
		      	FrmContaTaxaEstorno.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	xCodigoContaTaxaEstorno:=0;
	      	FrmContaTaxaEstorno.EdDescricao.Text:='';
	      	FrmContaTaxaEstorno.EDCodigo.text:='';
       End;
   End;
end;

procedure TFAntecipaCR.FrmContaBTNOPENClick(Sender: TObject);
begin
  inherited;
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+'D'+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');
   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	xCodigoContaTaxaAntecipacao:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
end;

procedure TFAntecipaCR.FrmContaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
 		If FrmConta.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+FrmConta.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	xCodigoContaTaxaAntecipacao:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	xCodigoContaTaxaAntecipacao:=0;
		      	FrmConta.EdDescricao.Text:='';
		      	FrmConta.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	xCodigoContaTaxaAntecipacao:=0;
	      	FrmConta.EdDescricao.Text:='';
	      	FrmConta.EDCodigo.text:='';
       End;
   End;
end;

end.
