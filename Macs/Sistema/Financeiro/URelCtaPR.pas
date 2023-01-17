unit URelCtaPR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoRelatorio, ExtCtrls, FR_DSet, FR_DBSet, FR_Class, TFlatHintUnit,
  StdCtrls, Buttons, jpeg, Mask, UFrmBusca, Grids, DBGrids, QuickRpt,
  Qrctrls, DrLabel, cxContainer, cxEdit, DBCtrls;
  
type
  TFRelCtaPR = class(TFPadraoRelatorio)
    QRCta_Mens: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRDBRichText1: TQRDBRichText;
    QRGroup1: TQRGroup;
    QRCompositeReport1: TQRCompositeReport;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    EdDataIni: TMaskEdit;
    EdDataFim: TMaskEdit;
    RGESCOLHA: TRadioGroup;
    RGORDEM: TRadioGroup;
    RGTIPODT: TRadioGroup;
    FrmPessoaIni: TFrmBusca;
    FrmPessoaFim: TFrmBusca;
    FrmConta: TFrmBusca;
    PTipoFornec: TPanel;
    Label5: TLabel;
    CBTIPOFOR: TComboBox;
    LPgto: TLabel;
    CBTipoPag: TComboBox;
    PTipoCliente: TPanel;
    LCliente: TLabel;
    CBFiltroCliente: TComboBox;
    GBSCPC: TGroupBox;
    RBTodos: TRadioButton;
    RBClientesInclusos: TRadioButton;
    RBClientesNInclusos: TRadioButton;
    DBGrid1: TDBGrid;
    GBTipo: TGroupBox;
    CBNormal: TCheckBox;
    CBReserva: TCheckBox;
    CBPromocao: TCheckBox;
    CBCondominio: TCheckBox;
    cxEditStyleController1: TcxEditStyleController;
    GroupBox6: TGroupBox;
    Label7: TLabel;
    Label6: TLabel;
    EdDataIniAux: TMaskEdit;
    EdDataFimAux: TMaskEdit;
    RGTipo: TRadioGroup;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    RDRECAVULSO: TRadioGroup;
    BtnOk: TBitBtn;
    ReciboAvulsoReceber: TQuickRep;
    QRBand6: TQRBand;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRLabel84: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    DescRecAvulso: TPanel;
    Emitente: TLabel;
    edEmitente: TEdit;
    edEmitenteEnd: TEdit;
    EmitenteEnd: TLabel;
    Documento: TLabel;
    edDocumento: TEdit;
    Valor: TLabel;
    edValor: TEdit;
    EdCNPJ: TEdit;
    CNPJ: TLabel;
    Receb: TLabel;
    EdReceb: TEdit;
    Endereco: TLabel;
    EdEndereco: TEdit;
    Municipio: TLabel;
    EdMunicipio: TEdit;
    Estado: TLabel;
    edEstado: TEdit;
    Referente: TLabel;
    edReferente: TEdit;
    RazSoc: TLabel;
    edRazSoc: TEdit;
    InsEst: TLabel;
    edInsEst: TEdit;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    BitBtn3: TBitBtn;
    GroupBox9: TGroupBox;
    BitBtn4: TBitBtn;
    GroupBox10: TGroupBox;
    BitBtn5: TBitBtn;
    rgFiltroTipoRel: TRadioGroup;
    LData: TLabel;
    EdData: TMaskEdit;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    GBContasAntecipadas: TGroupBox;
    CBAntecipadoSemFiltro: TCheckBox;
    CbAntecipadoSomenteAntecipados: TCheckBox;
    CBAntecipadosSomenteNaoAntecipados: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure FrmPessoaIniBTNMINUSClick(Sender: TObject);
    procedure FrmPessoaFimBTNMINUSClick(Sender: TObject);
    procedure FrmPessoaIniBTNOPENClick(Sender: TObject);
    procedure FrmPessoaFimBTNOPENClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FrmPessoaIniEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure CBTIPOFORKeyPress(Sender: TObject; var Key: Char);
    procedure FrmContaBTNMINUSClick(Sender: TObject);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure FrmPessoaFimEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmPessoaIniEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmPessoaFimEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmContaEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmContaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure RGTIPODTClick(Sender: TObject);
    procedure EdDataIniAuxExit(Sender: TObject);
    procedure EdDataFimAuxExit(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure QRBRecFinBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure CBAntecipadoSemFiltroClick(Sender: TObject);
    procedure CbAntecipadoSomenteAntecipadosClick(Sender: TObject);
    procedure CBAntecipadosSomenteNaoAntecipadosClick(Sender: TObject);


  private
    { Private declarations }
    Function PrepareImp:Boolean;//verifica qual o tipo de relatório pedido e executa sql
  public
   // faz as configurações do formulario para ctas a pagar de fornecedor
   Procedure ConfiguraCtaFornecedor;
   // faz as configurações do formulario para ctas a receber de cliente
   Procedure ConfiguraCtaClientes;
   // conmfigurações para relatorio de plano de contas
   Procedure ConfiguraPlanoCtas;
   // faz as configurações do formulario para rateio de contas
   Procedure ConfiguraRateioContas;
   //Paulo 10/10/2011: Configura formulário para contas vencidas
   Procedure ConfiguraCtaVencida;
   //Edmar - 18/06/2014 - Configura relatorio de contas de lançamentos
   Procedure ConfiguraContasLancamentos;
  end;

var
  FRelCtaPR: TFRelCtaPR;
  XPessoaIni, XPessoaFim: String;
  XCONTA: INTEGER;
  XACUMULAVALOR: Real;
  xtmp: WideString;

implementation

uses UMenu, UDMPessoa, UFORNECEDOR, UCliente, Alxor32, UDMConta, UDMMacs,
  UDMCaixa, UDMEstoque, UConsPlncta, UMensagem, UMessage, UPadrao,
  TFlatEditUnit, AlxMessage, DB, UDMFinanc, UDMGEOGRAFIA, URelGraficoPizza;

{$R *.DFM}

//verifica qual o tipo de relatório pedido e executa sql
Function TFRelCtaPR.PrepareImp:Boolean;
Var
	XJuncao: String;
	TIPO: STRING;
  TIPODT: STRING;
  XENTRADA: REAL; // ENTRADA EM LANCAIXA
  XSAIDA: REAL; // SAIDA EM LANCAIXA
  XBANCOCAIXA: integer; // SE VALER 1, PERTENCE SOMENTE A CAIXA
                        // SE VALER 2, PERTENCE SOMENTE A BANCO
                        // SE VALER 3 PERTENCE A CAIXA E BANCO
Begin
  Result := True;
	//FILTRA LOJA
  FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

	//PREPARA INFORMAÇÃO DE RESTRIÇÕES PARA RELATÓRIO
  If RGESCOLHA.ItemIndex=0 Then
   TIPO:='Pendentes';
  If RGESCOLHA.ItemIndex=1 Then
   TIPO:='Baixadas';
  If RGESCOLHA.ItemIndex=2 Then
   TIPO:='Caderneta';
  If RGESCOLHA.ItemIndex=3 Then
   TIPO:='Previsão';

  //PREPARA TIPO DE SELEÇÃO DE DATA
  If (FMenu.TIPOAUX='CP') or (FMenu.TIPOAUX='PREVISAO')
  Then Begin
   Case RGTIPODT.ItemIndex of
   	0: TIPODT:='ctapagar.dtlanc';
    1: TIPODT:='parcelacp.dtvenc';
    2: TIPODT:='parcelacp.DTDEBITO';
   End;
  End
	Else Begin
   Case RGTIPODT.ItemIndex of
   	0: TIPODT:='ctareceber.dtlanc';
    1: TIPODT:='parcelacr.dtvenc';
    2: TIPODT:='parcelacr.DTDEBITO';
   End;
	End;
  If FMenu.TIPOREL='RELCTAPFOR' Then//o tipo de relatório é Contas a Pagar agrupado por fornecedor
   TIPO:=TIPO+'/'+CBTIPOFOR.Text;

  FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
  DMMACS.TLoja.Edit;
  DMMACS.TLoja.FieldByName('TMP1').AsString:=TIPODT+' - Dt. Ini.: '+EdDataIni.Text+' / Dt. Fin.: '+ EdDataFim.Text+#13+ 'Pessoa Ini.: ' + FrmPessoaIni.EdDescricao.Text+' - Pessoa Fin.: '+FrmPessoaFim.EdDescricao.Text+#13+'Tipo: '+TIPO+' - Conta: '+FrmConta.EdDescricao.Text+' - Tipo: '+TIPO+' - Pagamento: '+CBTipoPag.Text;
  DMMACS.TLoja.Post;
  DMMACS.Transaction.CommitRetaining;
  FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

  //////////////////////////////////////
  //SQL PARA RELATORIOS DE CTAS A PAGAR
  //////////////////////////////////////

  // se for para os tres tipos abaixo de relatorio, eh editado as informações da loja para não ser necessario repetir
  If (FMenu.TIPOREL = 'RELCTA_CLIENTE') or (FMenu.TIPOREL = 'RELCTA_FORNECEDOR') or (FMenu.TIPOREL = 'REL_CTARATEIO')
  Then Begin
   FiltraTabela(DMMACS.TLoja,'LOJA','COD_LOJA',FMenu.LCODLOJA.Caption,'');
   DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('TMP2').AsString := '';
   DMMACS.TLoja.FieldByName('TMP1').AsString := '';
  End;

  // rateio de contas do shopping
  If (FMenu.TIPOREL = 'REL_CTARATEIO')
  Then Begin
   // ARMAZENA OS FILTROS
   TIPO := '';

   DMCONTA.TRel.Close;
   DMCONTA.TRel.SQL.Clear;
   DMCONTA.TRel.SQL.Add('select vwfornec.cod_fornec, vwfornec.cpfcnpj, vwfornec.nome FORNECEDOR, vwfornec.cod_interno,');
   DMCONTA.TRel.SQL.Add('ctapagar.cod_ctapagar, ctapagar.cod_fornec, ctapagar.dtlanc, ctapagar.cod_plncta, parcelacp.historico,');
   DMCONTA.TRel.SQL.Add('parcelacp.cobranca, parcelacp.cod_ctapagar, parcelacp.dtdebito, parcelacp.dtvenc,');
   DMCONTA.TRel.SQL.Add('parcelacp.fech, parcelacp.numparc, parcelacp.valor, parcelacp.valorpg, parcelacp.tipo,');
   DMCONTA.TRel.SQL.Add('formpag.cod_formpag, formpag.descricao,');
   DMCONTA.TRel.SQL.Add('plncta.cod_plncta, plncta.classificacao, plncta.descricao');
   DMCONTA.TRel.SQL.Add('from vwfornec');
   DMCONTA.TRel.SQL.Add('left join ctapagar on vwfornec.cod_fornec = ctapagar.cod_fornec');
   DMCONTA.TRel.SQL.Add('left join parcelacp on ctapagar.cod_ctapagar = parcelacp.cod_ctapagar');
   DMCONTA.TRel.SQL.Add('left join formpag on ctapagar.cod_formpag = formpag.cod_formpag');
   DMCONTA.TRel.SQL.Add('left join plncta on ctapagar.cod_plncta = plncta.cod_plncta');

   // CONTAS PENDENTES
   If RGESCOLHA.ItemIndex = 0
   Then Begin
    DMCONTA.TRel.SQL.Add('where parcelacp.fech = ' + #39 + 'N' + #39);

    TIPO := 'PARCELAS PENDENTES';
   End;

   // CONTAS BAIXADAS
   If RGESCOLHA.ItemIndex = 1
   Then Begin
    DMCONTA.TRel.SQL.Add('where parcelacp.fech = ' + #39 + 'S' + #39);

    TIPO := 'PARCELAS BAIXADAS';
   End;

   // CONTAS DE PROVISÃO - a parcela está pendente(não foi baixada) e provisionada
   If RGESCOLHA.ItemIndex = 2
   Then Begin
    DMCONTA.TRel.SQL.Add('where (parcelacp.fech =' + #39 + 'N' + #39 + ') and (parcelacp.previsao = ' + #39 + '1' + #39 + ')');

    TIPO := 'CTAS. PROVISÃO'
   End;

   // verifica se foi colocado data valida
   If (EdDataIni.Text <> '  /  /    ') and (EdDataFim.Text <> '  /  /    ')
   Then Begin
    Case RGTIPODT.ItemIndex of
     0: TIPODT:='ctapagar.dtlanc';
     1: TIPODT:='parcelacp.dtvenc';
     2: TIPODT:='parcelacp.DTDEBITO';
     3: TIPODT:='ctapagar.dtlanc';
    End;

    DMCONTA.TRel.SQL.Add('and (' + TIPODT + ' between :data1 and :data2)');
    DMCONTA.TRel.ParamByName('DATA1').AsDateTime := StrToDate(EdDataIni.Text);
    DMCONTA.TRel.ParamByName('DATA2').AsDateTime := StrToDate(EdDataFim.Text);

    TIPO := TIPO + ' - Intervalo Datas: ' + EdDataIni.Text + ' á ' + EdDataFim.Text;

   End;

   XJuncao := 'and';

   // CHECADO COMO CONTA NORMAL
   If CBNormal.Checked = true
   Then Begin
    DMCONTA.TRel.SQL.Add(XJuncao +  '(( parcelacp.tipo = ' + #39 + '1' + #39 + ') or ( parcelacp.tipo is null))');

    TIPO := TIPO + ' - Normal';

   End;

   // CHECADO COMO RESERVA
   If CBReserva.Checked = true
   Then Begin
    If CBNormal.Checked = true
    Then Begin
     XJuncao := 'or';
    End;
     DMCONTA.TRel.SQL.Add(XJuncao +  ' ( parcelacp.tipo = ' + #39 + '2' + #39 + ')');

     TIPO := TIPO + ' - Reserva';

   End;

   // CHECADO COMO PROMOÇÃO
   If CBPromocao.Checked = true
   Then Begin
    If (CBNormal.Checked = true) or (CBReserva.Checked = true)
    Then Begin
     XJuncao := 'or';
    End;
     DMCONTA.TRel.SQL.Add( XJuncao + ' ( parcelacp.tipo = ' + #39 + '3' + #39 + ')');

     TIPO := TIPO + ' - Promoção';
   End;

   // CHECADO COMO CONDOMINIO
   If CBCondominio.Checked = true
   Then Begin
    If (CBReserva.Checked = true) or (CBPromocao.Checked = true) or (CBNormal.Checked = true)
    Then Begin
     XJuncao := 'or';
    End;
    DMCONTA.TRel.SQL.Add(XJuncao +  ' ( parcelacp.tipo = ' + #39 + '4' + #39 + ')');

    TIPO := TIPO + ' - Condomínio';
   End;

   // verifica se foi selecinado mais de um fornecedor
   If (FrmPessoaIni.EDCodigo.Text <> FrmPessoaFim.EDCodigo.Text) and (FrmPessoaIni.EDCodigo.Text <> '') and (FrmPessoaFim.EDCodigo.Text <> '')
   Then Begin
    DMCONTA.TRel.SQL.Add('and (vwfornec.cod_interno between :cod_ini and :cod_fim)');
    DMCONTA.TRel.ParamByName('cod_ini').AsString := FrmPessoaIni.EDCodigo.Text;
    DMCONTA.TRel.ParamByName('cod_fim').AsString := FrmPessoaFim.EDCodigo.Text;

    TIPO := TIPO + ' - Fornec: ' + FrmPessoaIni.EdDescricao.Text + ' á ' + FrmPessoaFim.EdDescricao.Text;

   End;

   // verifica se foi selecionado o mesmo fornecedor
   If (FrmPessoaIni.EDCodigo.Text = FrmPessoaFim.EDCodigo.Text) and (FrmPessoaIni.EDCodigo.Text <> '') and (FrmPessoaFim.EDCodigo.Text <> '')
   Then Begin
    DMCONTA.TRel.SQL.Add('and (vwfornec.cod_interno = :codigo)');
    DMCONTA.TRel.ParamByName('codigo').AsString := FrmPessoaIni.EDCodigo.Text;

    TIPO := TIPO + ' - Fornec: ' + FrmPessoaIni.EdDescricao.Text;

   End;

   // verifica se foi escolhido algum plano de conta
   If FrmConta.EDCodigo.Text <> ''
   Then Begin
    DMCONTA.TRel.SQL.Add('and (plncta.classificacao = :codigo )');
    DMCONTA.TRel.ParamByName('codigo').AsString := FrmConta.EDCodigo.Text;

    TIPO := TIPO + ' Plano Cta: ' + FrmConta.EdDescricao.Text;
   End;

    DMCONTA.TRel.SQL.Add('ORDER BY PARCELACP.TIPO DESC');
    DMCONTA.TRel.Open;

    DMMACS.TLoja.FieldByName('TMP1').AsString := TIPO;
    DMMACS.TLoja.Post;
    DMMACS.Transaction.CommitRetaining;

   If DMCONTA.TRel.IsEmpty
   Then Begin
    Mensagem('   A T E N Ç Ã O   ','O relatório retornou vazio.','',1,1,false,'I');
    Exit;
   End;

   if RGTipo.ItemIndex = 0 then
    FSRel.LoadFromFile('C:\MZR\Macs\REL\FrfRateio.Frf');
   if RGTipo.ItemIndex = 1 then
    FSRel.LoadFromFile('C:\MZR\Macs\REL\FrfRateioAnalitico.Frf');
  End;

  // relatorio de plano de contas
  If FMenu.TIPOREL = 'REL_PLANOCONTAS'
  Then Begin
   // selecionando todos os planos de conta entre o intervalo das classificações
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('select * from plncta');
   If (FrmPessoaIni.EdDescricao.Text = FrmPessoaFim.EdDescricao.Text) and (FrmPessoaIni.EdDescricao.Text <> '')
   Then Begin
    DMCONTA.TAlx.SQL.Add('where (plncta.classificacao = :class1)');
    DMCONTA.TAlx.ParamByName('class1').AsString := FrmPessoaIni.EDCodigo.Text;
   End;
   If (FrmPessoaIni.EdDescricao.Text <> FrmPessoaFim.EdDescricao.Text) and (FrmPessoaIni.EdDescricao.Text <> '') and (FrmPessoaFim.EdDescricao.Text <> '')
   Then Begin
    DMCONTA.TAlx.SQL.Add('where (plncta.classificacao between :class1 and :class2)');
    DMCONTA.TAlx.ParamByName('class1').AsString := FrmPessoaIni.EDCodigo.Text;
    DMCONTA.TAlx.ParamByName('class2').AsString := FrmPessoaFim.EDCodigo.Text;
   End;
   DMCONTA.TAlx.Open;

   // primeiro registro
   DMCONTA.TAlx.First;

   // passando por todos os planos de conta selecionados
   While not DMCONTA.TAlx.Eof do
   begin
    // zerando variaveis
    XBANCOCAIXA := 0;
    XENTRADA := 0;
    XSAIDA := 0;

    DMCAIXA.TAlx.Close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add('select sum(lancaixa.valor) as TOTAL_ENTRADA from lancaixa where (lancaixa.cod_plnctafil = :codigo)');
    DMCAIXA.TAlx.SQL.Add('AND (lancaixa.dtlanc between :data1 and :data2)');
    DMCAIXA.TAlx.SQL.Add('AND (lancaixa.tipcai = ' + #39 + 'E' + #39 + ')');
    DMCAIXA.TAlx.ParamByName('codigo').AsInteger := DMCONTA.TAlx.FieldByName('cod_plncta').AsInteger;
    DMCAIXA.TAlx.ParamByName('data1').AsString := EdDataIni.Text;
    DMCAIXA.TAlx.ParamByName('data2').AsString := EdDataFim.Text;
    DMCAIXA.TAlx.Open;

    // TOTAL DE ENTRADA DE LANCAIXA DO PLANO DE CONTAS ATUAL
    If DMCAIXA.TAlx.FieldByname('TOTAL_ENTRADA').AsCurrency > 0
    Then Begin
     XENTRADA := DMCAIXA.TAlx.FieldByname('TOTAL_ENTRADA').AsCurrency;
     XBANCOCAIXA := 1;
    End;

    DMCAIXA.TAlx.Close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add('select sum(lancaixa.valor) as TOTAL_SAIDA from lancaixa where (lancaixa.cod_plnctafil = :codigo)');
    DMCAIXA.TAlx.SQL.Add('AND (lancaixa.dtlanc between :data1 and :data2)');
    DMCAIXA.TAlx.SQL.Add('AND (lancaixa.tipcai = ' + #39 + 'S' + #39 + ')');
    DMCAIXA.TAlx.ParamByName('codigo').AsInteger := DMCONTA.TAlx.FieldByName('cod_plncta').AsInteger;
    DMCAIXA.TAlx.ParamByName('data1').AsString := EdDataIni.Text;
    DMCAIXA.TAlx.ParamByName('data2').AsString := EdDataFim.Text;
    DMCAIXA.TAlx.Open;

    // TOTAL DE SAIDA DE LANCAIXA DO PLANO DE CONTAS ATUAL
    If DMCAIXA.TAlx.FieldByName('TOTAL_SAIDA').AsCurrency > 0
    Then Begin
     XSAIDA := DMCAIXA.TAlx.FieldByName('TOTAL_SAIDA').AsCurrency;
     XBANCOCAIXA := 1;
    End;

    // buscando todos os registros da tabela movbanco que possuam o mesmo codigo de plano de contas
    DMCAIXA.TAlx.Close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add('select sum(movbanco.valor) AS TOTAL_ENTRADA from movbanco where movbanco.cod_plncta = :codigo');
    DMCAIXA.TAlx.SQL.Add('AND (movbanco.dtlanc between :data1 and :data2)');
    DMCAIXA.TAlx.SQL.Add('AND (movbanco.tipoop = ' + #39 + 'ENTRADA' + #39 + ')');
    DMCAIXA.TAlx.ParamByName('codigo').AsInteger := DMCONTA.TAlx.FieldByName('cod_plncta').AsInteger;
    DMCAIXA.TAlx.ParamByName('data1').AsString := EdDataIni.Text;
    DMCAIXA.TAlx.ParamByName('data2').AsString := EdDataFim.Text;
    DMCAIXA.TAlx.Open;

    If DMCAIXA.TAlx.FieldByName('TOTAL_ENTRADA').AsCurrency > 0
    Then Begin
     XENTRADA := XENTRADA + DMCAIXA.TAlx.FieldByName('TOTAL_ENTRADA').AsCurrency;
     XBANCOCAIXA := XBANCOCAIXA + 2;
    End;

    // buscando todos os registros da tabela movbanco que possuam o mesmo codigo de plano de contas
    DMCAIXA.TAlx.Close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add('select sum(movbanco.valor) AS TOTAL_SAIDA from movbanco where movbanco.cod_plncta = :codigo');
    DMCAIXA.TAlx.SQL.Add('AND (movbanco.dtlanc between :data1 and :data2)');
    DMCAIXA.TAlx.SQL.Add('AND (movbanco.tipoop = ' + #39 + 'SAIDA' + #39 + ')');
    DMCAIXA.TAlx.ParamByName('codigo').AsInteger := DMCONTA.TAlx.FieldByName('cod_plncta').AsInteger;
    DMCAIXA.TAlx.ParamByName('data1').AsString := EdDataIni.Text;
    DMCAIXA.TAlx.ParamByName('data2').AsString := EdDataFim.Text;
    DMCAIXA.TAlx.Open;

    If DMCAIXA.TAlx.FieldByName('TOTAL_SAIDA').AsCurrency > 0
    Then Begin
     XSAIDA := XSAIDA + DMCAIXA.TAlx.FieldByName('TOTAL_SAIDA').AsCurrency;
     // se estiver alendo 1 eh pq lancaixa tbm possui o mesmo plano de contas e como passou no movbanco, eh pq pertence as duas tabelas
     If XBANCOCAIXA = 1 Then
      XBANCOCAIXA := XBANCOCAIXA + 2
     Else
      XBANCOCAIXA := 2;
    End;

    // localizando plano de contas
    If FiltraTabela(DMCONTA.TPlnCta,'PLNCTA','COD_PLNCTA',DMCONTA.TAlx.FieldByName('COD_PLNCTA').AsString,'') = true
    Then Begin
     // editando plano de contas - São variaveis temporarias que apenas acumulam valores para serem exibidos no relatorio
     DMCONTA.TPlnCta.Edit;
     // se refere as entradas
     DMCONTA.TPlnCta.FieldByName('PERPREV').AsCurrency := XENTRADA;
     // se refere as saidas
     DMCONTA.TPlnCta.FieldByName('PERREAL').AsCurrency := XSAIDA;
     // SE VALER 1, PERTENCE SOMENTE A CAIXA
     // SE VALER 2, PERTENCE SOMENTE A BANCO
     // SE VALER 3 PERTENCE A CAIXA E BANCO
     DMCONTA.TPlnCta.FieldByName('NIVEL').AsCurrency := XBANCOCAIXA;
     DMCONTA.TPlnCta.Post;
     DMCONTA.IBT.CommitRetaining;
    End;

    // proximo plano de contas
    DMCONTA.TAlx.Next;
   end;

   DMCONTA.TRel.Close;
   DMCONTA.TRel.SQL.Clear;
   DMCONTA.TRel.SQL.Add('select * from plncta');
   If (FrmPessoaIni.EdDescricao.Text = FrmPessoaFim.EdDescricao.Text) and (FrmPessoaIni.EdDescricao.Text <> '')
   Then Begin
    DMCONTA.TRel.SQL.Add('where (plncta.classificacao = :class1)');
    DMCONTA.TRel.ParamByName('class1').AsString := FrmPessoaIni.EDCodigo.Text;
   End;
   If (FrmPessoaIni.EdDescricao.Text <> FrmPessoaFim.EdDescricao.Text) and (FrmPessoaIni.EdDescricao.Text <> '') and (FrmPessoaFim.EdDescricao.Text <> '')
   Then Begin
    DMCONTA.TRel.SQL.Add('where (plncta.classificacao between :class1 and :class2)');
    DMCONTA.TRel.ParamByName('class1').AsString := FrmPessoaIni.EDCodigo.Text;
    DMCONTA.TRel.ParamByName('class2').AsString := FrmPessoaFim.EDCodigo.Text;
   End;
    DMCONTA.TRel.SQL.Add('order by descricao');
    DMCONTA.TRel.Open;

   FSRel.LoadFromFile('C:\MZR\Macs\REL\FrfRelPlanoConta.Frf');
   FrmPessoaIni.Refresh;
   FrmPessoaFim.Refresh;
   GroupBox5.Refresh;

   End;

   If FMenu.TIPOREL = 'RELCTA_CLIENTE'
   Then Begin
       DMCONTA.TRel.Close;
       DMCONTA.TRel.SQL.Clear;
       DMCONTA.TRel.SQL.Add('select ctareceber.cod_ctareceber, ctareceber.cod_cliente, ctareceber.cod_plncta, ctareceber.dtlanc,');
       DMCONTA.TRel.SQL.Add('parcelacr.cod_ctareceber, parcelacr.cod_parcelacr, parcelacr.historico, parcelacr.numparc, parcelacr.valorpg, parcelacr.valor,parcelacr.dtdebito,');
       DMCONTA.TRel.SQL.Add('vwcliente.cod_cliente, vwcliente.cpfcnpj, vwcliente.nome, vwcliente.telrel');
       DMCONTA.TRel.SQL.Add('from parcelacr');
       DMCONTA.TRel.SQL.Add('left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber');
       DMCONTA.TRel.SQL.Add('left join vwcliente on ctareceber.cod_cliente = vwcliente.cod_cliente');
       DMCONTA.TRel.SQL.Add('where');

       // se o usuario selecionou os dois fornecedores, a sql ira buscar todos os dados referente ao intervalo de vendedores
       If (FrmPessoaIni.EdDescricao.Text <> '') and (FrmPessoaFim.EdDescricao.Text <> '')
       Then Begin
           // se os codigos forem diferentes, foi selecionado mais de um fornecedor
           If FrmPessoaIni.EDCodigo.Text <> FrmPessoaFim.EDCodigo.Text
           Then Begin
               DMCONTA.TRel.SQL.Add('(vwcliente.cod_cliente between :codigo1 and :codigo2) AND');
               DMCONTA.TRel.ParamByName('codigo1').AsString := FrmPessoaIni.EDCodigo.Text;
               DMCONTA.TRel.ParamByName('codigo2').AsString := FrmPessoaFim.EDCodigo.Text;
               DMMACS.TLoja.FieldByName('TMP2').AsString := 'Cliente: ' + FrmPessoaIni.EdDescricao.Text +' a ' + FrmPessoaFim.EdDescricao.Text + ' - ';
           End
           Else Begin
               DMCONTA.TRel.SQL.Add('(vwcliente.cod_cliente = :codigo1) AND');
               DMCONTA.TRel.ParamByName('codigo1').AsString := FrmPessoaIni.EDCodigo.Text;
               DMMACS.TLoja.FieldByName('TMP2').AsString := 'Cliente: ' + FrmPessoaIni.EdDescricao.Text + ' - ';
           End;
       End;

       If FrmConta.EdDescricao.Text <> ''
       Then Begin
           DMCONTA.TRel.SQL.Add('(ctareceber.cod_plncta = :codigo) AND');
           DMCONTA.TRel.ParamByName('codigo').AsInteger := XConta;
           DMMACS.TLoja.FieldByName('TMP2').AsString := DMMACS.TLoja.FieldByName('TMP2').AsString + ' Plano de cta.: ' + Copy(FrmConta.EdDescricao.Text,0,30) ;
       End;

       If RGTIPODT.ItemIndex=0 Then
       	DMCONTA.TRel.SQL.Add('(ctareceber.dtlanc >= :data_ini and ctareceber.dtlanc <= :data_fim)');

       If RGTIPODT.ItemIndex=1 Then
       	DMCONTA.TRel.SQL.Add('(parcelacr.dtvenc >= :data_ini and parcelacr.dtvenc <= :data_fim)');

       If RGTIPODT.ItemIndex=2 Then
       	DMCONTA.TRel.SQL.Add('(parcelacr.dtdebito >= :data_ini and parcelacr.dtdebito <= :data_fim)');


       DMCONTA.TRel.ParamByName('data_ini').AsString := EdDataIni.Text;
       DMCONTA.TRel.ParamByName('data_fim').AsString := EdDataFim.Text;

       DMMACS.TLoja.FieldByName('TMP1').AsString := 'Intervalo datas: ' + EdDataIni.Text + ' a ' + EdDataFim.Text;
       DMMACS.TLoja.Post;
       DMMACS.Transaction.CommitRetaining;
       DMCONTA.TRel.SQL.Add('ORDER BY VWCLIENTE.NOME, PARCELACR.HISTORICO');
       DMCONTA.TRel.Open;

       If DMCONTA.TRel.IsEmpty
       Then Begin
           Mensagem('   A T E N Ç Ã O   ','O relatório retornou vazio.','',1,1,false,'I');
           Exit;
       End;

       FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaRecCliente.frf');
   End;

   If FMenu.TIPOREL = 'RELCTA_FORNECEDOR'
   Then Begin
       DMCONTA.TRel.Close;
       DMCONTA.TRel.SQL.Clear;
       DMCONTA.TRel.SQL.Add('select ctapagar.cod_ctapagar, ctapagar.cod_fornec, ctapagar.cod_plncta, ctapagar.dtlanc,');
       DMCONTA.TRel.SQL.Add('parcelacp.cod_ctapagar, parcelacp.cod_parcelacp, parcelacp.dtdebito, parcelacp.fech, parcelacp.historico, parcelacp.valor, parcelacp.valorpg, parcelacp.numparc,');
       DMCONTA.TRel.SQL.Add('vwfornec.cod_fornec, vwfornec.nome, vwfornec.cpfcnpj');
       DMCONTA.TRel.SQL.Add('from parcelacp');
       DMCONTA.TRel.SQL.Add('left join ctapagar on parcelacp.cod_ctapagar = ctapagar.cod_ctapagar');
       DMCONTA.TRel.SQL.Add('left join vwfornec on ctapagar.cod_fornec = vwfornec.cod_fornec');
       DMCONTA.TRel.SQL.Add('where');

       // se o usuario selecionou os dois fornecedores, a sql ira buscar todos os dados referente ao intervalo de vendedores
       If (FrmPessoaIni.EdDescricao.Text <> '') and (FrmPessoaFim.EdDescricao.Text <> '')
       Then Begin
           // se os codigos forem diferentes, foi selecionado mais de um fornecedor
           If FrmPessoaIni.EDCodigo.Text <> FrmPessoaFim.EDCodigo.Text
           Then Begin
               DMCONTA.TRel.SQL.Add('(vwfornec.cod_fornec between :codigo1 and :codigo2) AND');
               DMCONTA.TRel.ParamByName('codigo1').AsString := FrmPessoaIni.EDCodigo.Text;
               DMCONTA.TRel.ParamByName('codigo2').AsString := FrmPessoaFim.EDCodigo.Text;
               DMMACS.TLoja.FieldByName('TMP2').AsString := 'Fornecedor: ' + FrmPessoaIni.EdDescricao.Text +' a ' + FrmPessoaFim.EdDescricao.Text + ' - ';
           End
           Else Begin
               DMCONTA.TRel.SQL.Add('(vwfornec.cod_fornec = :codigo1) AND');
               DMCONTA.TRel.ParamByName('codigo1').AsString := FrmPessoaIni.EDCodigo.Text;
               DMMACS.TLoja.FieldByName('TMP2').AsString := 'Fornecedor: ' + FrmPessoaIni.EdDescricao.Text + ' - ';
           End;
       End;

       If FrmConta.EdDescricao.Text <> ''
       Then Begin
           DMCONTA.TRel.SQL.Add('(ctapagar.cod_plncta = :codigo) AND');
           DMCONTA.TRel.ParamByName('codigo').AsInteger := XConta;
           DMMACS.TLoja.FieldByName('TMP2').AsString := DMMACS.TLoja.FieldByName('TMP2').AsString + ' Plano de cta.: ' + Copy(FrmConta.EdDescricao.Text,0,30) ;
       End;

       DMCONTA.TRel.SQL.Add('(ctapagar.dtlanc >= :data_ini and ctapagar.dtlanc <= :data_fim)');
       DMCONTA.TRel.ParamByName('data_ini').AsString := EdDataIni.Text;
       DMCONTA.TRel.ParamByName('data_fim').AsString := EdDataFim.Text;

       DMMACS.TLoja.FieldByName('TMP1').AsString := 'Intervalo datas: ' + EdDataIni.Text + ' a ' + EdDataFim.Text;
       DMMACS.TLoja.Post;
       DMMACS.Transaction.CommitRetaining;
       DMCONTA.TRel.SQL.Add('ORDER BY VWFORNEC.NOME, PARCELACP.HISTORICO');
       DMCONTA.TRel.Open;

       If DMCONTA.TRel.IsEmpty
       Then Begin
           Mensagem('   A T E N Ç Ã O   ','O relatório retornou vazio.','',1,1,false,'I');
           Exit;
       End;

       if RGTipo.ItemIndex = 0 then
            FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaPagarFornecSimples.Frf');
       if RGTipo.ItemIndex = 1 then
           FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaPagarFornec.Frf');
       


   End;

   If FMenu.TIPOREL='RELCTAPDATA'
   Then Begin//o tipo de relatório é Contas a Pagar agrupado por dia
      TIPO:=TIPO+'/'+CBTIPOFOR.Text;
	   XJuncao:=' AND ';
	   DMCONTA.TRel.Close;
	   DMCONTA.TRel.SQL.Clear;
	   DMCONTA.TRel.SQL.Add(' SELECT parcelacp.cobranca, parcelacp.desconto, parcelacp.dtdebito, parcelacp.dtvenc, ');
	   DMCONTA.TRel.SQL.Add(' parcelacp.juros, parcelacp.multas, parcelacp.numparc, parcelacp.valor, parcelacp.valorpg, ');
	   DMCONTA.TRel.SQL.Add(' ctapagar.cod_usuario, ctapagar.dtlanc, ctapagar.historico, ctapagar.numdoc, ');
	   DMCONTA.TRel.SQL.Add(' fornecedor.cod_interno, pessoa.nome, Pessoa.Telrel ');
	   DMCONTA.TRel.SQL.Add(' FROM parcelacp join ctapagar on parcelacp.cod_ctapagar=ctapagar.cod_ctapagar ');
	   DMCONTA.TRel.SQL.Add(' left join fornecedor on ctapagar.cod_fornec = fornecedor.cod_fornec ');
	   DMCONTA.TRel.SQL.Add(' left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa ');
	   DMCONTA.TRel.SQL.Add(' left join FORMPAG on CTAPAGAR.COD_FORMPAG = FORMPAG.COD_FORMPAG ');
	   DMCONTA.TRel.SQL.Add(' WHERE (FORMPAG.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
      If (PTipoFornec.Visible=True) And (CBTIPOFOR.Text<>'<TODOS>')
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (fornecedor.tipo=:TIPOFORNEC) ');
			DMCONTA.TRel.ParamByName('TIPOFORNEC').AsString:=CBTipoPag.Text;
	        XJuncao:=' And ';
      End;

      If CBTipoPag.Text<>'<TODOS>'
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (parcelacp.cobranca=:COBRANCA) ');
			DMCONTA.TRel.ParamByName('COBRANCA').AsString:=CBTIPOPAG.Text;
	        XJuncao:=' And ';
      End;

	   If (EdDataIni.Text<>'') And (EdDataFim.Text<>'')
	   Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ('+TIPODT+' Between :Data1 and :Data2) ');
			DMCONTA.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
			DMCONTA.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
	        XJuncao:=' And ';
	   End;
      If (XCONTA<>-1)
      Then Begin
      		DMCONTA.TRel.SQL.Add(' AND (ctapagar.COD_PLNCTA = :ContaPln)');
   		DMCONTA.TRel.ParamByName('ContaPln').AsInteger:=XCONTA;
      End;
	   If (XPessoaIni<>'') and (XPessoaFim<>'')
	   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
		   	DMCONTA.TRel.SQL.Add(XJuncao+' (PESSOA.NOME Between :PES1 And :PES2)');
		   	DMCONTA.TRel.ParamByName('PES1').AsString:=XPessoaIni;
		   	DMCONTA.TRel.ParamByName('PES2').AsString:=XPessoaFim;
	        XJuncao:=' And ';
	   End;

	   If RGESCOLHA.ItemIndex=0
	   Then Begin//se for pedido apenas relatório de pendentes
			DMCONTA.TRel.SQL.Add(XJuncao+' ((PARCELACP.FECH<>'+#39+'S'+#39+') OR (PARCELACP.FECH IS NULL))');
	        XJuncao:= ' AND ';
	   End;
	   If RGESCOLHA.ItemIndex=1
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+' (PARCELACP.FECH='+#39+'S'+#39+')');
	        XJuncao:= ' AND ';
	   End;

      If CbAntecipadoSomenteAntecipados.Checked = true
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ( parcelacr.antecipado=''1'') ');
	        XJuncao:=' And ';
      End;
      If CBAntecipadosSomenteNaoAntecipados.Checked = true
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (( parcelacr.antecipado=''0'') or (parcelacr.antecipado is null)) ');
	        XJuncao:=' And ';
      End;

	   If RGESCOLHA.ItemIndex=3
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+' ((PARCELACP.FECH<>'+#39+'S'+#39+') And  (PARCELACP.PREVISAO='+#39+'1'+#39+'))');
	        XJuncao:= ' AND ';
	   End;
	   DMCONTA.TRel.SQL.Add(' order by parcelacp.dtvenc, pessoa.nome, ctapagar.numdoc, ctapagar.dtlanc ');
      DMCONTA.TRel.Open;
      
  	   DMMACS.TLoja.Edit;
      DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Contas a Pagar/Data';
      DMMACS.TLoja.Post;
      DMMACS.Transaction.CommitRetaining;
      FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaPagPend_Dia.frf');

   End;

   If FMenu.TIPOREL='RELCTAPFOR'
   Then Begin//o tipo de relatório é Contas a Pagar agrupado por fornecedor
      TIPO:=TIPO+'/'+CBTIPOFOR.Text;
	   XJuncao:=' AND ';
	   DMCONTA.TRel.Close;
	   DMCONTA.TRel.SQL.Clear;
	   DMCONTA.TRel.SQL.Add(' SELECT parcelacp.cobranca, parcelacp.desconto, parcelacp.dtdebito, parcelacp.dtvenc, ');
	   DMCONTA.TRel.SQL.Add(' parcelacp.juros, parcelacp.multas, parcelacp.numparc, parcelacp.valor, parcelacp.valorpg, ');
	   DMCONTA.TRel.SQL.Add(' ctapagar.cod_usuario, ctapagar.dtlanc, ctapagar.historico, ctapagar.numdoc, ');
	   DMCONTA.TRel.SQL.Add(' fornecedor.cod_interno, pessoa.nome, Pessoa.Telrel ');
	   DMCONTA.TRel.SQL.Add(' FROM parcelacp join ctapagar on parcelacp.cod_ctapagar=ctapagar.cod_ctapagar ');
	   DMCONTA.TRel.SQL.Add(' left join fornecedor on ctapagar.cod_fornec = fornecedor.cod_fornec ');
	   DMCONTA.TRel.SQL.Add(' left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa ');
	   DMCONTA.TRel.SQL.Add(' left join FORMPAG on CTAPAGAR.COD_FORMPAG = FORMPAG.COD_FORMPAG ');
	   DMCONTA.TRel.SQL.Add(' WHERE (FORMPAG.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
      If (PTipoFornec.Visible=True) And (CBTIPOFOR.Text<>'<TODOS>')
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (fornecedor.tipo=:TIPOFORNEC) ');
			DMCONTA.TRel.ParamByName('TIPOFORNEC').AsString:=CBTipoPag.Text;
	        XJuncao:=' And ';
      End;

      If CBTipoPag.Text<>'<TODOS>'
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (parcelacp.cobranca=:COBRANCA) ');
			DMCONTA.TRel.ParamByName('COBRANCA').AsString:=CBTIPOPAG.Text;
	        XJuncao:=' And ';
      End;

	   If (EdDataIni.Text<>'') And (EdDataFim.Text<>'')
	   Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ('+TIPODT+' >=:Data1) and ('+TIPODT+' <= :Data2) ');
			DMCONTA.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
			DMCONTA.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
	        XJuncao:=' And ';
	   End;
      If (XCONTA<>-1)
      Then Begin
      		DMCONTA.TRel.SQL.Add(' AND (ctapagar.COD_PLNCTA = :ContaPln)');
   		DMCONTA.TRel.ParamByName('ContaPln').AsInteger:=XCONTA;
      End;
	   If (XPessoaIni<>'') and (XPessoaFim<>'')
	   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
		   	DMCONTA.TRel.SQL.Add(XJuncao+' (PESSOA.NOME Between :PES1 And :PES2)');
		   	DMCONTA.TRel.ParamByName('PES1').AsString:=XPessoaIni;
		   	DMCONTA.TRel.ParamByName('PES2').AsString:=XPessoaFim;
	        XJuncao:=' And ';
	   End;

	   If rgFiltroTipoRel.ItemIndex=0
	   Then Begin//se for pedido apenas relatório de pendentes
			DMCONTA.TRel.SQL.Add(XJuncao+' ((PARCELACP.FECH<>'+#39+'S'+#39+') OR (PARCELACP.FECH IS NULL))');
	        XJuncao:= ' AND ';
	   End;
	   If rgFiltroTipoRel.ItemIndex=1
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+' (PARCELACP.FECH='+#39+'S'+#39+')');
	        XJuncao:= ' AND ';
	   End;
	   If RGESCOLHA.ItemIndex=3
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+' ((PARCELACP.FECH<>'+#39+'S'+#39+') And  (PARCELACP.PREVISAO='+#39+'1'+#39+'))');
	        XJuncao:= ' AND ';
	   End;

  	   DMMACS.TLoja.Edit;
      DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Contas a Pagar/Fornecedores';
      DMMACS.TLoja.Post;
      DMMACS.Transaction.CommitRetaining;
      FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaPagPend_For.frf');
	   DMCONTA.TRel.SQL.Add(' order by pessoa.nome, ctapagar.numdoc, ctapagar.dtlanc, parcelacp.dtvenc ');
   End;

   If FMenu.TIPOREL='RELCTAPMENS'
   Then Begin//o tipo de relatório é Contas a Pagar agrupado por fornecedor
	   XJuncao:=' AND ';
	   DMCONTA.TRel.Close;
	   DMCONTA.TRel.SQL.Clear;
	   DMCONTA.TRel.SQL.Add('  select * From vwparcp ');
	   DMCONTA.TRel.SQL.Add('   left join ctapagar ON ctapagar.cod_ctapagar=vwparcp.cod_ctapagar ');
	   DMCONTA.TRel.SQL.Add('   Left Join fornecedor on Fornecedor.cod_fornec=vwparcp.cod_fornec ');
	   DMCONTA.TRel.SQL.Add('   left join pessoa on pessoa.cod_pessoa=fornecedor.cod_pessoa ');
	   DMCONTA.TRel.SQL.Add('   Where (vwparcp.cod_loja=:CODLOJA) AND (vwparcp.cod_fornec IS NOT NULL) ');
      DMCONTA.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
{	   If (EdDataIni.Text<>'') And (EdDataFim.Text<>'')
	   Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (vwparcp.dtvenc Between :Data1 and :Data2) ');
			DMCONTA.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
			DMCONTA.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
	        XJuncao:=' And ';
	   End;}
      If CBTipoPag.Text<>'<TODOS>'
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (vwparcp.cobranca=:COBRANCA) ');
			DMCONTA.TRel.ParamByName('COBRANCA').AsString:=CBTIPOPAG.Text;
	        XJuncao:=' And ';
      End;
	   If (XPessoaIni<>'') and (XPessoaFim<>'')
	   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
		   	DMCONTA.TRel.SQL.Add(XJuncao+' (vwparcp.nome Between :PES1 And :PES2)');
		   	DMCONTA.TRel.ParamByName('PES1').AsString:=XPessoaIni;
		   	DMCONTA.TRel.ParamByName('PES2').AsString:=XPessoaFim;
	        XJuncao:=' And ';
	   End;
      If (XCONTA<>-1)
      Then Begin
      		DMCONTA.TRel.SQL.Add(' AND (ctapagar.COD_PLNCTA = :ContaPln)');
   		DMCONTA.TRel.ParamByName('ContaPln').AsInteger:=XCONTA;
      End;
	   If RGESCOLHA.ItemIndex=0
	   Then Begin//se for pedido apenas relatório de pendentes
			DMCONTA.TRel.SQL.Add(XJuncao+' ((vwparcp.fech<>'+#39+'S'+#39+') OR (vwparcp.fech IS NULL))');
	        XJuncao:= ' AND ';
	   End;

      If CbAntecipadoSomenteAntecipados.Checked = true
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ( parcelacr.antecipado=''1'') ');
	        XJuncao:=' And ';
      End;
      If CBAntecipadosSomenteNaoAntecipados.Checked = true
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (( parcelacr.antecipado=''0'') or (parcelacr.antecipado is null)) ');
	        XJuncao:=' And ';
      End;

	   If RGESCOLHA.ItemIndex=1
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+' (vwparcp.fech='+#39+'S'+#39+')');
	        XJuncao:= ' AND ';
	   End;
	   If RGESCOLHA.ItemIndex=3
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+' ((vwparcp.FECH<>'+#39+'S'+#39+') And  (vwparcp.PREVISAO='+#39+'1'+#39+'))');
	        XJuncao:= ' AND ';
	   End;
      case RGORDEM.ItemIndex of
      	0: DMCONTA.TRel.SQL.Add(' order by vwparcP.NOME, vwparcP.DTVENC ');
      	1: DMCONTA.TRel.SQL.Add(' order by vwparcP.numdoc, vwparcP.DTVENC ');
      	2: DMCONTA.TRel.SQL.Add(' order by vwparcP.DTVENC ');
      	3: DMCONTA.TRel.SQL.Add(' order by vwparcP.DTLANC ');
      End;
	   DMCONTA.TRel.SQL.Text;
	   DMCONTA.TRel.Open;
      If Not DMCONTA.TRel.IsEmpty
      Then Begin
           QRCta_Mens.Preview;
      End
      Else Begin
           MessageDlg('Não existem dados a serem impressos.', mtWarning, [mbOK], 0);
           exit;
      End;
   End;

	If FMenu.TIPOREL='RELCTAPDOC_REC'
   Then Begin//o tipo de relatório é contas a Pagar por RECEBIDAS
	   XJuncao:=' AND ';
	   DMCONTA.TRel.Close;
	   DMCONTA.TRel.SQL.Clear;
	   DMCONTA.TRel.SQL.Add(' select * From ParcelaCP ');
	   DMCONTA.TRel.SQL.Add(' left join ctapagar ON ctapagar.cod_ctapagar=Parcelacp.cod_ctapagar ');
	   DMCONTA.TRel.SQL.Add('  left join formpag ON ctapagar.cod_formpag = formpag.cod_formpag ');
      DMCONTA.TRel.SQL.Add(' Left Join Fornecedor on Fornecedor.Cod_Fornec=CtaPagar.COD_FORNEC ');
      DMCONTA.TRel.SQL.Add(' left join pessoa on pessoa.cod_pessoa=Fornecedor.cod_pessoa ');
	   DMCONTA.TRel.SQL.Add(' Where (FormPag.cod_loja=:CODLOJA) AND (CtaPagar.cod_Fornec IS NOT NULL) ');
      DMCONTA.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
	   If (EdDataIni.Text<>'') And (EdDataFim.Text<>'')
	   Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ('+TIPODT+' Between :Data1 and :Data2) ');
			DMCONTA.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
			DMCONTA.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
	        XJuncao:=' And ';
	   End;
      If CBTipoPag.Text<>'<TODOS>'
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (ParcelaCP.cobranca=:COBRANCA) ');
			DMCONTA.TRel.ParamByName('COBRANCA').AsString:=CBTIPOPAG.Text;
	        XJuncao:=' And ';
      End;
	   If (XPessoaIni<>'') and (XPessoaFim<>'')
	   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
		   	DMCONTA.TRel.SQL.Add(XJuncao+' (Pessoa.nome Between :PES1 And :PES2)');
		   	DMCONTA.TRel.ParamByName('PES1').AsString:=XPessoaIni;
		   	DMCONTA.TRel.ParamByName('PES2').AsString:=XPessoaFim;
	        XJuncao:=' And ';
	   End;
      If (XCONTA<>-1)
      Then Begin
      		DMCONTA.TRel.SQL.Add(' AND (ctapagar.COD_PLNCTA = :ContaPln)');
   		DMCONTA.TRel.ParamByName('ContaPln').AsInteger:=XCONTA;
      End;
	   If rgFiltroTipoRel.ItemIndex=0
	   Then Begin//se for pedido apenas relatório de pendentes
			DMCONTA.TRel.SQL.Add(XJuncao+' ((ParcelaCP.fech<>'+#39+'S'+#39+') OR (ParcelaCP.fech IS NULL))');
	        XJuncao:= ' AND ';
	   End;
	   If rgFiltroTipoRel.ItemIndex=1
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+' (Parcelacp.fech='+#39+'S'+#39+')');
	        XJuncao:= ' AND ';
	   End;
	   {If rgFiltroTipoRel.ItemIndex=3
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+' ((Parcelacp.FECH<>'+#39+'S'+#39+') And  (Parcelacp.PREVISAO='+#39+'1'+#39+'))');
	        XJuncao:= ' AND ';
	   End;}

{	   If RGESCOLHA.ItemIndex=2
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+'(CTAPAGAR.TIPOGERADOR='+#39+'PEDVCAD'+#39+')');
	   End;}
      case RGORDEM.ItemIndex of
      	0: DMCONTA.TRel.SQL.Add(' order by Pessoa.NOME, ParcelaCp.DTVENC ');
      	1: DMCONTA.TRel.SQL.Add(' order by parcelacp.numparc, ParcelaCp.DTVENC ');
      	2: DMCONTA.TRel.SQL.Add(' order by ParcelaCp.DTVENC ');
      	3: DMCONTA.TRel.SQL.Add(' order by CtaPagar.DTLANC, ParcelaCp.DTVENC ');
      End;
	   DMCONTA.TRel.SQL.Text;
	   DMCONTA.TRel.Open;
  	   DMMACS.TLoja.Edit;
      DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Contas a Pagar/Relação de Pagamentos';
      DMMACS.TLoja.Post;
      DMMACS.Transaction.CommitRetaining;
      FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaPag_Doc_REC.frf');
   End;

   //Paulo 10/10/2011: Seleciona contas vencidas
   If FMenu.TIPOREL = 'RELCTAVENCIDAREC'
   Then Begin
       //Paulo 10/10/2011: Valida se as datas não estão vazias
       if (EdDataIni.Text = '  /  /    ')or(EdDataFim.Text = '  /  /    ')then
       begin
           Mensagem('   A T E N Ç Ã O   ','Não foi informado nenhum intervalo de datas','',1,1,false,'I');
           EdDataIni.SetFocus;
           Exit;
       end;
       DMMACS.TLoja.Edit;

       DMCONTA.TRel.Close;
       DMCONTA.TRel.SQL.Clear;
       DMCONTA.TRel.SQL.Add('select ctareceber.cod_ctareceber, ctareceber.cod_cliente, ctareceber.cod_plncta, ctareceber.dtlanc,');
       DMCONTA.TRel.SQL.Add('parcelacr.cod_ctareceber, parcelacr.cod_parcelacr, parcelacr.historico, parcelacr.numparc, parcelacr.valorpg, parcelacr.valor,parcelacr.dtdebito,');
       DMCONTA.TRel.SQL.Add('parcelacr.dtvenc, parcelacr.fech, vwcliente.cod_cliente, vwcliente.cpfcnpj, vwcliente.nome, vwcliente.telrel');
       DMCONTA.TRel.SQL.Add('from parcelacr');
       DMCONTA.TRel.SQL.Add('left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber');
       DMCONTA.TRel.SQL.Add('left join vwcliente on ctareceber.cod_cliente = vwcliente.cod_cliente');
       DMCONTA.TRel.SQL.Add('where ');

       // se o usuario selecionou os dois fornecedores, a sql ira buscar todos os dados referente ao intervalo de vendedores
       If (FrmPessoaIni.EdDescricao.Text <> '') and (FrmPessoaFim.EdDescricao.Text <> '')
       Then Begin
           // se os codigos forem diferentes, foi selecionado mais de um cliente
           If FrmPessoaIni.EDCodigo.Text <> FrmPessoaFim.EDCodigo.Text
           Then Begin
               DMCONTA.TRel.SQL.Add('(ctareceber.cod_cliente between :codigo1 and :codigo2) and');
               DMCONTA.TRel.ParamByName('codigo1').AsString := FrmPessoaIni.EDCodigo.Text;
               DMCONTA.TRel.ParamByName('codigo2').AsString := FrmPessoaFim.EDCodigo.Text;
               DMMACS.TLoja.FieldByName('TMP2').AsString := 'Cliente: ' + FrmPessoaIni.EdDescricao.Text +' a ' + FrmPessoaFim.EdDescricao.Text + ' - ';
           End
           Else Begin
               DMCONTA.TRel.SQL.Add('(ctareceber.cod_cliente = :codigo1) and');
               DMCONTA.TRel.ParamByName('codigo1').AsString := FrmPessoaIni.EDCodigo.Text;
               DMMACS.TLoja.FieldByName('TMP2').AsString := 'Cliente: ' + FrmPessoaIni.EdDescricao.Text + ' - ';
           End;
       End;
       

       DMCONTA.TRel.SQL.Add('((parcelacr.dtvenc >= :data_ini and parcelacr.dtvenc <= :data_fim) or (parcelacr.dtdebito >= :data_ini and parcelacr.dtdebito <= :data_fim))');
       DMCONTA.TRel.ParamByName('data_ini').AsString := EdDataIni.Text;
       DMCONTA.TRel.ParamByName('data_fim').AsString := EdDataFim.Text;

       DMMACS.TLoja.FieldByName('TMP1').AsString := 'Intervalo datas: ' + EdDataIni.Text + ' a ' + EdDataFim.Text;
       DMMACS.TLoja.Post;
       DMMACS.Transaction.CommitRetaining;
       DMCONTA.TRel.SQL.Add('order by vwcliente.nome, parcelacr.fech desc');
       DMCONTA.TRel.Open;

       If DMCONTA.TRel.IsEmpty
       Then Begin
           Mensagem('   A T E N Ç Ã O   ','O relatório retornou vazio.','',1,1,false,'I');
           Exit;
       End;

       FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelCtaReceberVencidas.frf');
   End;

   //Paulo 10/10/2011: Seleciona contas vencidas
   If FMenu.TIPOREL = 'RELCTAVENCIDAPAGAR'
   Then Begin
       //Paulo 10/10/2011: Valida se as datas não estão vazias
       if (EdDataIni.Text = '  /  /    ')or(EdDataFim.Text = '  /  /    ')then
       begin
           Mensagem('   A T E N Ç Ã O   ','Não foi informado nenhum intervalo de datas','',1,1,false,'I');
           EdDataIni.SetFocus;
           Exit;
       end;
       DMMACS.TLoja.Edit;

       DMCONTA.TRel.Close;
       DMCONTA.TRel.SQL.Clear;
       DMCONTA.TRel.SQL.Add('select ctapagar.cod_ctapagar, ctapagar.cod_fornec, ctapagar.cod_plncta, ctapagar.dtlanc,');
       DMCONTA.TRel.SQL.Add('parcelacp.cod_ctapagar, parcelacp.cod_parcelacp, parcelacp.historico, parcelacp.numparc, parcelacp.valorpg, parcelacp.valor,parcelacp.dtdebito,');
       DMCONTA.TRel.SQL.Add('parcelacp.dtvenc, parcelacp.fech, vwfornec.cod_fornec, vwfornec.cpfcnpj, vwfornec.nome, vwfornec.telrel');
       DMCONTA.TRel.SQL.Add('from parcelacp');
       DMCONTA.TRel.SQL.Add('left join ctapagar on ctapagar.cod_ctapagar = parcelacp.cod_ctapagar');
       DMCONTA.TRel.SQL.Add('left join vwfornec on ctapagar.cod_fornec = vwfornec.cod_fornec');
       DMCONTA.TRel.SQL.Add('where ');

       // se o usuario selecionou os dois fornecedores, a sql ira buscar todos os dados referente ao intervalo de vendedores
       If (FrmPessoaIni.EdDescricao.Text <> '') and (FrmPessoaFim.EdDescricao.Text <> '')
       Then Begin
           // se os codigos forem diferentes, foi selecionado mais de um cliente
           If FrmPessoaIni.EDCodigo.Text <> FrmPessoaFim.EDCodigo.Text
           Then Begin
               DMCONTA.TRel.SQL.Add('(ctapagar.cod_fornec between :codigo1 and :codigo2) and');
               DMCONTA.TRel.ParamByName('codigo1').AsString := FrmPessoaIni.EDCodigo.Text;
               DMCONTA.TRel.ParamByName('codigo2').AsString := FrmPessoaFim.EDCodigo.Text;
               DMMACS.TLoja.FieldByName('TMP2').AsString := 'Cliente: ' + FrmPessoaIni.EdDescricao.Text +' a ' + FrmPessoaFim.EdDescricao.Text + ' - ';
           End
           Else Begin
               DMCONTA.TRel.SQL.Add('(ctapagar.cod_fornec = :codigo1) and');
               DMCONTA.TRel.ParamByName('codigo1').AsString := FrmPessoaIni.EDCodigo.Text;
               DMMACS.TLoja.FieldByName('TMP2').AsString := 'Cliente: ' + FrmPessoaIni.EdDescricao.Text + ' - ';
           End;
       End;


       DMCONTA.TRel.SQL.Add('((parcelacp.dtvenc >= :data_ini and parcelacp.dtvenc <= :data_fim) or (parcelacp.dtdebito >= :data_ini and parcelacp.dtdebito <= :data_fim))');
       DMCONTA.TRel.ParamByName('data_ini').AsString := EdDataIni.Text;
       DMCONTA.TRel.ParamByName('data_fim').AsString := EdDataFim.Text;

       DMMACS.TLoja.FieldByName('TMP1').AsString := 'Intervalo datas: ' + EdDataIni.Text + ' a ' + EdDataFim.Text;
       DMMACS.TLoja.Post;
       DMMACS.Transaction.CommitRetaining;
       DMCONTA.TRel.SQL.Add('ORDER BY VWFORNEC.NOME, PARCELACP.fech desc');
       DMCONTA.TRel.Open;

       If DMCONTA.TRel.IsEmpty
       Then Begin
           Mensagem('   A T E N Ç Ã O   ','O relatório retornou vazio.','',1,1,false,'I');
           Exit;
       End;
       FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelCtaPagarVencidas.frf');
   End;

	If FMenu.TIPOREL='RELCTAP_PREVI'
   Then Begin//o tipo de relatório é contas a Pagar por RECEBIDAS
	   XJuncao:=' AND ';
	   DMCONTA.TRel.Close;
	   DMCONTA.TRel.SQL.Clear;
	   DMCONTA.TRel.SQL.Add(' select * From ParcelaCP ');
	   DMCONTA.TRel.SQL.Add(' left join ctapagar ON ctapagar.cod_ctapagar=Parcelacp.cod_ctapagar ');
	   DMCONTA.TRel.SQL.Add('  left join formpag ON ctapagar.cod_formpag = formpag.cod_formpag ');
      DMCONTA.TRel.SQL.Add(' Left Join Fornecedor on Fornecedor.Cod_Fornec=CtaPagar.COD_FORNEC ');
      DMCONTA.TRel.SQL.Add(' left join pessoa on pessoa.cod_pessoa=Fornecedor.cod_pessoa ');
	   DMCONTA.TRel.SQL.Add(' Where (FormPag.cod_loja=:CODLOJA) AND (CtaPagar.cod_Fornec IS NOT NULL) ');
      DMCONTA.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
	   If (EdDataIni.Text<>'') And (EdDataFim.Text<>'')
	   Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ('+TIPODT+' Between :Data1 and :Data2) ');
			DMCONTA.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
			DMCONTA.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
	        XJuncao:=' And ';
	   End;
      If CBTipoPag.Text<>'<TODOS>'
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (Parcelacp.cobranca=:COBRANCA) ');
			DMCONTA.TRel.ParamByName('COBRANCA').AsString:=CBTIPOPAG.Text;
	        XJuncao:=' And ';
      End;
	   If (XPessoaIni<>'') and (XPessoaFim<>'')
	   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
		   	DMCONTA.TRel.SQL.Add(XJuncao+' (Pessoa.nome Between :PES1 And :PES2)');
		   	DMCONTA.TRel.ParamByName('PES1').AsString:=XPessoaIni;
		   	DMCONTA.TRel.ParamByName('PES2').AsString:=XPessoaFim;
	        XJuncao:=' And ';
	   End;
      If (XCONTA<>-1)
      Then Begin
      		DMCONTA.TRel.SQL.Add(' AND (ctapagar.COD_PLNCTA = :ContaPln)');
   		DMCONTA.TRel.ParamByName('ContaPln').AsInteger:=XCONTA;
      End;
	   If RGESCOLHA.ItemIndex=0
	   Then Begin//se for pedido apenas relatório de pendentes
			DMCONTA.TRel.SQL.Add(XJuncao+' ((ParcelaCP.fech<>'+#39+'S'+#39+') OR (ParcelaCP.fech IS NULL))');
	        XJuncao:= ' AND ';
	   End;
	   If RGESCOLHA.ItemIndex=1
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+' (Parcelacp.fech='+#39+'S'+#39+')');
	        XJuncao:= ' AND ';
	   End;
	   If RGESCOLHA.ItemIndex=3
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+' ((Parcelacp.FECH<>'+#39+'S'+#39+') And  (Parcelacp.PREVISAO='+#39+'1'+#39+'))');
	        XJuncao:= ' AND ';
	   End;
      If CbAntecipadoSomenteAntecipados.Checked = true
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ( parcelacr.antecipado=''1'') ');
	        XJuncao:=' And ';
      End;
      If CBAntecipadosSomenteNaoAntecipados.Checked = true
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (( parcelacr.antecipado=''0'') or (parcelacr.antecipado is null)) ');
	        XJuncao:=' And ';
      End;

      case RGORDEM.ItemIndex of
      	0: DMCONTA.TRel.SQL.Add(' order by ParcelaCp.Previsao, Pessoa.NOME, ParcelaCp.DTVENC ');
      	1: DMCONTA.TRel.SQL.Add(' order by ParcelaCp.Previsao, ParcelCp.numdoc, ParcelaCp.DTVENC ');
      	2: DMCONTA.TRel.SQL.Add(' order by ParcelaCp.Previsao, ParcelaCp.DTVENC ');
      	3: DMCONTA.TRel.SQL.Add(' order by ParcelaCp.Previsao, CtaPagar.DTLANC, ParcelaCp.DTVENC ');
      End;
//z	   DMCONTA.TRel.SQL.Add(' order by ParcelaCp.Previsao ');
	   DMCONTA.TRel.SQL.Text;
	   DMCONTA.TRel.Open;
  	   DMMACS.TLoja.Edit;
      DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Contas a Pagar/Pagamentos com Previsões';
      DMMACS.TLoja.Post;
      DMMACS.Transaction.CommitRetaining;
      FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaPag_Doc_PREVI.frf');
   End;

   ///////////////////////////////////////
   //SQL PARA RELATORIOS DE CTAS A RECEBER
   ///////////////////////////////////////
	If (FMenu.TIPOREL='RELCTARCLI')
	   Then Begin//o tipo de relatório é contas a receber agrupado por clientes
      if (RGTIPODT.ItemIndex = 3)
      then begin
           if (EdDataIniAux.Text = '  /  /    ') and (EdDataFimAux.Text = '  /  /    ')
           then begin
               Mensagem('OPÇÃO BLOQUEADA', 'Para filtrar entre ambas as datas, informe os intervalos corretamente!', '', 1, 1, False, 'i');
               Exit;
           end;
      end;

	   XJuncao:=' AND ';
	   DMCONTA.TRel.Close;
	   DMCONTA.TRel.SQL.Clear;
	   DMCONTA.TRel.SQL.Add(' SELECT parcelacr.cobranca, parcelacr.desconto, parcelacr.numfisc, parcelacr.numfisc, parcelacr.dtdebito, parcelacr.dtvenc, ');
	   DMCONTA.TRel.SQL.Add(' parcelacr.juros, parcelacR.multa, parcelacR.numparc, parcelacR.valor, parcelacr.valorpg, ');
	   DMCONTA.TRel.SQL.Add(' ctareceber.cod_usuario, ctareceber.dtlanc, parcelacr.historico, ctareceber.numdoc, ');
	   DMCONTA.TRel.SQL.Add(' cliente.cod_interno, pessoa.nome, Pessoa.Telrel ');
	   DMCONTA.TRel.SQL.Add(' FROM parcelacr left join ctareceber on parcelacr.cod_ctareceber=ctareceber.cod_ctareceber ');
	   DMCONTA.TRel.SQL.Add(' left join cliente on ctareceber.cod_cliente = cliente.cod_cliente ');
	   DMCONTA.TRel.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
	   DMCONTA.TRel.SQL.Add(' left join FORMPAG on CTARECEBER.COD_FORMPAG = FORMPAG.COD_FORMPAG ');
	   DMCONTA.TRel.SQL.Add(' WHERE FORMPAG.COD_LOJA= :CODLOJA');
      DMCONTA.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;

	   If (EdDataIni.Text<> '  /  /    ') And (EdDataFim.Text<> '  /  /    ')
	   Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas

      		Case RGTIPODT.ItemIndex of
               0: TIPODT:='ctareceber.dtlanc';
               1: TIPODT:='parcelacr.dtvenc';
               2: TIPODT:='parcelacr.DTDEBITO';
               3: TIPODT:='ctareceber.dtlanc';
           End;

			DMCONTA.TRel.SQL.Add(XJuncao+ ' ('+TIPODT+' Between :Data1 and :Data2) ');
			DMCONTA.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
			DMCONTA.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
	        XJuncao:=' And ';
	   End;
        //**************************************************************************
        // verifica se foi colocado data valida
       If (EdDataIniAux.Text <> '  /  /    ') and (EdDataFimAux.Text <> '  /  /    ')
       Then Begin
           Case RGTIPODT.ItemIndex of
               3: TIPODT:='parcelacr.dtvenc';
           End;

           DMCONTA.TRel.SQL.Add('and (' + TIPODT + ' between :data3 and :data4)');
           DMCONTA.TRel.ParamByName('DATA3').AsDateTime := StrToDate(EdDataIniAux.Text);
           DMCONTA.TRel.ParamByName('DATA4').AsDateTime := StrToDate(EdDataFimAux.Text);

       End;
       //****************************************************************************
      If CBTipoPag.Text<>'<TODOS>'
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (parcelacr.cobranca=:COBRANCA) ');
			DMCONTA.TRel.ParamByName('COBRANCA').AsString:=CBTIPOPAG.Text;
	        XJuncao:=' And ';
      End;
	   If (XPessoaIni<>'') and (XPessoaFim<>'')
	   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
		   	DMCONTA.TRel.SQL.Add(XJuncao+' (PESSOA.NOME Between :PES1 And :PES2)');
		   	DMCONTA.TRel.ParamByName('PES1').AsString:=XPessoaIni;
		   	DMCONTA.TRel.ParamByName('PES2').AsString:=XPessoaFim;
	        XJuncao:=' And ';
	   End;

      // somente clientes q estiverem no SCPC
      If RBClientesInclusos.Checked = true
      Then Begin
           DMCONTA.TRel.SQL.Add(XJuncao + ' (CLIENTE.SCPC = 1) ');
      End;
      // somente clientes não inclusos
      If RBClientesNInclusos.Checked = true
      Then Begin
           DMCONTA.TRel.SQL.Add(XJuncao + ' (CLIENTE.SCPC = 0) OR (CLIENTE.SCPC is null) ');
      End;

      If (XCONTA<>-1)
      Then Begin
      		DMCONTA.TRel.SQL.Add(' AND (ctareceber.COD_PLNCTA = :ContaPln)');
   		DMCONTA.TRel.ParamByName('ContaPln').AsInteger:=XCONTA;
      End;
	   If RGESCOLHA.ItemIndex=0
	   Then Begin//se for pedido apenas relatório de pendentes
			DMCONTA.TRel.SQL.Add(XJuncao+' ((PARCELACR.FECH<>'+#39+'S'+#39+') OR (PARCELACR.FECH IS NULL))');
	        XJuncao:= ' AND ';
	   End;
	   If RGESCOLHA.ItemIndex=1
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+' (PARCELACR.FECH='+#39+'S'+#39+')');
	        XJuncao:= ' AND ';
	   End;

      If CbAntecipadoSomenteAntecipados.Checked = true
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ( parcelacr.antecipado=''1'') ');
	        XJuncao:=' And ';
      End;
      If CBAntecipadosSomenteNaoAntecipados.Checked = true
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (( parcelacr.antecipado=''0'') or (parcelacr.antecipado is null)) ');
	        XJuncao:=' And ';
      End;

  	   DMMACS.TLoja.Edit;
      DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Contas a Receber/Clientes';
      DMMACS.TLoja.Post;
      DMMACS.Transaction.CommitRetaining;
      FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaRecPend_Cli.frf');
	   If RGESCOLHA.ItemIndex=2
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+'(CTARECEBER.TIPOGERADOR='+#39+'PEDVCAD'+#39+')');
		    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaRecCader_Cli.frf');
	   End;
      DMCONTA.TRel.SQL.Add(' order by pessoa.nome, ctareceber.numdoc, ctareceber.dtlanc, parcelacr.dtvenc ');
   End;

	If (FMenu.TIPOREL='RELEXTRACTCLI') or (FMenu.TIPOREL='RELEXTRACTPES_JUR')
   Then Begin
	   XJuncao:=' AND ';
	   DMCONTA.TRel.Close;
	   DMCONTA.TRel.SQL.Clear;
	   DMCONTA.TRel.SQL.Add('select pessoa.nome, vwparcr.dtvenc, vwparcr.numparc, vwcidade.nome as CIDADE, vwcidade.uf as UF_ESTADO, pessoa.bairro, pessoa.cep, pessoaf.rg, vwparcr.numfisc, ');
	   DMCONTA.TRel.SQL.Add('        pessoaf.emp_trab, pessoaf.emp_conj, pessoa.dtnasc AS NASCIMENTO, vwparcr.valor, vwparcr.dtdebito, vwparcr.fech, ');
	   DMCONTA.TRel.SQL.Add(' vwparcr.nome, parcelacr.aplicjur, pessoa.telrel, vwparcr.dtlanc, vwparcr.numdoc, cliente.multa AS MULTACLI, cliente.juro AS JUROCLI, ');
	   DMCONTA.TRel.SQL.Add(' pessoaf.nome_pai, pessoaf.nome_mae, pessoaf.nome_conj, pessoa.endereco, pessoa.endnumero, cliente.cod_interno, pessoa.vlrcredito,');
      DMCONTA.TRel.SQL.Add(' pessoa.cpfcnpj, pessoaj.razao_social, pessoaj.insc_est, cliente.informacao ');
	   DMCONTA.TRel.SQL.Add(' From vwparcr ');
	   DMCONTA.TRel.SQL.Add(' left join parcelacr on vwparcr.cod_parcelacr=parcelacr.cod_parcelacr ');
	   DMCONTA.TRel.SQL.Add(' left join ctareceber ON ctareceber.cod_ctareceber=vwparcr.cod_ctareceber ');
	   DMCONTA.TRel.SQL.Add(' Left Join Cliente on Cliente.Cod_Cliente=VWParcr.COD_CLIENTE ');
	   DMCONTA.TRel.SQL.Add(' left join pessoa on pessoa.cod_pessoa=cliente.cod_pessoa ');
	   DMCONTA.TRel.SQL.Add(' left join pessoaf on pessoaf.cod_pessoa=pessoa.cod_pessoa ');
      DMCONTA.TRel.SQL.Add(' left join pessoaj on pessoaj.cod_pessoa = pessoa.cod_pessoa ');
      DMCONTA.TRel.SQL.Add(' left join vwcidade on pessoa.cod_cidade = vwcidade.cod_cidade ');
	   DMCONTA.TRel.SQL.Add(' Where (vwparcr.cod_loja=:CODLOJA) ');
	   DMCONTA.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;

	   If (EdDataIni.Text<>'') And (EdDataFim.Text<>'')
	   Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ('+TIPODT+' Between :Data1 and :Data2) ');
			DMCONTA.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
			DMCONTA.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
	        XJuncao:=' And ';
	   End;
      If CBTipoPag.Text<>'<TODOS>'
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (parcelacr.cobranca=:COBRANCA) ');
			DMCONTA.TRel.ParamByName('COBRANCA').AsString:=CBTIPOPAG.Text;
	        XJuncao:=' And ';
      End;
	   If (XPessoaIni<>'') and (XPessoaFim<>'')
	   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
		   	DMCONTA.TRel.SQL.Add(XJuncao+' (PESSOA.NOME Between :PES1 And :PES2)');
		   	DMCONTA.TRel.ParamByName('PES1').AsString:=XPessoaIni;
		   	DMCONTA.TRel.ParamByName('PES2').AsString:=XPessoaFim;
	        XJuncao:=' And ';
	   End;

      // somente clientes q estiverem no SCPC
      If RBClientesInclusos.Checked = true
      Then Begin
           DMCONTA.TRel.SQL.Add(XJuncao + ' (CLIENTE.SCPC = 1) ');
      End;
      // somente clientes não inclusos
      If RBClientesNInclusos.Checked = true
      Then Begin
           DMCONTA.TRel.SQL.Add(XJuncao + ' (CLIENTE.SCPC = 0) OR (CLIENTE.SCPC is null) ');
      End;

      If (XCONTA<>-1)
      Then Begin
      		DMCONTA.TRel.SQL.Add(' AND (ctareceber.COD_PLNCTA = :ContaPln)');
   		DMCONTA.TRel.ParamByName('ContaPln').AsInteger:=XCONTA;
      End;
	   If RGESCOLHA.ItemIndex=0
	   Then Begin//se for pedido apenas relatório de pendentes
			DMCONTA.TRel.SQL.Add(XJuncao+' ((PARCELACR.FECH<>'+#39+'S'+#39+') OR (PARCELACR.FECH IS NULL))');
	        XJuncao:= ' AND ';
	   End;
	   If RGESCOLHA.ItemIndex=1
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+' (PARCELACR.FECH='+#39+'S'+#39+')');
	        XJuncao:= ' AND ';
	   End;

      If CbAntecipadoSomenteAntecipados.Checked = true
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ( parcelacr.antecipado=''1'') ');
	        XJuncao:=' And ';
      End;
      If CBAntecipadosSomenteNaoAntecipados.Checked = true
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (( parcelacr.antecipado=''0'') or (parcelacr.antecipado is null)) ');
	        XJuncao:=' And ';
      End;

      // SE FOR PARA PESSOA FISICA
      If FMenu.TIPOREL='RELEXTRACTCLI'
      Then Begin
          DMMACS.TLoja.Edit;
          DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Contas a Receber/Extrato de Clientes/Pessoa Física';
          DMMACS.TLoja.Post;
          DMMACS.Transaction.CommitRetaining;

          FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
          FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaRec_ExtCli.frf');
          If RGESCOLHA.ItemIndex=2
          Then Begin//se realisar relatório apenas de baixados
               DMCONTA.TRel.SQL.Add(XJuncao+'(CTARECEBER.TIPOGERADOR='+#39+'PEDVCAD'+#39+')');
               FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaRec_ExtCli.frf');
          End;
      End
      Else Begin
          DMMACS.TLoja.Edit;
          DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Contas a Receber/Extrato de Clientes/Pessoa Jurídica';
          DMMACS.TLoja.Post;
          DMMACS.Transaction.CommitRetaining;

          FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
          FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaRec_PesJur.frf');
          If RGESCOLHA.ItemIndex=2
          Then Begin//se realisar relatório apenas de baixados
               DMCONTA.TRel.SQL.Add(XJuncao+'(CTARECEBER.TIPOGERADOR='+#39+'PEDVCAD'+#39+')');
               FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaRec_PesJur.frf');
          End;
      End;

      DMCONTA.TRel.SQL.Add(' order by pessoa.nome, ctareceber.numdoc, ctareceber.dtlanc, parcelacr.dtvenc ');
   End;


	If (FMenu.TIPOREL='RELCTARDOC') OR (FMenu.TIPOREL='RELCTARDOCCORR')
   Then Begin//o tipo de relatório é contas a receber agrupado por clientes
	   XJuncao:=' AND ';
	   DMCONTA.TRel.Close;
	   DMCONTA.TRel.SQL.Clear;      
	   DMCONTA.TRel.SQL.Add(' select * From vwparcr ');
	   DMCONTA.TRel.SQL.Add(' left join parcelacr on vwparcr.cod_parcelacr=parcelacr.cod_parcelacr ');
	   DMCONTA.TRel.SQL.Add(' left join ctareceber ON vwparcr.cod_ctareceber = ctareceber.cod_ctareceber');
      DMCONTA.TRel.SQL.Add(' Left Join Cliente on VWParcr.COD_CLIENTE = Cliente.Cod_Cliente ');
      DMCONTA.TRel.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
	   DMCONTA.TRel.SQL.Add(' Where (vwparcr.cod_loja=:CODLOJA) AND (vwparcr.cod_cliente IS NOT NULL) ');
      DMCONTA.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
	   If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
	   Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (('+TIPODT+'>=:DATA1) And ('+TIPODT+'<=:Data2)) ');
			DMCONTA.TRel.ParamByName('Data1').AsDate:=StrToDate(EdDataIni.Text);
			DMCONTA.TRel.ParamByName('Data2').AsDate:=StrToDate(EdDataFim.Text);
	        XJuncao:=' And ';
	   End;
      If CBTipoPag.Text<>'<TODOS>'
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (parcelacr.cobranca=:COBRANCA) ');
			DMCONTA.TRel.ParamByName('COBRANCA').AsString:=CBTIPOPAG.Text;
	        XJuncao:=' And ';
      End;
      If CbAntecipadoSomenteAntecipados.Checked = true
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ( parcelacr.antecipado=''1'') ');
	        XJuncao:=' And ';
      End;
      If CBAntecipadosSomenteNaoAntecipados.Checked = true
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (( parcelacr.antecipado=''0'') or (parcelacr.antecipado is null)) ');
	        XJuncao:=' And ';
      End;
	   If (XPessoaIni<>'') and (XPessoaFim<>'')
	   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
		   	DMCONTA.TRel.SQL.Add(XJuncao+' (vwparcr.nome Between :PES1 And :PES2)');
		   	DMCONTA.TRel.ParamByName('PES1').AsString:=XPessoaIni;
		   	DMCONTA.TRel.ParamByName('PES2').AsString:=XPessoaFim;
	        XJuncao:=' And ';
	   End;
      If (XCONTA<>-1)
      Then Begin
      		DMCONTA.TRel.SQL.Add(' AND (ctareceber.COD_PLNCTA = :ContaPln)');
   		DMCONTA.TRel.ParamByName('ContaPln').AsInteger:=XCONTA;
      End;
	   If RGESCOLHA.ItemIndex=0
	   Then Begin//se for pedido apenas relatório de pendentes
			DMCONTA.TRel.SQL.Add(XJuncao+' ((vwparcr.fech<>'+#39+'S'+#39+') OR (vwparcr.fech IS NULL))');
	        XJuncao:= ' AND ';
	   End;
	   If RGESCOLHA.ItemIndex=1
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+' (vwparcr.fech='+#39+'S'+#39+')');
	        XJuncao:= ' AND ';
	   End;

      If CbAntecipadoSomenteAntecipados.Checked = true
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ( parcelacr.antecipado=''1'') ');
	        XJuncao:=' And ';
      End;
      If CBAntecipadosSomenteNaoAntecipados.Checked = true
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (( parcelacr.antecipado=''0'') or (parcelacr.antecipado is null)) ');
	        XJuncao:=' And ';
      End;

      // somente clientes q estiverem no SCPC
      If RBClientesInclusos.Checked = true
      Then Begin
           DMCONTA.TRel.SQL.Add(XJuncao + ' (CLIENTE.SCPC = 1) ');
      End;
      // somente clientes não inclusos
      If RBClientesNInclusos.Checked = true
      Then Begin
           DMCONTA.TRel.SQL.Add(XJuncao + ' ((CLIENTE.SCPC = 0) OR (CLIENTE.SCPC is null)) ');
      End;

	   If RGESCOLHA.ItemIndex=2
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+'(CTARECEBER.TIPOGERADOR='+#39+'PEDVCAD'+#39+')');
	   End;
      case RGORDEM.ItemIndex of
      	0: DMCONTA.TRel.SQL.Add(' order by vwparcr.NOME, vwparcr.DTVENC ');
      	1: DMCONTA.TRel.SQL.Add(' order by vwparcr.numdoc, vwparcr.DTVENC ');
      	2: DMCONTA.TRel.SQL.Add(' order by vwparcr.DTVENC ');
      	3: DMCONTA.TRel.SQL.Add(' order by vwparcr.DTLANC ');
      End;
	   DMCONTA.TRel.SQL.Text;
	   DMCONTA.TRel.Open;
      IF (FMenu.TIPOREL='RELCTARDOC')
      THEN Begin
      		DMMACS.TLoja.Edit;
      		DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Contas a Receber/Documento';
      		DMMACS.TLoja.Post;
      		DMMACS.Transaction.CommitRetaining;
      		FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
      		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaRec_Doc.frf');
      End;
	   IF (FMenu.TIPOREL='RELCTARDOCCORR')
      THEN Begin
      		DMMACS.TLoja.Edit;
      		DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Contas a Receber/Documento Correção';
      		DMMACS.TLoja.Post;
      		DMMACS.Transaction.CommitRetaining;
      		FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
      		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaRec_DocCOR.frf');
      End;
   End;

	If (FMenu.TIPOREL='RELCTARDOCAGRUPADO')
   Then Begin//o tipo de relatório é contas a receber agrupado por clientes
      if RGTIPODT.ItemIndex = 3
      then begin
           if (EdDataIniAux.Text = '  /  /    ') and (EdDataFimAux.Text = '  /  /    ')
           then begin
               Mensagem('OPÇÃO BLOQUEADA', 'Para filtrar entre ambas as datas, informe os intervalos corretamente!', '', 1, 1, False, 'i');
               Exit;
           end;
      end;
	   XJuncao:=' AND ';
	   DMCONTA.TRel.Close;
	   DMCONTA.TRel.SQL.Clear;
	   DMCONTA.TRel.SQL.Add(' select * From vwparcr ');
	   DMCONTA.TRel.SQL.Add(' left join parcelacr on vwparcr.cod_parcelacr=parcelacr.cod_parcelacr ');
	   DMCONTA.TRel.SQL.Add(' left join ctareceber ON ctareceber.cod_ctareceber=vwparcr.cod_ctareceber ');
      DMCONTA.TRel.SQL.Add(' Left Join Cliente on Cliente.Cod_Cliente=VWParcr.COD_CLIENTE ');
      DMCONTA.TRel.SQL.Add(' left join pessoa on pessoa.cod_pessoa=cliente.cod_pessoa ');
	   DMCONTA.TRel.SQL.Add(' Where (vwparcr.cod_loja=:CODLOJA) AND (vwparcr.cod_cliente IS NOT NULL) ');
      DMCONTA.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
	   If (EdDataIni.Text<>'') And (EdDataFim.Text<>'')
	   Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas

      		Case RGTIPODT.ItemIndex of
               0: TIPODT:='ctareceber.dtlanc';
               1: TIPODT:='parcelacr.dtvenc';
               2: TIPODT:='parcelacr.DTDEBITO';
               3: TIPODT:='ctareceber.dtlanc';
           End;

			DMCONTA.TRel.SQL.Add(XJuncao+ ' ('+TIPODT+'  Between :Data1 and :Data2) ');
			DMCONTA.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
			DMCONTA.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
	        XJuncao:=' And ';
	   End;

       //**************************************************************************
        // verifica se foi colocado data valida
       If (EdDataIniAux.Text <> '  /  /    ') and (EdDataFimAux.Text <> '  /  /    ')
       Then Begin
           Case RGTIPODT.ItemIndex of
               3: TIPODT:='parcelacr.dtvenc';
           End;

           DMCONTA.TRel.SQL.Add('and (' + TIPODT + ' between :data3 and :data4)');
           DMCONTA.TRel.ParamByName('DATA3').AsDateTime := StrToDate(EdDataIniAux.Text);
           DMCONTA.TRel.ParamByName('DATA4').AsDateTime := StrToDate(EdDataFimAux.Text);

       End;
       //****************************************************************************

      If CBTipoPag.Text<>'<TODOS>'
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (parcelacr.cobranca=:COBRANCA) ');
			DMCONTA.TRel.ParamByName('COBRANCA').AsString:=CBTIPOPAG.Text;
	        XJuncao:=' And ';
      End;
      // somente clientes q estiverem no SCPC
      If RBClientesInclusos.Checked = true
      Then Begin
           DMCONTA.TRel.SQL.Add(XJuncao + ' (CLIENTE.SCPC = 1) ');
      End;
      // somente clientes não inclusos
      If RBClientesNInclusos.Checked = true
      Then Begin
           DMCONTA.TRel.SQL.Add(XJuncao + ' (CLIENTE.SCPC = 0) OR (CLIENTE.SCPC is null) ');
      End;

	   If (XPessoaIni<>'') and (XPessoaFim<>'')
	   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
		   	DMCONTA.TRel.SQL.Add(XJuncao+' (vwparcr.nome Between :PES1 And :PES2)');
		   	DMCONTA.TRel.ParamByName('PES1').AsString:=XPessoaIni;
		   	DMCONTA.TRel.ParamByName('PES2').AsString:=XPessoaFim;
	        XJuncao:=' And ';
	   End;
      If (XCONTA<>-1)
      Then Begin
      		DMCONTA.TRel.SQL.Add(' AND (ctareceber.COD_PLNCTA = :ContaPln)');
   		DMCONTA.TRel.ParamByName('ContaPln').AsInteger:=XCONTA;
      End;
	   If RGESCOLHA.ItemIndex=0
	   Then Begin//se for pedido apenas relatório de pendentes
			DMCONTA.TRel.SQL.Add(XJuncao+' ((vwparcr.fech<>'+#39+'S'+#39+') OR (vwparcr.fech IS NULL))');
	        XJuncao:= ' AND ';
	   End;
	   If RGESCOLHA.ItemIndex=1
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+' (vwparcr.fech='+#39+'S'+#39+')');
	        XJuncao:= ' AND ';
	   End;

	   If RGESCOLHA.ItemIndex=2
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+'(CTARECEBER.TIPOGERADOR='+#39+'PEDVCAD'+#39+')');
	   End;

      If CbAntecipadoSomenteAntecipados.Checked = true
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ( parcelacr.antecipado=''1'') ');
	        XJuncao:=' And ';
      End;
      If CBAntecipadosSomenteNaoAntecipados.Checked = true
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (( parcelacr.antecipado=''0'') or (parcelacr.antecipado is null)) ');
	        XJuncao:=' And ';
      End;

      case RGORDEM.ItemIndex of
      	0: Begin
       	DMCONTA.TRel.SQL.Add(' order by vwparcr.NOME');
           DMMACS.TEmpresa.Edit;
           DMMACS.TEmpresa.FieldByName('WEB_PAGE').AsString:='1';
           DMMACS.TEmpresa.Post;
          End;
      	1: Begin
       	DMCONTA.TRel.SQL.Add(' order by vwparcr.numdoc');
           DMMACS.TEmpresa.Edit;
           DMMACS.TEmpresa.FieldByName('WEB_PAGE').AsString:='2';
           DMMACS.TEmpresa.Post;
          End;

      	2: Begin
       	DMCONTA.TRel.SQL.Add(' order by vwparcr.DTVENC ');
           DMMACS.TEmpresa.Edit;
           DMMACS.TEmpresa.FieldByName('WEB_PAGE').AsString:='3';
           DMMACS.TEmpresa.Post;
          End;
      	3: Begin
       	DMCONTA.TRel.SQL.Add(' order by vwparcr.DTLANC ');
           DMMACS.TEmpresa.Edit;
           DMMACS.TEmpresa.FieldByName('WEB_PAGE').AsString:='4';
           DMMACS.TEmpresa.Post;
          End;
      End;
	   DMCONTA.TRel.SQL.Text;
	   DMCONTA.TRel.Open;
      DMMACS.TLoja.Edit;
      DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Contas a Receber/Documento Agrupado';
      DMMACS.TLoja.Post;
      DMMACS.Transaction.CommitRetaining;
      FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaRec_Doc_Agrupado.frf');
   End;

	If FMenu.TIPOREL='RELCTARDOC_REC'
   Then Begin//o tipo de relatório é contas a receber RECEBIDAS
	   XJuncao:=' AND ';
	   DMCONTA.TRel.Close;
	   DMCONTA.TRel.SQL.Clear;
	   DMCONTA.TRel.SQL.Add(' select * From ParcelaCR ');
	   DMCONTA.TRel.SQL.Add(' left join ctareceber ON ctareceber.cod_ctareceber=Parcelacr.cod_ctareceber ');
	   DMCONTA.TRel.SQL.Add('  left join formpag ON ctareceber.cod_formpag = formpag.cod_formpag ');
      DMCONTA.TRel.SQL.Add(' Left Join Cliente on Cliente.Cod_Cliente=CtaReceber.COD_CLIENTE ');
      DMCONTA.TRel.SQL.Add(' left join pessoa on pessoa.cod_pessoa=cliente.cod_pessoa ');
	   DMCONTA.TRel.SQL.Add(' Where (FormPag.cod_loja=:CODLOJA) AND (CtaReceber.cod_cliente IS NOT NULL) ');
      DMCONTA.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
	   If (EdDataIni.Text<>'') And (EdDataFim.Text<>'')
	   Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ('+TIPODT+'  Between :Data1 and :Data2) ');
			DMCONTA.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
			DMCONTA.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
	        XJuncao:=' And ';
	   End;
      If CBTipoPag.Text<>'<TODOS>'
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (parcelacr.cobranca=:COBRANCA) ');
			DMCONTA.TRel.ParamByName('COBRANCA').AsString:=CBTIPOPAG.Text;
	        XJuncao:=' And ';
      End;
	   If (XPessoaIni<>'') and (XPessoaFim<>'')
	   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
		   	DMCONTA.TRel.SQL.Add(XJuncao+' (Pessoa.nome Between :PES1 And :PES2)');
		   	DMCONTA.TRel.ParamByName('PES1').AsString:=XPessoaIni;
		   	DMCONTA.TRel.ParamByName('PES2').AsString:=XPessoaFim;
	        XJuncao:=' And ';
	   End;
      If (XCONTA<>-1)
      Then Begin
       DMCONTA.TRel.SQL.Add(' AND (ctareceber.COD_PLNCTA = :ContaPln)');
   		 DMCONTA.TRel.ParamByName('ContaPln').AsInteger:=XCONTA;
      End;
	   If rgFiltroTipoRel.ItemIndex=0
	   Then Begin//se for pedido apenas relatório de pendentes
			DMCONTA.TRel.SQL.Add(XJuncao+' ((ParcelaCR.fech<>'+#39+'S'+#39+') OR (ParcelaCR.fech IS NULL))');
	    XJuncao:= ' AND ';
	   End;
	   If rgFiltroTipoRel.ItemIndex=1
     Then Begin//se realisar relatório apenas de baixados
	   	DMCONTA.TRel.SQL.Add(XJuncao+' (Parcelacr.fech='+#39+'S'+#39+')');
	    XJuncao:= ' AND ';
	   End;
	   {If RGESCOLHA.ItemIndex=2
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+'(CTARECEBER.TIPOGERADOR='+#39+'PEDVCAD'+#39+')');
	   End;}
      If RGESCOLHA.ItemIndex<>0
      Then Begin
          // somente clientes q estiverem no SCPC
          If RBClientesInclusos.Checked = true
          Then Begin
               DMCONTA.TRel.SQL.Add(XJuncao + ' (CLIENTE.SCPC = 1) ');
          End;
          // somente clientes não inclusos
          If RBClientesNInclusos.Checked = true
          Then Begin
               DMCONTA.TRel.SQL.Add(XJuncao + ' (CLIENTE.SCPC = 0) OR (CLIENTE.SCPC is null) ');
          End;
      End;

      case RGORDEM.ItemIndex of
      	0: DMCONTA.TRel.SQL.Add(' order by Pessoa.NOME, parcelacr.numparc, ParcelaCr.DTVENC ');
      	1: DMCONTA.TRel.SQL.Add(' order by parcelacr.numparc, ParcelaCr.DTVENC ');
      	2: DMCONTA.TRel.SQL.Add(' order by ParcelaCr.DTVENC ');
      	3: DMCONTA.TRel.SQL.Add(' order by CtaReceber.DTLANC ');
      End;
	   DMCONTA.TRel.SQL.Text;
	   DMCONTA.TRel.Open;

      DMMACS.TLoja.Edit;
      DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Contas a Receber/Relação dos Recebimentos';
      DMMACS.TLoja.Post;
      DMMACS.Transaction.CommitRetaining;
      FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaRec_Doc_REC.frf');
   End;

	If FMenu.TIPOREL='RELCTARSACADO'
   Then Begin//o tipo de relatório é contas a receber por sacado
	   XJuncao:=' AND ';
	   DMCONTA.TRel.Close;
	   DMCONTA.TRel.SQL.Clear;
	   DMCONTA.TRel.SQL.Add('  select * From ParcelaCR ');
	   DMCONTA.TRel.SQL.Add('  left join ctareceber ON ctareceber.cod_ctareceber=Parcelacr.cod_ctareceber ');
	   DMCONTA.TRel.SQL.Add('  left join ordem on ctareceber.cod_gerador = ordem.cod_ordem ');
	   DMCONTA.TRel.SQL.Add('  left join formpag ON ctareceber.cod_formpag = formpag.cod_formpag ');
	   DMCONTA.TRel.SQL.Add('  Left Join Cliente on Cliente.Cod_Cliente=ordem.cod_vendedor  ');
	   DMCONTA.TRel.SQL.Add('  left join pessoa on pessoa.cod_pessoa=cliente.cod_pessoa ');
	   DMCONTA.TRel.SQL.Add('  Where (FormPag.cod_loja=:CODLOJA) AND (CtaReceber.cod_cliente IS NOT NULL) ');
	   DMCONTA.TRel.SQL.Add('  AND (ctareceber.tipogerador=''ORD'')');
      DMCONTA.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
	   If (EdDataIni.Text<>'') And (EdDataFim.Text<>'')
	   Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ('+TIPODT+'  Between :Data1 and :Data2) ');
			DMCONTA.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
			DMCONTA.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
	        XJuncao:=' And ';
	   End;
      If CBTipoPag.Text<>'<TODOS>'
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (parcelacr.cobranca=:COBRANCA) ');
			DMCONTA.TRel.ParamByName('COBRANCA').AsString:=CBTIPOPAG.Text;
	        XJuncao:=' And ';
      End;
	   If (XPessoaIni<>'') and (XPessoaFim<>'')
	   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
		   	DMCONTA.TRel.SQL.Add(XJuncao+' (Pessoa.nome Between :PES1 And :PES2)');
		   	DMCONTA.TRel.ParamByName('PES1').AsString:=XPessoaIni;
		   	DMCONTA.TRel.ParamByName('PES2').AsString:=XPessoaFim;
	        XJuncao:=' And ';
	   End;
      If (XCONTA<>-1)
      Then Begin
      		DMCONTA.TRel.SQL.Add(' AND (ctareceber.COD_PLNCTA = :ContaPln)');
   		DMCONTA.TRel.ParamByName('ContaPln').AsInteger:=XCONTA;
      End;
	   If RGESCOLHA.ItemIndex=0
	   Then Begin//se for pedido apenas relatório de pendentes
			DMCONTA.TRel.SQL.Add(XJuncao+' ((ParcelaCR.fech<>'+#39+'S'+#39+') OR (ParcelaCR.fech IS NULL))');
	        XJuncao:= ' AND ';
	   End;
	   If RGESCOLHA.ItemIndex=1
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+' (Parcelacr.fech='+#39+'S'+#39+')');
	        XJuncao:= ' AND ';
	   End;
	   If RGESCOLHA.ItemIndex=2
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+'(CTARECEBER.TIPOGERADOR='+#39+'PEDVCAD'+#39+')');
	   End;
      If RGESCOLHA.ItemIndex<>0
      Then Begin
          // somente clientes q estiverem no SCPC
          If RBClientesInclusos.Checked = true
          Then Begin
               DMCONTA.TRel.SQL.Add(XJuncao + ' (CLIENTE.SCPC = 1) ');
          End;
          // somente clientes não inclusos
          If RBClientesNInclusos.Checked = true
          Then Begin
               DMCONTA.TRel.SQL.Add(XJuncao + ' (CLIENTE.SCPC = 0) OR (CLIENTE.SCPC is null) ');
          End;
      End;

      If CbAntecipadoSomenteAntecipados.Checked = true
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ( parcelacr.antecipado=''1'') ');
	        XJuncao:=' And ';
      End;
      If CBAntecipadosSomenteNaoAntecipados.Checked = true
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (( parcelacr.antecipado=''0'') or (parcelacr.antecipado is null)) ');
	        XJuncao:=' And ';
      End;

      case RGORDEM.ItemIndex of
      	0: DMCONTA.TRel.SQL.Add(' order by Pessoa.NOME, parcelacr.numparc, ParcelaCr.DTVENC ');
      	1: DMCONTA.TRel.SQL.Add(' order by parcelacr.numparc, ParcelaCr.DTVENC ');
      	2: DMCONTA.TRel.SQL.Add(' order by ParcelaCr.DTVENC ');
      	3: DMCONTA.TRel.SQL.Add(' order by CtaReceber.DTLANC ');
      End;
	   DMCONTA.TRel.SQL.Text;
	   DMCONTA.TRel.Open;

      DMMACS.TLoja.Edit;
      DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Contas a Receber/Relação dos Recebimentos';
      DMMACS.TLoja.Post;
      DMMACS.Transaction.CommitRetaining;
      FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaRec_Doc_REC.frf');
   End;
   //Paulo 23/11/2011: relatório de contas a receber para petshop
   If FMenu.TIPOREL='RELCTARDOC_REC_PET'
   Then Begin//o tipo de relatório é contas a receber RECEBIDAS
	   XJuncao:=' AND ';
	   DMCONTA.TRel.Close;
	   DMCONTA.TRel.SQL.Clear;
	   DMCONTA.TRel.SQL.Add(' select parcelacr.numparc, cliente.cod_interno, pessoa.nome, equipamento.descricao, ');
      DMCONTA.TRel.SQL.Add('parcelacr.valor, parcelacr.valorpg, parcelacr.parcial,ctareceber.dtlanc, parcelacr.dtvenc, parcelacr.dtdebito');
      DMCONTA.TRel.SQL.Add('From ParcelaCR ');
	   DMCONTA.TRel.SQL.Add(' left join ctareceber ON ctareceber.cod_ctareceber=Parcelacr.cod_ctareceber ');
	   DMCONTA.TRel.SQL.Add('  left join formpag ON ctareceber.cod_formpag = formpag.cod_formpag ');
      DMCONTA.TRel.SQL.Add(' Left Join Cliente on Cliente.Cod_Cliente=CtaReceber.COD_CLIENTE ');
      DMCONTA.TRel.SQL.Add(' left join pessoa on pessoa.cod_pessoa=cliente.cod_pessoa ');
      DMCONTA.TRel.SQL.Add(' left join equipamento on cliente.cod_cliente = equipamento.cod_equipamento');
	   DMCONTA.TRel.SQL.Add(' Where (FormPag.cod_loja=:CODLOJA) AND (CtaReceber.cod_cliente IS NOT NULL) ');
      DMCONTA.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
	   If (EdDataIni.Text<>'') And (EdDataFim.Text<>'')
	   Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ('+TIPODT+'  Between :Data1 and :Data2) ');
			DMCONTA.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
			DMCONTA.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
	        XJuncao:=' And ';
	   End;
      If CBTipoPag.Text<>'<TODOS>'
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (parcelacr.cobranca=:COBRANCA) ');
			DMCONTA.TRel.ParamByName('COBRANCA').AsString:=CBTIPOPAG.Text;
	        XJuncao:=' And ';
      End;
	   If (XPessoaIni<>'') and (XPessoaFim<>'')
	   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
		   	DMCONTA.TRel.SQL.Add(XJuncao+' (Pessoa.nome Between :PES1 And :PES2)');
		   	DMCONTA.TRel.ParamByName('PES1').AsString:=XPessoaIni;
		   	DMCONTA.TRel.ParamByName('PES2').AsString:=XPessoaFim;
	        XJuncao:=' And ';
	   End;
      If (XCONTA<>-1)
      Then Begin
      		DMCONTA.TRel.SQL.Add(' AND (ctareceber.COD_PLNCTA = :ContaPln)');
   		DMCONTA.TRel.ParamByName('ContaPln').AsInteger:=XCONTA;
      End;
	   If RGESCOLHA.ItemIndex=0
	   Then Begin//se for pedido apenas relatório de pendentes
			DMCONTA.TRel.SQL.Add(XJuncao+' ((ParcelaCR.fech<>'+#39+'S'+#39+') OR (ParcelaCR.fech IS NULL))');
	        XJuncao:= ' AND ';
	   End;
	   If RGESCOLHA.ItemIndex=1
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+' (Parcelacr.fech='+#39+'S'+#39+')');
	        XJuncao:= ' AND ';
	   End;
	   If RGESCOLHA.ItemIndex=2
      Then Begin//se realisar relatório apenas de baixados
	   		DMCONTA.TRel.SQL.Add(XJuncao+'(CTARECEBER.TIPOGERADOR='+#39+'PEDVCAD'+#39+')');
	   End;
      If RGESCOLHA.ItemIndex<>0
      Then Begin
          // somente clientes q estiverem no SCPC
          If RBClientesInclusos.Checked = true
          Then Begin
               DMCONTA.TRel.SQL.Add(XJuncao + ' (CLIENTE.SCPC = 1) ');
          End;
          // somente clientes não inclusos
          If RBClientesNInclusos.Checked = true
          Then Begin
               DMCONTA.TRel.SQL.Add(XJuncao + ' (CLIENTE.SCPC = 0) OR (CLIENTE.SCPC is null) ');
          End;
      End;

      If CbAntecipadoSomenteAntecipados.Checked = true
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ( parcelacr.antecipado=''1'') ');
	        XJuncao:=' And ';
      End;
      If CBAntecipadosSomenteNaoAntecipados.Checked = true
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (( parcelacr.antecipado=''0'') or (parcelacr.antecipado is null)) ');
	        XJuncao:=' And ';
      End;

      case RGORDEM.ItemIndex of
      	0: DMCONTA.TRel.SQL.Add(' order by Pessoa.NOME, parcelacr.numparc, ParcelaCr.DTVENC ');
      	1: DMCONTA.TRel.SQL.Add(' order by parcelacr.numparc, ParcelaCr.DTVENC ');
      	2: DMCONTA.TRel.SQL.Add(' order by ParcelaCr.DTVENC ');
      	3: DMCONTA.TRel.SQL.Add(' order by CtaReceber.DTLANC ');
      End;
	   DMCONTA.TRel.SQL.Text;
	   DMCONTA.TRel.Open;

      DMMACS.TLoja.Edit;
      DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Contas a Receber/Relação dos Recebimentos';
      DMMACS.TLoja.Post;
      DMMACS.Transaction.CommitRetaining;
      FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaRec_Doc_REC_Pet.frf');
   End;

	If (FMenu.TIPOREL='RELCTARCORR')
   Then Begin//o tipo de relatório é contas a receber tipo ficha técnica
	   XJuncao:=' AND ';
	   DMCONTA.TRel.Close;
	   DMCONTA.TRel.SQL.Clear;
	   DMCONTA.TRel.SQL.Add(' Select pessoa.nome, pessoa.cpfcnpj, pessoaf.rg, pessoa.endereco, pessoa.endnumero, pessoa.bairro, ');
	   DMCONTA.TRel.SQL.Add(' pessoa.cep, pessoa.telrel, cidade.nome AS CIDADE, parcelacr.cobranca, ');
	   DMCONTA.TRel.SQL.Add(' parcelacr.dtvenc, ctareceber.dtlanc,  parcelacr.historico, parcelacr.numparc, parcelacr.valor, ');
	   DMCONTA.TRel.SQL.Add(' loja.multa, loja.juros, loja.jurcomp ');
	   DMCONTA.TRel.SQL.Add(' from parcelacr ');
	   DMCONTA.TRel.SQL.Add(' left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
	   DMCONTA.TRel.SQL.Add(' join cliente on cliente.cod_cliente = ctareceber.cod_cliente ');
	   DMCONTA.TRel.SQL.Add(' join pessoa on pessoa.cod_pessoa = cliente.cod_pessoa ');
	   DMCONTA.TRel.SQL.Add(' left join pessoaf ON pessoaf.cod_pessoa = pessoa.cod_pessoa ');
	   DMCONTA.TRel.SQL.Add(' left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
	   DMCONTA.TRel.SQL.Add(' left  join formpag on formpag.cod_formpag = ctareceber.cod_formpag ');
	   DMCONTA.TRel.SQL.Add(' left join loja on loja.cod_loja = formpag.cod_loja ');
	   DMCONTA.TRel.SQL.Add(' where (formpag.cod_loja=:CODLOJA)  And (parcelacr.dtvenc<:data) and ((parcelacr.fech<>'+#39+'S'+#39+') Or (parcelacr.fech Is null)) ');
      DMCONTA.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
      DMCONTA.TRel.ParamByName('DATA').AsString:=DateToStr(DATE());
	   If (EdDataIni.Text<>'') And (EdDataFim.Text<>'')
	   Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ('+TIPODT+'  Between :Data1 and :Data2) ');
			DMCONTA.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
			DMCONTA.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
	        XJuncao:=' And ';
	   End;
      If CBTipoPag.Text<>'<TODOS>'
      Then Begin
			DMCONTA.TRel.SQL.Add(XJuncao+ ' (parcelacr.cobranca=:COBRANCA) ');
			DMCONTA.TRel.ParamByName('COBRANCA').AsString:=CBTIPOPAG.Text;
	        XJuncao:=' And ';
      End;
      // somente clientes q estiverem no SCPC
      If RBClientesInclusos.Checked = true
      Then Begin
           DMCONTA.TRel.SQL.Add(XJuncao + ' (CLIENTE.SCPC = 1) ');
      End;
      // somente clientes não inclusos
      If RBClientesNInclusos.Checked = true
      Then Begin
           DMCONTA.TRel.SQL.Add(XJuncao + ' (CLIENTE.SCPC = 0) OR (CLIENTE.SCPC is null) ');
      End;

	   If (XPessoaIni<>'') and (XPessoaFim<>'')
	   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
		   	DMCONTA.TRel.SQL.Add(XJuncao+' (PESSOA.NOME Between :PES1 And :PES2)');
		   	DMCONTA.TRel.ParamByName('PES1').AsString:=XPessoaIni;
		   	DMCONTA.TRel.ParamByName('PES2').AsString:=XPessoaFim;
	        XJuncao:=' And ';
	   End;
      If (XCONTA<>-1)
      Then Begin
      		DMCONTA.TRel.SQL.Add(' AND (ctareceber.COD_PLNCTA = :ContaPln)');
   		DMCONTA.TRel.ParamByName('ContaPln').AsInteger:=XCONTA;
      End;

      DMCONTA.TRel.SQL.Add(' order by pessoa.nome, ctareceber.numdoc, ctareceber.dtlanc, parcelacr.dtvenc ');
   	DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='...';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaRecCorr_Cli.frf');
	   DMCONTA.TRel.SQL.Text;
	   DMCONTA.TRel.Open;
   End;

	If FMenu.TIPOREL='RELPEDTOTFOR'
   Then Begin
		DMESTOQUE.TRel.SQL.Text;
	    DMESTOQUE.TRel.Open;
   End;
	If (FMenu.TIPOREL='RELCTAPFOR') OR (FMenu.TIPOREL='RELCTARCLI') or (FMenu.TIPOREL='RELEXTRACTCLI') or (FMenu.TIPOREL='RELEXTRACTPES_JUR')
   Then Begin
		DMCONTA.TRel.SQL.Text;
	    DMCONTA.TRel.Open;
   End;

   if (FMenu.TIPOREL = 'CTALANCAMENTO') or (FMenu.TIPOREL = 'CTALANCAMENTOGRAF') then
   begin
   	 //Edmar - 16/07/2014 - Sendo relatorio grafico ou sintetico executa determinado SQL
        if (FMenu.TIPOREL = 'CTALANCAMENTOGRAF') or (RGTipo.ItemIndex = 0)  then
        begin
            DMESTOQUE.TRel.Close;
            DMESTOQUE.TRel.SQL.Clear;
            //Edmar - 17/07/2014 - Valor contas pendentes
            if (rgFiltroTipoRel.ItemIndex = 0) then
            	DMESTOQUE.TRel.SQL.Add('select plncta.descricao plncta, sum(parcelacp.valor) ');
            //Edmar - 17/07/2014 - Valor contas baixadas (valor já pago)
            if rgFiltroTipoRel.ItemIndex = 1 then
              	DMESTOQUE.TRel.SQL.Add('select plncta.descricao plncta, sum(parcelacp.valorpg) ');

            DMESTOQUE.TRel.SQL.Add('from ctapagar ');
            DMESTOQUE.TRel.SQL.Add('left join plncta on ctapagar.cod_plncta = plncta.cod_plncta ');
            DMESTOQUE.TRel.SQL.Add('left join parcelacp on ctapagar.cod_ctapagar = parcelacp.cod_ctapagar ');
            DMESTOQUE.TRel.SQL.Add('where (ctapagar.cod_plncta is not null) AND (parcelacp.cod_ctapagar is not null) ');
        end;
        //Edmar - 16/07/2014 - Sendo relatorio analitico executa determinado SQL
        if (FMenu.TIPOREL = 'CTALANCAMENTO') AND (RGTipo.ItemIndex = 1) then
        begin
            DMESTOQUE.TRel.Close;
            DMESTOQUE.TRel.SQL.Clear;
            DMESTOQUE.TRel.SQL.Add('select plncta.descricao PLNCTA, ctapagar.dtlanc, parcelacp.dtvenc, parcelacp.dtdebito, pessoa.nome FORNECEDOR, parcelacp.historico, parcelacp.valor, parcelacp.valorpg ');
            DMESTOQUE.TRel.SQL.Add('from ctapagar ');
            DMESTOQUE.TRel.SQL.Add('left join plncta on ctapagar.cod_plncta = plncta.cod_plncta ');
            DMESTOQUE.TRel.SQL.Add('left join parcelacp on ctapagar.cod_ctapagar = parcelacp.cod_ctapagar ');
            DMESTOQUE.TRel.SQL.Add('left join fornecedor on ctapagar.cod_fornec = fornecedor.cod_fornec ');
            DMESTOQUE.TRel.SQL.Add('left join pessoa on fornecedor.cod_pessoa =  pessoa.cod_pessoa ');
            DMESTOQUE.TRel.SQL.Add('where (ctapagar.cod_plncta is not null) AND (parcelacp.cod_ctapagar is not null) ');
        end;
        //
   	 //Edmar - 16/07/2014 - Parametros de pesquisa é comum entre todos        
        case RGTIPODT.ItemIndex of
            0: DMESTOQUE.TRel.SQL.Add(' AND (ctapagar.dtlanc between :ini and :fin)');
            1: DMESTOQUE.TRel.SQL.Add(' AND (parcelacp.dtvenc between :ini and :fin)');
            2: DMESTOQUE.TRel.SQL.Add(' AND (parcelacp.dtdebito between :ini and :fin)');
            3: DMESTOQUE.TRel.SQL.Add(' AND ((parcelacp.dtdebito between :ini and :fin) OR (ctapagar.dtlanc between :ini and :fin) OR (parcelacp.dtvenc between :ini and :fin))');
        End;

        case rgFiltroTipoRel.ItemIndex of
            0: DMESTOQUE.TRel.SQL.Add(' AND (parcelacp.fech = ''N'')');
            1: DMESTOQUE.TRel.SQL.Add(' AND (parcelacp.fech = ''S'')');
        End;

        if (EdDataIni.Text <> '  /  /    ') and (EdDataFim.Text <> '  /  /    ') then
        begin
            DMESTOQUE.TRel.ParamByName('INI').AsString := EdDataIni.Text;
            DMESTOQUE.TRel.ParamByName('FIN').AsString := EdDataFim.Text;
        end;

        if XCONTA <> -1 then
        begin
            DMESTOQUE.TRel.SQL.Add(' AND (ctapagar.cod_plncta = :codplano)');
            DMESTOQUE.TRel.ParamByName('CODPLANO').AsInteger := XCONTA;
        end;
        ///////

        if (FMenu.TIPOREL = 'CTALANCAMENTOGRAF') or (RGTipo.ItemIndex = 0)  then
        begin
        	//Edmar - 16/07/2014 - Se relatorio grafico ou sintetico agrupa pelo plano        
        	DMESTOQUE.TRel.SQL.Add('GROUP BY PLNCTA.DESCRICAO');
           DMESTOQUE.TRel.Open;

           FSDSRel.DataSet := DMESTOQUE.TRel;

           if (RGTipo.ItemIndex = 0) and (RGTipo.Visible) then
           begin
            	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaLancamentosSintetico.frf');

               Exit;
           end;
       	//Edmar - 16/07/2014 - Parametros para o relatório gráfico
           FMenu.xSqlRelCtaLanc := DMESTOQUE.TRel.SQL.Text;
           FMenu.XDtFiltro01 := StrToDate(EdDataIni.Text);
           FMenu.XDtFiltro02 := StrToDate(EdDataFim.Text);
           FMenu.xCodPlncta := XCONTA;

           AbrirForm(TFRelGraficoPizza, FRelGraficoPizza, 0);

           Exit;
        end
        else begin
        	//Edmar - 16/07/2014 - Ordena pela descrição do plano de conta
        	DMESTOQUE.TRel.SQL.Add('ORDER BY PLNCTA.DESCRICAO');        
        	DMESTOQUE.TRel.Open;

           FSDSRel.DataSet := DMESTOQUE.TRel;
			//Edmar - 17/07/2014 - Relatorio analitico           
           if (RGTipo.ItemIndex = 1) then
           	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaLancamentosAnalitico.frf');
        end;
   end;
End;

// faz as configurações do formulario para rateio de contas
Procedure TFRelCtaPR.ConfiguraRateioContas;
begin
   RGORDEM.Visible := false;
   GBSCPC.Visible := false;
   FrmPessoaIni.LTextoBusca.Caption := 'Fornec. Incial:';
   FrmPessoaFim.LTextoBusca.Caption := 'Fornec. Final:';
   Caption := 'Rel. Ctas. Rateio';

   // desabilitando combobox
   CBTipoPag.Enabled := false;
   CBFiltroCliente.Enabled := false;

   // posição do groupbox
   GBTipo.Top := 120;
   GBTipo.Left := 13;
   GBTipo.Visible := true;

   // deixa ativado a primeira opção - Pendentes
   RGESCOLHA.ItemIndex := 0;

   // desativando os checkbox
   CBNormal.Checked := false;
   CBPromocao.Checked := false;
   CBReserva.Checked := false;
   CBCondominio.Checked := false;

   // limpando edits
   FrmPessoaIni.EdDescricao.Text := '';
   FrmPessoaIni.EDCodigo.Text := '';
   FrmPessoaFim.EdDescricao.Text := '';
   FrmPessoaFim.EDCodigo.Text := '';
   FrmConta.EDCodigo.Text := '';
   FrmConta.EdDescricao.Text := '';
   EdDataIni.Text := '';
   EdDataFim.Text := '';

   // atualizando janela
   FrmPessoaIni.Refresh;
   FrmPessoaFim.Refresh;
   RGTIPODT.BringToFront;

end;

procedure TFRelCtaPR.FormActivate(Sender: TObject);
begin
  inherited;
   // deixa ativado o RadioButon de todos os clientes
   RBTodos.Checked := true ;
   LPgto.Visible:=false;

   GBContasAntecipadas.Visible:=False;
   CBAntecipadoSemFiltro.Checked:=False;
   CbAntecipadoSomenteAntecipados.Checked:=False;
   CBAntecipadosSomenteNaoAntecipados.Checked:=False;

   DescRecAvulso.Visible:=false;
   Panel1.Visible:=false;

   if FMenu.TIPOREL = 'RECAVULSO'
   then begin
   	DescRecAvulso.Visible:=true;
	    Panel1.Visible:=true;
       Panel1.BringToFront;
       Caption := 'Recibo Avulso';
       EdData.Text := DateToStr(Date());
       edEmitente.Text:='';
       edEmitenteEnd.Text:='';
       edDocumento.Text:='';
       edValor.Text:='';
       EdCNPJ.Text:='';
       EdReceb.Text:='';
       EdEndereco.Text:='';
       EdMunicipio.Text:='';
       edEstado.Text:='';
       edReferente.Text:='';
       edRazSoc.Text:='';
       edInsEst.Text:='';

   end;

   //Prepara valores Iniciais
   XPessoaIni:='';
   XPessoaFim:='';
   FrmPessoaIni.EDCodigo.Text:='';
   FrmPessoaFim.EDCodigo.Text:='';
   XCONTA:=-1;
   RGEscolha.Hint:='Individual: Filtragem pela data e intervalo de pessoas.'+#13+'Por Intervalo: Filtragem apenas pela data.'+#13+'Livre: Emite relatório sem nenhum tipo de filtragem';

   EdDataIni.Text:=DateToStr(Date());
   EdDataFim.Text:=DateToStr(Date());
   PTipoFornec.Visible:=False;
   GBSCPC.Visible := false;
   //RELATÓRIO DE CTA PAGAR POR FORNECEDORES
	If (FMenu.TIPOREL='RELCTAPFOR') Or (FMenu.TIPOREL='RELCTAPMENS') Or (FMenu.TIPOREL='RELCTAPDOC_REC')
   Then Begin
       Caption:='Contas a Pagar por fornecedores';
       If (FMenu.TIPOREL='RELCTAPMENS') Then
       	Caption:='Contas a Pagar Mensal';
		If FMenu.TIPOREL='RELCTAPDOC_REC' Then
       begin
       	Caption:='Contas a Pagar Relação de Pagamentos';
           CBFiltroCliente.Enabled := false;
       end;
       FrmPessoaIni.LTextoBusca.Caption:='Fornecedor Inicial';
       FrmPessoaFim.LTextoBusca.Caption:='Fornecedor Final';
       PTipoFornec.Visible:=True;
       PTipoFornec.BringToFront;
   End;
   //RELATÓRIO DE CTA PAGAR POR FORNECEDORES
	If (FMenu.TIPOREL='RELCTARCLI') Or (FMenu.TIPOREL='RELCTARDOC')  Or (FMenu.TIPOREL='RELCTARDOCAGRUPADO') Or (FMenu.TIPOREL='RELCTARDOCCORR') Or (FMenu.TIPOREL='RELCTARDOC_REC') or (FMenu.TIPOREL='RELEXTRACTCLI') or (FMenu.TIPOREL='RELEXTRACTPES_JUR')
   Then Begin
       Caption:='Contas a Receber por clientes';
       CBFiltroCliente.Enabled := false;

       If (FMenu.TIPOREL='RELEXTRACTCLI') Then
           Caption:='Ctas á Receber c/ Dados Pessoas Físicas';
       If (FMenu.TIPOREL='RELEXTRACTPES_JUR') Then
           Caption:='Ctas á Receber c/ Dados Pessoas Jurídicas';
       If FMenu.TIPOREL='RELCTARDOC' Then
       	Caption:='Contas a Receber por Documento';
       If FMenu.TIPOREL='RELCTARDOCAGRUPADO' Then
       	Caption:='Contas a Receber por Documento Agrupado';
		If FMenu.TIPOREL='RELCTARDOCCORR' Then
       	Caption:='Contas a Receber por Documento Corrigido';
		If FMenu.TIPOREL='RELCTARDOC_REC' Then
       	Caption:='Relação de Recebimentos';
       GBContasAntecipadas.Visible:=True;
       GBContasAntecipadas.BringToFront;
       CBAntecipadoSemFiltro.Checked:=True;
       FrmPessoaIni.LTextoBusca.Caption:='Cliente Inicial';
       FrmPessoaFim.LTextoBusca.Caption:='Cliente Final';
       GBSCPC.Visible := true;
       GBSCPC.BringToFront;
   End ;

   //RELATÓRIO DE CTA RECEBER POR SACADO PARA OS DE DESPACHANTE
	If (FMenu.TIPOREL='RELCTARSACADO')
   Then Begin
       Caption:='Contas a Receber por sacado';
       CBFiltroCliente.Enabled := false;
       FrmPessoaIni.LTextoBusca.Caption:='Sacado Inicial';
       FrmPessoaFim.LTextoBusca.Caption:='Sacado Final';
       GBSCPC.Visible := true;
       GBSCPC.BringToFront;
   End ;
   //CONTROLA A POSSIBILIDADE DE REORDENAR PERMITIDO APENAS PARA RELATÓRIOS POR DOCUMENTO
   If (FMenu.TIPOREL='RELCTARDOC') Or (FMenu.TIPOREL='RELCTARDOCAGRUPADO') Or (FMenu.TIPOREL='RELCTARDOCCORR') or (FMenu.TIPOREL='RELCTAPDOC_REC')
   Then Begin
       RGORDEM.Visible:=True;
   End
   Else Begin
       RGORDEM.Visible:=False;
   End;

	FSDSRel.DataSource:=DMCONTA.DRel;
   FrmConta.Repaint;
   FrmPessoaFim.Repaint;
   FrmPessoaIni.Repaint;
   EdDataIni.SetFocus;

   // faz as configurações do formulario para ctas sobre fornecedor
   If FMenu.TIPOREL = 'RELCTA_FORNECEDOR' Then
       ConfiguraCtaFornecedor;

   // faz as configurações do formulario para ctas a receber de cliente
   If FMenu.TIPOREL = 'RELCTA_CLIENTE' Then
       ConfiguraCtaClientes;

   // configurações para relatorio de plano de contas
   If FMenu.TIPOREL = 'REL_PLANOCONTAS' Then
       ConfiguraPlanoCtas;

   // reçatório de rateio de contas p/ shopping
   If FMenu.TIPOREL = 'REL_CTARATEIO' Then
       ConfiguraRateioContas;

   //Paulo 10/10/2011: Para confugurar formulário de contas vencidas    
   if (FMenu.TIPOREL ='RELCTAVENCIDAREC') OR (FMenu.TIPOREL ='RELCTAVENCIDAPAGAR') then
       ConfiguraCtaVencida;


  //******
  if (FMenu.TIPOREL='RELCTARCLI') or (FMenu.TIPOREL='RELCTARDOCAGRUPADO')
	then begin
     EdDataIniAux.visible:=true;
     EdDataFimAux.visible:=true;
     Label6.visible:=true;
     label7.visible:=true;
     GroupBox6.visible:=true;
   end;

   if (FMenu.TIPOREL='REL_CTARATEIO') or (FMenu.TIPOREL = 'RELCTA_FORNECEDOR')
   then begin
       RGTipo.BringToFront;
       RGTipo.Visible:=true;
   end
   else begin
       RGTipo.SendToBack;
       RGTipo.Visible:=false;
   end;

   //Edmar - 18/06/2014 - Configura relatorio de contas para lançamentos
   if (FMenu.TIPOREL = 'CTALANCAMENTO') or (FMenu.TIPOREL = 'CTALANCAMENTOGRAF') then
   	ConfiguraContasLancamentos;

   //*****
end;

procedure TFRelCtaPR.FrmPessoaIniBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //limpa pessoa inicial
   XPessoaIni:='';
   FrmPessoaIni.EDCodigo.Text:='';
   FrmPessoaini.EdDescricao.Text:='';
   FrmPessoaIni.Repaint;
end;

procedure TFRelCtaPR.FrmPessoaFimBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //limpa pessoa inicial
   XPessoaFim:='';
   FrmPessoaFim.EDCodigo.Text:='';
   FrmPessoaFim.EdDescricao.Text:='';
   FrmPessoaFim.Repaint;   
end;

procedure TFRelCtaPR.FrmPessoaIniBTNOPENClick(Sender: TObject);
begin
  inherited;// se for para rateio de custos do shopping
	If (FMenu.TIPOREL='RELCTAPFOR') or (FMenu.TIPOREL='RELPEDFOR') Or (FMenu.TIPOREL='RELCTAPDOC_REC') or (FMenu.TIPOREL = 'RELCTA_FORNECEDOR') or (FMenu.TIPOREL = 'REL_CTARATEIO') or (FMenu.TIPOREL = 'RELCTAP_PREVI')or (FMenu.TIPOREL='RELCTAVENCIDAPAGAR')
   Then Begin//RELATÓRIO DE CONTAS A PAGAR
   	//LIBERA TODOS OS FORNECEDORE PARA CONSUTA
		filtraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', '');
   	If AbrirForm(TFFornecedor, FFornecedor, 1)='Selected'
   	Then Begin
   		XPessoaIni:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
       	FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
       	FrmPessoaIni.EDCodigo.text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
   	End;
   End;
	If (FMenu.TIPOREL='RELCTARCLI')  or (FMenu.TIPOREL='RELCTARSACADO')  or (FMenu.TIPOREL='RELPEDCLI') or (FMenu.TIPOREL='RELCTARDOC') or (FMenu.TIPOREL='RELCTARCORR')  Or (FMenu.TIPOREL='RELCTARDOCCORR') or (FMenu.TIPOREL='RELCTAPMENS') Or (FMenu.TIPOREL='RELCTARDOC_REC') OR (FMenu.TIPOREL= 'RELEXTRACTCLI') or (FMenu.TIPOREL='RELEXTRACTPES_JUR') or (FMenu.TIPOREL='RELCTA_CLIENTE') or (FMenu.TIPOREL='RELCTARDOCAGRUPADO') or (FMenu.TIPOREL='RELCTAPDATA')or (FMenu.TIPOREL='RELCTAVENCIDAREC') or (FMenu.TIPOREL='RELCTARDOC_REC_PET')// jonathan - dia 24/04/2009 - acrescentado a condição (FMenu.TIPOREL='RELCTARDOCAGRUPADO') para atender chamado 265
   Then Begin//RELATÓRIO DE CONTAS A RECEBER                                                                                                                                                                                                                                                                                                                                                                                                                               // jonathan - dia 27/04/2009 - acrescentado a condição (FMenu.TIPOREL='RELCTAPDATA') para atender chamado 267
   	//LIBERA TODOS OS CLIENTES PARA CONSUTA
		filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '');
   	If AbrirForm(TFCliente, FCliente, 1)='Selected'
   	Then Begin
   		XPessoaIni:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       	FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       	FrmPessoaIni.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
   	End;
   End;
   If FMenu.TIPOREL='REL_PLANOCONTAS'
   Then Begin
       // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
       XTIPO_CONTA := 'D';

       // libera todos planos de conta para consulta
       FiltraTabela(DMCONTA.TPlnCta,'PLNCTA','','','');

       If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
       Then Begin
           FrmPessoaIni.EDCodigo.Text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           FrmPessoaIni.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
           FrmPessoaFim.BTNOPEN.SetFocus;
       End;
   End;
   FrmPessoaIni.Repaint;
end;

procedure TFRelCtaPR.FrmPessoaFimBTNOPENClick(Sender: TObject);
begin
  inherited;                                                                                                                                      // se for para rateio de custos do shopping
	If (FMenu.TIPOREL='RELCTAPFOR') or (FMenu.TIPOREL='RELPEDFOR')  Or (FMenu.TIPOREL='RELCTAPDOC_REC') or (FMenu.TIPOREL = 'RELCTA_FORNECEDOR') or (FMenu.TIPOREL = 'REL_CTARATEIO') or (FMenu.TIPOREL = 'RELCTAP_PREVI')OR (FMenu.TIPOREL='RELCTAVENCIDAPAGAR')
   Then Begin//RELATÓRIO DE CONTAS A PAGAR
   	//LIBERA TODOS OS FORNECEDORE PARA CONSUTA
		filtraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', '');
   	If AbrirForm(TFFornecedor, FFornecedor, 1)='Selected'
   	Then Begin
   		XPessoaFim:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
       	FrmPessoaFim.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
       	FrmPessoaFim.EDCodigo.text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
   	End;
   End;
	If (FMenu.TIPOREL='RELCTARCLI')   or (FMenu.TIPOREL='RELCTARSACADO')  or (FMenu.TIPOREL='RELPEDCLI') or (FMenu.TIPOREL='RELCTARDOC') or (FMenu.TIPOREL='RELCTARCORR')  Or (FMenu.TIPOREL='RELCTARDOCCORR') Or (FMenu.TIPOREL='RELCTAPMENS')  Or (FMenu.TIPOREL='RELCTARDOC_REC') OR (FMenu.TIPOREL= 'RELEXTRACTCLI') or (FMenu.TIPOREL='RELEXTRACTPES_JUR') or (FMenu.TIPOREL='RELCTA_CLIENTE') or (FMenu.TIPOREL='RELCTARDOCAGRUPADO') or (FMenu.TIPOREL='RELCTAPDATA') OR (FMenu.TIPOREL='RELCTAVENCIDAREC')or (FMenu.TIPOREL='RELCTARDOC_REC_PET') // jonathan - dia 24/04/2009 - acrescentado condição (FMenu.TIPOREL='RELCTARDOCAGRUPADO') para atender chamado 265
   Then Begin//RELATÓRIO DE CONTAS A RECEBER                                                                                                                                                                                                                                                                                                                                                                                          // jonathan - dia 27/04/2009 - acrescentado condição (FMenu.TIPOREL='RELCTAPDATA') para atender chamado 267
   	//LIBERA TODOS OS CLIENTES PARA CONSUTA
		filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '');
   	If AbrirForm(TFCliente, FCliente, 1)='Selected'
   	Then Begin
   		XPessoaFim:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       	FrmPessoaFim.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       	FrmPessoaFim.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
   	End;
   End;
   If FMenu.TIPOREL='REL_PLANOCONTAS'
   Then Begin
       // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
       XTIPO_CONTA := 'D';

       // libera todos planos de conta para consulta
       FiltraTabela(DMCONTA.TPlnCta,'PLNCTA','','','');

       If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
       Then Begin
           FrmPessoaFim.EDCodigo.Text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           FrmPessoaFim.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
           BtnVisualizar.SetFocus;
       End;
   End;
   FrmPessoaFim.Repaint;
end;

procedure TFRelCtaPR.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
   if PrepareImp then
   	FSRel.ShowReport;
       
   if FMenu.TIPOREL = 'RECAVULSO'
   then begin
       if (edValor.Text <> '') and (edEmitente.Text <> '') and (EdReceb.Text <> '') and (edReferente.Text <> '')
       then begin
            QRLabel2.Caption:=edEmitente.Text;
            QRLabel3.Caption:=edEmitenteEnd.Text;
            QRLabel4.Caption:=edDocumento.Text;
            QRLabel5.Caption:=edValor.Text;
            QRLabel6.Caption:=EdReceb.Text;
            QRLabel7.Caption:=EdCNPJ.Text;
            QRLabel8.Caption:=EdEndereco.Text;
            QRLabel9.Caption:=EdMunicipio.Text;
            QRLabel10.Caption:=edEstado.Text;
            FMenu.Extenso.Numero:= edValor.Text{FormatFloat('0.00', edValor.Text)};
            QRLabel5.Caption:=FMenu.Extenso.Numero;
            QRLabel11.Caption:=UpperCase(FMenu.Extenso.Extenso);
            QRLabel12.Caption:=edReferente.Text;
            QRLabel14.Caption:=edRazSoc.Text;
            QRLabel16.Caption:=edInsEst.Text;
            QRLabel17.Caption:=EdData.Text;
            XACUMULAVALOR:= StrToFloat(QRLabel5.Caption);

            if RDRECAVULSO.ItemIndex=1
            then begin
                QRLabel13.Enabled:=false;
                QRLabel14.Enabled:=false;
                QRLabel15.Enabled:=false;
                QRLabel16.Enabled:=false;
            end;

            ReciboAvulsoReceber.Preview;
       end else
       if edValor.Text = ''
       then begin
       	 Mensagem('A T E N Ç Ã O ', 'Favor Informar o Valor!', '', 1,1, false, 'i');
       end else
       if edEmitente.Text = ''
       then begin
           Mensagem('A T E N Ç Ã O ', 'Favor Informar o Emitente!', '', 1,1, false, 'i');
       end else
       if EdReceb.Text = ''
       then begin
           Mensagem('A T E N Ç Ã O ', 'Favor Informar o Recebedor!', '', 1,1, false, 'i');
       end else
       if edReferente.Text = ''
       then begin
           Mensagem('A T E N Ç Ã O ', 'Favor Informar a Referencia!', '', 1,1, false, 'i');
       end;
   end;
end;



procedure TFRelCtaPR.QRBRecFinBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;

       QRLabel11.Caption:=UpperCase(FMenu.Extenso.Extenso);
end;


procedure TFRelCtaPR.FrmPessoaIniEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FrmPessoaIni.EDCodigoKeyPress(Sender, Key);
  FrmPessoaIni.Repaint;
end;

procedure TFRelCtaPR.CBTIPOFORKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	Key:=#0;
end;

procedure TFRelCtaPR.FrmContaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XConta:=-1;
   FrmConta.EDCodigo.Text:='';
   FrmConta.EdDescricao.Text:='';
   FrmConta.Repaint;   
end;

procedure TFRelCtaPR.FrmContaBTNOPENClick(Sender: TObject);
Var
	XAUX: String;
begin
  inherited;
   XAUX:=FMenu.TIPOAUX;
   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   XTIPO_CONTA := 'D';

	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
   FrmConta.Repaint;
   FMenu.TIPOAUX:=XAUX;      
end;

procedure TFRelCtaPR.BtnImprimirClick(Sender: TObject);
begin
  inherited;
   PrepareImp;
   FSRel.PrepareReport;
   FSRel.PrintPreparedReport('1', 1, True, frAll) ;
end;

procedure TFRelCtaPR.FrmPessoaFimEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FrmPessoaFim.EDCodigoKeyPress(Sender, Key);
  FrmPessoaFim.Repaint;
end;

// faz as configurações do formulario para ctas sobre fornecedor
procedure TFRelCtaPR.ConfiguraCtaFornecedor;
begin
   Caption := 'Ctas. Pagar por Fornecedor';
   RGESCOLHA.Visible := false;
   RGORDEM.Visible := false;
   FrmPessoaIni.LTextoBusca.Caption := 'Fornecedor Ini.:';
   FrmPessoaFim.LTextoBusca.Caption := 'Fornecedor Final:';
end;

procedure TFRelCtaPR.FrmPessoaIniEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   If Key = 13
   Then Begin                                      // rateio de custos do shopping
       If (FMenu.TIPOREL = 'RELCTA_FORNECEDOR') or (FMenu.TIPOREL = 'REL_CTARATEIO') or (FMenu.TIPOREL = 'RELCTAPFOR') or (FMenu.TIPOREL = 'RELCTAP_PREVI')
       Then Begin
           If FiltraTabela(DMPESSOA.WFornecedor,'VWFORNEC','COD_INTERNO',FrmPessoaIni.EDCodigo.Text,'') = TRUE
           Then Begin // jonathan - Dia 30/04/2009 - acrescentado a variavel para gerar o relatório de maneira correta.
       	    XPessoaIni:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
               FrmPessoaIni.EdDescricao.Text := DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
               FrmPessoaIni.EDCodigo.text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
               FrmPessoaFim.EDCodigo.SetFocus;
           End
           Else Begin
               FrmPessoaIni.EdDescricao.Text := '';
           End;
       End;
       If (FMenu.TIPOREL = 'RELCTA_CLIENTE') or (FMenu.TIPOREL = 'RELCTARCLI')  or (FMenu.TIPOREL='RELCTARDOCAGRUPADO') or (FMenu.TIPOREL='RELCTAPDATA') or (FMenu.TIPOREL='RELCTARDOC') or (FMenu.TIPOREL='RELCTARDOC_REC') or (FMenu.TIPOREL='RELCTARDOCCORR') or (FMenu.TIPOREL='RELEXTRACTCLI') or (FMenu.TIPOREL='RELEXTRACTPES_JUR') // jonathan - dia 24/04/2009 - acrescentado a condição (FMenu.TIPOREL='RELCTARDOCAGRUPADO') para atender chamado 265
       Then Begin     // jonathan - Dia 30/04/2009 - acrescentado a variavel para gerar o relatório de maneira correta.                                                                                                                                  								   																		  									  										// jonathan - dia 27/04/2009 - acrescentado a condição (FMenu.TIPOREL='RELCTAPDATA') para atender chamado 267
           If FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_INTERNO',FrmPessoaIni.EDCodigo.Text,'') = TRUE
           Then Begin
               XPessoaIni:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
               FrmPessoaIni.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
               FrmPessoaIni.EDCodigo.Text := DMPESSOA.WCliente.FieldByName ('COD_INTERNO').AsString;
               FrmPessoaFim.EDCodigo.SetFocus;
           End
           Else Begin
               FrmPessoaIni.EdDescricao.Text := '';
           End;
       End;
       If FMenu.TIPOREL='REL_PLANOCONTAS'
       Then Begin
           // libera todos planos de conta para consulta
           If FiltraTabela(DMCONTA.TPlnCta,'PLNCTA','CLASSIFICACAO',FrmPessoaIni.EDCodigo.Text,'') = TRUE
           Then Begin
               FrmPessoaIni.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               FrmPessoaFim.BTNOPEN.SetFocus;
           End
           Else Begin
               FrmPessoaIni.EdDescricao.Text := '';
           End;
       FrmPessoaIni.Repaint;
       End;
   End;
end;

procedure TFRelCtaPR.FrmPessoaFimEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   If Key = 13
   Then Begin                                      // rateio de custos do shopping
       If (FMenu.TIPOREL = 'RELCTA_FORNECEDOR') or (FMenu.TIPOREL = 'REL_CTARATEIO') or (FMenu.TIPOREL = 'RELCTAPFOR') or (FMenu.TIPOREL = 'RELCTAP_PREVI')
       Then Begin
           If FiltraTabela(DMPESSOA.WFornecedor,'VWFORNEC','COD_FORNEC',FrmPessoaFim.EDCodigo.Text,'') = TRUE
           Then Begin  // jonathan - Dia 30/04/2009 - acrescentado a variavel para gerar o relatório de maneira correta.
        	    XPessoaFim:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
       		FrmPessoaFim.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
       		FrmPessoaFim.EDCodigo.text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
				FrmConta.BTNOPEN.SetFocus
           End
           Else Begin
               FrmPessoaFim.EdDescricao.Text := '';
           End;
       End;
       If (FMenu.TIPOREL = 'RELCTA_CLIENTE')  or (FMenu.TIPOREL = 'RELCTARCLI')  or (FMenu.TIPOREL='RELCTARDOCAGRUPADO') or (FMenu.TIPOREL='RELCTAPDATA') or (FMenu.TIPOREL='RELCTARDOC') or (FMenu.TIPOREL='RELCTARDOC_REC') or (FMenu.TIPOREL='RELCTARDOCCORR') or (FMenu.TIPOREL='RELEXTRACTCLI') or (FMenu.TIPOREL='RELEXTRACTPES_JUR') // jonathan - dia 24/04/2009 - acrescentado a condição (FMenu.TIPOREL='RELCTARDOCAGRUPADO') para atender chamado 265
       Then Begin                                                                                                                                      								 									  									 									 										 // jonathan - dia 27/04/2009 - acrescentado a condição (FMenu.TIPOREL='RELCTAPDATA') para atender chamado 267
           If FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_INTERNO',FrmPessoaFim.EDCodigo.Text,'') = TRUE
           Then Begin  // jonathan - Dia 30/04/2009 - acrescentado a variavel para gerar o relatório de maneira correta.
           	XPessoaFim:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       		FrmPessoaFim.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       		FrmPessoaFim.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
               FrmConta.BTNOPEN.SetFocus;
           End
           Else Begin
               FrmPessoaFim.EdDescricao.Text := '';
           End;
       End;
       If FMenu.TIPOREL='REL_PLANOCONTAS'
       Then Begin
           // libera todos planos de conta para consulta
           If FiltraTabela(DMCONTA.TPlnCta,'PLNCTA','CLASSIFICACAO',FrmPessoaFim.EDCodigo.Text,'') = TRUE
           Then Begin
               FrmPessoaFim.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               BtnVisualizar.SetFocus;
           End
           Else Begin
               FrmPessoaFim.EdDescricao.Text := '';
           End;
       FrmPessoaFim.Repaint;
       End;
   End;

end;

// faz as configurações do formulario para ctas a receber de cliente
procedure TFRelCtaPR.ConfiguraCtaClientes;
begin
   Caption := 'Ctas. Receber de Clientes';
   RGESCOLHA.Visible := false;
   RGORDEM.Visible := false;
   FrmPessoaIni.LTextoBusca.Caption := 'Cliente Ini.:';
   FrmPessoaFim.LTextoBusca.Caption := 'Cliente Final:';
      
end;

// configurações para relatorio de plano de contas
procedure TFRelCtaPR.ConfiguraPlanoCtas;
begin
   Caption := 'Relatório de Plano de Contas';
   RGESCOLHA.Visible := false;
   RGORDEM.Visible := false;
   GBSCPC.Visible := false;
   FrmPessoaIni.LTextoBusca.Caption := 'Plano de Contas Inicial:';
   FrmPessoaFim.LTextoBusca.Caption := 'Plano de Contas Final:';
   FrmConta.Visible := false;
   RGTIPODT.ItemIndex := 0;
   RGTIPODT.Enabled := false;
   
end;

//Paulo 10/10/2011: Configura formulário para contas vencidas
procedure TFRelCtaPR.ConfiguraCtaVencida;
begin
   Caption := 'Ctas. Vencidas';
   RGESCOLHA.Visible := false;
   RGORDEM.Visible := false;
   RGTIPODT.Visible := false;
   GBSCPC.Visible := false;
   GBTipo.Visible := false;
   RGTipo.Visible := false;
   FrmConta.Visible:=false;
   FrmPessoaIni.LTextoBusca.Caption := 'Cliente Ini.:';
   FrmPessoaFim.LTextoBusca.Caption := 'Cliente Final:';
end;

procedure TFRelCtaPR.FrmContaEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   If Key = 13
   Then Begin
 		If FrmConta.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+FrmConta.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XConta:=-1;
		      	FrmConta.EdDescricao.Text:='';
		      	FrmConta.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XConta:=0;
	      	FrmConta.EdDescricao.Text:='';
	      	FrmConta.EDCodigo.text:='';
       End;
   End;
   FrmConta.Repaint;
end;

procedure TFRelCtaPR.FrmContaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FrmConta.EDCodigoKeyPress(Sender, Key);
  FrmConta.Repaint;
end;


// jonathan - dia 05/05/09 - fazendo conforme solicitado no chamado 321
procedure TFRelCtaPR.RGTIPODTClick(Sender: TObject);
begin
  inherited;
  if (RGTIPODT.ItemIndex=0) or (RGTIPODT.ItemIndex=1) or ( RGTIPODT.ItemIndex=2)
    then begin
        EdDataIniAux.Visible:=false;
        EdDataFimAux.visible:=false;
        label6.visible:=false;
        label7.visible:=false;
        GroupBox6.Visible:=false;
    end
    else begin
    	if (FMenu.TIPOREL <> 'CTALANCAMENTO') AND (FMenu.TIPOREL <> 'CTALANCAMENTOGRAF') then
       begin
          EdDataIniAux.Visible:=true;
          EdDataFimAux.visible:=true;
          label6.visible:=true;
          label7.visible:=true;
          GroupBox6.Visible:=true;
       end;
    end;
end;

procedure TFRelCtaPR.EdDataIniAuxExit(Sender: TObject);
begin
  if  (EdDataIniAux.Text <> '  /  /    ') and (EdDataFimAux.text <> '  /  /    ')
  then begin
      TRadioGroup(RGTIPODT.Controls[0]).Enabled:= False;
      TRadioGroup(RGTIPODT.Controls[1]).enabled:=false;
      tradiogroup(RGTIPODT.controls[2]).enabled:=false;
      RGTIPODT.ItemIndex:=3;
  end
   else begin
      TRadioGroup(RGTIPODT.Controls[0]).Enabled:= True;
      TRadioGroup(RGTIPODT.Controls[1]).enabled:=True;
      tradiogroup(RGTIPODT.controls[2]).enabled:=True;
  end;
end;

procedure TFRelCtaPR.EdDataFimAuxExit(Sender: TObject);
begin
  if  (EdDataIniAux.Text <> '  /  /    ') and (EdDataFimAux.text <> '  /  /    ')
  then begin
      TRadioGroup(RGTIPODT.Controls[0]).Enabled:= False;
      TRadioGroup(RGTIPODT.Controls[1]).enabled:=false;
      tradiogroup(RGTIPODT.controls[2]).enabled:=false;
      RGTIPODT.ItemIndex:=3;
  end
   else begin
      TRadioGroup(RGTIPODT.Controls[0]).Enabled:= True;
      TRadioGroup(RGTIPODT.Controls[1]).enabled:=True;
      tradiogroup(RGTIPODT.controls[2]).enabled:=True;
  end;
end;

procedure TFRelCtaPR.BtnOkClick(Sender: TObject);
begin
  inherited;
	 if (RDRECAVULSO.ItemIndex=0)
    then begin
       // DMMACS.TEmpAc.First;
       FiltraTabela(DMGEOGRAFIA.TCidade,'CIDADE','COD_CIDADE',DMMACS.TEmpresa.FieldByName('cod_cidade').AsString,'');
       FiltraTabela(DMGEOGRAFIA.TEstado,'ESTADO','COD_ESTADO',DMGEOGRAFIA.TCidade.fieldByName('cod_estado').AsString,'');
       Caption := 'Recibo de Contas a Pagar';
       edEmitente.SetFocus;
		EdReceb.Text:=DMMACS.tEmpAc.Fieldbyname('FANTASIA').AsString;
       edReceb.Enabled := false;
       EdEndereco.Text:=DMMACS.TEmpAc.FieldByName('ENDERECO').AsString;
       edEndereco.Enabled := false;
       edRazSoc.Text:=DMMACS.TEmpAc.FieldByName('RAZAO_SOCIAL').AsString;
       edRazSoc.Enabled:=false;
       edInsEst.Text:=DMMACS.TEmpAc.FieldByName('INSC_EST').AsString;
       edInsEst.Enabled:=false;
//       EdMunicipio.Text:= DMGEOGRAFIA.TCidade.FieldByNAme('NOME').AsString;
       EdMunicipio.text:=DMGEOGRAFIA.WCidadeNOME.AsString;
       EdMunicipio.Enabled:=false;
       edEstado.text:=DMGEOGRAFIA.TEstadoUF_ESTADO.AsString;
       edEstado.Enabled:=false;  
    end;
    if (RDRECAVULSO.ItemIndex=1)
    then begin
        Caption := 'Recibo de Contas a Receber';
        edDocumento.SetFocus;
        edEmitente.Text := DMMACS.TEmpAc.FieldByName('FANTASIA').AsString;
        edEmitente.Enabled:=false;
        edEmitenteEnd.Text := DMMACS.TEmpAc.FieldByName('ENDERECO').AsString;
        edEmitenteEnd.Enabled:=false;
        RazSoc.Visible:=false;
        edRazSoc.Visible:=false;
        InsEst.Visible:=False;
        edInsEst.Visible:=false;
    end;
	 DescRecAvulso.BringToFront;
end;

procedure TFRelCtaPR.ConfiguraContasLancamentos;
begin
	Caption := 'Rel. Contas de Lançamento';
   FrmPessoaIni.Visible := False;
   FrmPessoaFim.Visible := False;
   RGESCOLHA.Visible := False;
   CBTipoPag.Visible := False;
   PTipoCliente.Visible := False;

   if (FMenu.TIPOREL <> 'CTALANCAMENTOGRAF') then
   begin
   	RGTIPO.BringToFront;
   	RGTipo.Visible := True;
   end;
end;

procedure TFRelCtaPR.CBAntecipadoSemFiltroClick(Sender: TObject);
begin
  inherited;
	If CBAntecipadoSemFiltro.Checked=True
	Then Begin
       CbAntecipadoSomenteAntecipados.Checked:=False;
       CBAntecipadosSomenteNaoAntecipados.Checked:=False;
	End;
end;

procedure TFRelCtaPR.CbAntecipadoSomenteAntecipadosClick(Sender: TObject);
begin
  inherited;
	If CbAntecipadoSomenteAntecipados.Checked=True
	Then Begin
       CBAntecipadoSemFiltro.Checked:=False;
       CBAntecipadosSomenteNaoAntecipados.Checked:=False;
	End;
end;

procedure TFRelCtaPR.CBAntecipadosSomenteNaoAntecipadosClick(
  Sender: TObject);
begin
  inherited;
	If CBAntecipadosSomenteNaoAntecipados.Checked=True
	Then Begin
       CBAntecipadoSemFiltro.Checked:=False;
       CbAntecipadoSomenteAntecipados.Checked:=False;
	End;
end;

end.
