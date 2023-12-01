unit UOrdemPet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, ExtCtrls, StdCtrls, TFlatEditUnit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxControls, cxContainer, cxEdit, cxGroupBox,
  Grids, DBGrids, ComCtrls, EditFloat, ColorEditFloat, Mask, ColorMaskEdit,
  DBCtrls, UFrmBusca, FR_DSet, FR_DBSet, FR_Class, FashionPanel, Menus, ClipBrd;

type
  TFOrdemPet = class(TFPadrao)
    PConsulta: TPanel;
    PExp: TPanel;
    LBCONEXAO: TLabel;
    PBExport: TProgressBar;
    DBGridConsulta: TDBGrid;
    PBotoesConsulta: TPanel;
    BtnNovo: TBitBtn;
    BtnApagar: TBitBtn;
    BtnConsultar: TBitBtn;
    BtnRelatorio: TBitBtn;
    BtnCancelamentos: TBitBtn;
    BtnFechaPed: TBitBtn;
    cxGroupBox1: TcxGroupBox;
    CBFILTRO: TcxComboBox;
    cxGroupBox2: TcxGroupBox;
    CBORDEM: TcxComboBox;
    GBPLACA: TcxGroupBox;
    EdRaca: TFlatEdit;
    EDNum: TFlatEdit;
    EDCliente: TFlatEdit;
    EdAnimal: TFlatEdit;
    PCadastro: TPanel;
    Panel4: TPanel;
    Label24: TLabel;
    Label9: TLabel;
    FrmCliente: TFrmBusca;
    FrmAnimal: TFrmBusca;
    EdObsFinanceira: TEdit;
    EdContatoCliente: TDBEdit;
    MObs: TMemo;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    Shape12: TShape;
    BtnGravar: TBitBtn;
    BtnCancelar: TBitBtn;
    EdValorTotal: TColorEditFloat;
    EdNumero: TColorEditFloat;
    EdEnderecoCliente: TEdit;
    EdFoneCliente: TEdit;
    EdAnimalObs: TEdit;
    EdAnimalRaca: TEdit;
    EdAnimalCor: TEdit;
    FrmResponsavel: TFrmBusca;
    FSRel: TfrReport;
    FSDSRel: TfrDBDataSet;
    PFinanceiro: TPanel;
    PBanco: TPanel;
    Label115: TLabel;
    DBGCTA: TDBGrid;
    FPFinanceiro: TFashionPanel;
    Label4: TLabel;
    BtnMoedaOK: TBitBtn;
    BtnMoedaCancelar: TBitBtn;
    CBPagamento: TComboBox;
    FrmFormPag: TFrmBusca;
    FrmContaServ: TFrmBusca;
    Panel7: TPanel;
    Label6: TLabel;
    EdDtFech: TColorMaskEdit;
    CBGeraFinanceiro: TCheckBox;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    BtnInsertProd: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    BtnProcServ: TBitBtn;
    EdCodInternoServ: TColorEditFloat;
    Label27: TLabel;
    Label1: TLabel;
    EdVlrCustoServ: TColorEditFloat;
    Label12: TLabel;
    EDQtdServ: TColorEditFloat;
    Label13: TLabel;
    EDVlrUnitServ: TColorEditFloat;
    Label14: TLabel;
    EdDescServ: TColorEditFloat;
    Label22: TLabel;
    EdVlrtotalServ: TColorEditFloat;
    BtnInsertServ: TBitBtn;
    BtnDeleteServ: TBitBtn;
    Shape2: TShape;
    LServico: TLabel;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    BtnProcProd: TBitBtn;
    EdCodigo: TColorEditFloat;
    EdVlrCustoProd: TColorEditFloat;
    EDQtdProd: TColorEditFloat;
    EDVlrUnitProd: TColorEditFloat;
    EdDescProd: TColorEditFloat;
    EdVlrtotalProd: TColorEditFloat;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    BitBtn2: TBitBtn;
    BtnDeleteProd: TBitBtn;
    Shape3: TShape;
    LProduto: TLabel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Label31: TLabel;
    EdtotalProd: TColorEditFloat;
    EdTotalserv: TColorEditFloat;
    Label23: TLabel;
    EdDescTProd: TColorEditFloat;
    Label42: TLabel;
    EdDescTServ: TColorEditFloat;
    Label41: TLabel;
    EdDescTOrdem: TColorEditFloat;
    EdTotalOrd: TColorEditFloat;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    FSDSProd: TfrDBDataSet;
    FSDSServ: TfrDBDataSet;
    PMRel: TPopupMenu;
    CompAbertura1: TMenuItem;
    N1: TMenuItem;
    RelatrioSinttico1: TMenuItem;
    RelatriodeServiosAgrupados1: TMenuItem;
    RelatriodeProdutosAgrupados1: TMenuItem;
    RelatriodeProdutosporCliente1: TMenuItem;
    RelatriodeServiosporCliente1: TMenuItem;
    cxGroupBox3: TcxGroupBox;
    btnApagarFiltroData: TSpeedButton;
    EdDtFiltro01: TMaskEdit;
    edDtFiltro02: TMaskEdit;
    Label25: TLabel;
    EdCreditoCliente: TFloatEdit;
    EdEstFisicoProduto: TFloatEdit;
    BtnParticularidadesAnimal: TBitBtn;
    PParticularidadesAnimal: TPanel;
    MParticularidadesAnimal: TMemo;
    BitBtn3: TBitBtn;
    Label26: TLabel;
    Label33: TLabel;
    Shape1: TShape;
    PParticularidadesCliente: TPanel;
    Shape4: TShape;
    Label34: TLabel;
    Label35: TLabel;
    MParticularidadesCliente: TMemo;
    BitBtn1: TBitBtn;
    BtnParticularidadesCliente: TBitBtn;
    ComparativoProdEntradasXSadas1: TMenuItem;
    Relatr1: TMenuItem;
    ControleDiaMesdeVendaseServicos1: TMenuItem;
    RelatriodeServiosporGrade1: TMenuItem;
    RelatriodePagamentosdeServios1: TMenuItem;
    PopupMenu1: TPopupMenu;
    Reen1: TMenuItem;
    CancelarNFCe1: TMenuItem;
    VisualizarDANFCe1: TMenuItem;
    EdFiscal: TFlatEdit;
    RecuperardadosdaNFCe1: TMenuItem;
    ListarNFCeenvidas1: TMenuItem;
    SalvareenviarXMLdedistribuio1: TMenuItem;
    BtnSelecionar: TBitBtn;
    RelatriodeDANFENFe1: TMenuItem;
    RelatriodeDanfesNFCe1: TMenuItem;
    CartadeCorreoEletrnica1: TMenuItem;
    EfetuardevoluodaNFe1: TMenuItem;
    RelaodeNotasFiscais1: TMenuItem;
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FrmAnimalBTNOPENClick(Sender: TObject);
    procedure FrmAnimalEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure FrmClienteBTNOPENClick(Sender: TObject);
    procedure BtnProcServClick(Sender: TObject);
    procedure BtnInsertServClick(Sender: TObject);
    procedure BtnDeleteServClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CBORDEMPropertiesEditValueChanged(Sender: TObject);
    procedure CBFILTROPropertiesEditValueChanged(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure DBGridConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnFechaPedClick(Sender: TObject);
    procedure FrmFormPagBTNOPENClick(Sender: TObject);
    procedure BtnMoedaOKClick(Sender: TObject);
    procedure BtnCancelamentosClick(Sender: TObject);
    procedure DBGridConsultaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure EdAnimalEnter(Sender: TObject);
    procedure EdRacaEnter(Sender: TObject);
    procedure EDClienteEnter(Sender: TObject);
    procedure EDNumEnter(Sender: TObject);
    procedure EDNumExit(Sender: TObject);
    procedure EdAnimalExit(Sender: TObject);
    procedure EdRacaExit(Sender: TObject);
    procedure EDClienteExit(Sender: TObject);
    procedure EDClienteKeyPress(Sender: TObject; var Key: Char);
    procedure EdAnimalKeyPress(Sender: TObject; var Key: Char);
    procedure EdRacaKeyPress(Sender: TObject; var Key: Char);
    procedure EDNumKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDQtdServExit(Sender: TObject);
    procedure EdDescServChange(Sender: TObject);
    procedure EdVlrtotalServExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EDQtdProdExit(Sender: TObject);
    procedure EdDescProdChange(Sender: TObject);
    procedure EdVlrtotalProdExit(Sender: TObject);
    procedure BtnDeleteProdClick(Sender: TObject);
    procedure BtnProcProdClick(Sender: TObject);
    procedure EdDescTProdExit(Sender: TObject);
    procedure EdtotalProdExit(Sender: TObject);
    procedure EdDescTServExit(Sender: TObject);
    procedure EdTotalservExit(Sender: TObject);
    procedure BtnMoedaCancelarClick(Sender: TObject);
    procedure FrmContaServBTNOPENClick(Sender: TObject);
    procedure CompAberturaReduzida1Click(Sender: TObject);
    procedure CompAbertura1Click(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure FrmResponsavelEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RelatrioSinttico1Click(Sender: TObject);
    procedure RelatriodeServiosAgrupados1Click(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodInternoServKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RelatriodeProdutosAgrupados1Click(Sender: TObject);
    procedure RelatriodeProdutosporCliente1Click(Sender: TObject);
    procedure RelatriodeServiosporCliente1Click(Sender: TObject);
    procedure FrmClienteEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDtFiltro02KeyPress(Sender: TObject; var Key: Char);
    procedure EdDtFiltro01KeyPress(Sender: TObject; var Key: Char);
    procedure btnApagarFiltroDataClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnParticularidadesAnimalClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BtnParticularidadesClienteClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComparativoProdEntradasXSadas1Click(Sender: TObject);
    procedure Relatr1Click(Sender: TObject);
    procedure ControleDiaMesdeVendaseServicos1Click(Sender: TObject);
    procedure RelatriodePagamentosdeServios1Click(Sender: TObject);
    procedure Reen1Click(Sender: TObject);
    procedure VisualizarDANFCe1Click(Sender: TObject);
    procedure CancelarNFCe1Click(Sender: TObject);
    procedure EdFiscalKeyPress(Sender: TObject; var Key: Char);
    procedure EdFiscalEnter(Sender: TObject);
    procedure EdFiscalExit(Sender: TObject);
    procedure ListarNFCeenvidas1Click(Sender: TObject);
    procedure RecuperardadosdaNFCe1Click(Sender: TObject);
    procedure SalvareenviarXMLdedistribuio1Click(Sender: TObject);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure RelatriodeServiosporGrade1Click(Sender: TObject);
    procedure RelatriodeDanfesNFCe1Click(Sender: TObject);
    procedure RelatriodeDANFENFe1Click(Sender: TObject);
    procedure CartadeCorreoEletrnica1Click(Sender: TObject);
    procedure EfetuardevoluodaNFe1Click(Sender: TObject);
    procedure RelaodeNotasFiscais1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
	 Procedure LocalizaCliente(CdCliente: Integer; TpClienteAnimal: String);
	 //Localiza animal da tabela equipamento para o cliente
	 Procedure LocalizaAnimal(Codigo: Integer; TpBusca: String);
    //Paulo 17/06/2011: Filtra as tabelas e escreve em edits e labels as informações dos serviços selecionado
    Procedure EscreveLabelsSERV;
    //Paulo 17/06/2011: Limpa Campos de Serviço
    Procedure LimpaCamposServ;
    //Paulo 17/06/2011: Função utilizada para retornar o numero corrente para o pedido e incremantar na empresa
    Function RetornaNumPed: String;
    //Paulo 17/06/2011: Limpa os Componentes
    Procedure LimpaEdits;
    //Paulo 17/06/2011: FILTRA OS REGISTROS DE SERVIÇOS PERTENCENTES A ORDEM
    Procedure FiltraSlave;
    //Paulo 17/06/2011: Função para retornar dados de Ordem em dmserv.wordemdesp de acordo com o filtro
    Procedure FiltraOrdem(XSql: String);
    //Paulo 22/06/2011:travar paines principais
    Procedure TravarPaines(oi:boolean);
    //Paulo 22/06/2011: Fecha Ordem
    Function FechaOrd(CODPEDIDO: String; DTFECH: String) : Boolean;
    //Paulo 22/06/2011: Função utilizada para cancelar/estornar todos os lançamentos emitidos por uma determinada OS
    Function CancelLanOrd(CodPedido: String):Boolean;
    //Paulo 24/06/2011: Retorna o dia da semana por extenso
    function DiaSemana(Data: string): string;
    //Paulo 28/06/2011: Limpa Campos de Produtos
    procedure LimpaCamposProd;
    //Paulo 28/06/2011: Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
    Procedure EscreveLabelsPROD;
    //Paulo 29/06/2011:Quando eh informado o valor de desconto do total dos produtos em "%" eh efetuado calculo para cada produto da ordem
    Procedure CalcPercentProd;
    //Paulo 17/08/2011: Emite o Relatório de ordem de petshop
    Procedure ImpRel(Xtipo:String);
    //Paulo 29/06/2011: Função Para calcular desconto da ordem
    Function EfetuaDesconto(OrigemDesconto: String; TipoDesconto: String): Boolean;
    //Paulo 29/06/2011: FUNÇÃO QUE EFETUA CALCULO DE COMISSÃO BASEADO NO VALOR TOTAL DO PEDIDO E NÃO NA SOMA DO TOTAL DE PRODUTOS
    Function CalcComisTotVend: Boolean;
    //Paulo 21/11/2011: verifica se o cliente não tem cta vencida
    Procedure VerificaCtaVencida(codCliente:Integer);
    //Função Utilizada para gerar a tela do fiscal a partir da tela de consulta
    Function AbreFiscal: Boolean;

  end;

var
  FOrdemPet: TFOrdemPet;
  XCOD_ESTOQUE,XCOD_FORMPAG, XCOD_ORDEM, XCOD_ITSERV, XCOD_SERVICO, XCOD_FUNCIONARIO: Integer;
  XCOD_ULTPROD, XCOD_ITPROD, XCOD_PRODUTO,XCOD_CONTASERV, XCOD_CLIENTE, XCOD_ANIMAL: Integer;
  XESTPRODUTO: Real;//Armazena o estoque fisico do produto selecionado
  XEstado, XNumOrdem, XDATA: STRING;
  XVLRCOMIS,XVLRTOTAL,XVLRTPROD,XVLRTSERV: Real;
  XCampo: String; //Nome do campo Principal da tabela padrão para se trabalhar no Cadastro Padrão
  xcod_chequerec: String;
  XNovoAnimal: Boolean;
implementation

uses Math, Alxor32, UDMPessoa, UCliente, DB, UCadEquipamento, AlxMessage,
  UFuncionario, UServico, UDmServ, UMenu, UDMMacs, Alxorprn, UDMEstoque,
  USenha, UFormPag, UDMFinanc, UDMConta, UDmBanco, UDMCaixa, UDMEntrada,
  UDMSaida, UProduto, URelOrdem, UMDO, URelEstoque, URelCtaPR, URelData,
  UFiscalOrdem, UMzrNfe, UListaNfe, URelPeriodoFiscal, UDevolucao, UPedVenda,
  URelMecanica, URelServicosPet;

{$R *.dfm}
//Paulo 17/06/2011: Insere uma nova Ordem
procedure TFOrdemPet.BtnNovoClick(Sender: TObject);
begin
  inherited;
       //EFETUA CONTROLE DE ACESSO
       If ControlAccess('ABRIRORD', 'M')=False Then
           Exit;

       // INICIALIZANDO VARIAVEL
       XCOD_ORDEM:=-1;
       XCOD_CLIENTE:=-1;
       XCOD_ITSERV:=-1;
       XCOD_SERVICO:=-1;
       XCOD_FUNCIONARIO:=-1;
       XCOD_ANIMAL:=-1;
       XCOD_VENDEDOR:=-1;

       // GERA NUMERO DA ORDEM
       XNumOrdem := RetornaNumPed;
       EdNumero.Text := XNumOrdem;

       Try
           DMServ.TOrd.Insert;
           XCOD_ORDEM:=DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
           DMServ.TOrd.FieldByName('NUMERO').AsString:= XNumOrdem;
           DMServ.TOrd.FieldByName('DTABERT').AsDateTime:=Date();
           DMServ.TOrd.FieldByName('HRABERT').AsDateTime:=StrToTime(formatdatetime ('hh:mm',now));
           DMServ.TOrd.FieldByName('STATUS').AsString:='ABERTO';
           DMServ.TOrd.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
           DMServ.TOrd.FieldByName('LOCALAT').AsString:='';
           DMServ.TOrd.FieldByName('EDIT').AsString := '1';
           DMServ.TOrd.Post;
           DMServ.IBT.CommitRetaining;

       Except
           MessageDlg('A Ordem não foi inserida no banco', mtWarning, [mbOK], 0);
           PConsulta.Visible:=False;
           PCadastro.Visible:=True;
           PCadastro.BringToFront;
       End;

       // - 19/03/2009: verificar se OS foi inserida
       If FiltraTabela(DMServ.TOrd,  'ORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '') = False
       Then Begin
            Mensagem('Mzr Sistemas - INFORMAÇÃO', 'A Ordem inserida foi perdida.'+#13+'Para evitar outras falhas Reinicie o sistema.', '', 1, 1, false, 'i');
            exit
       End;
       //Seleciona somente os registros corretos
       FiltraSlave;

       XEstado:='INSERT';//Define como estado de inserção

       // limpa todos os campos
       LimpaEdits;
       LimpaCamposServ;
       LimpaCamposProd;

       //MOSTRAR PAINEL DE CADASTRO
       PConsulta.Visible:=False;
       PCadastro.Visible:=True;
       PCadastro.BringToFront;

       FrmAnimal.EDCodigo.SetFocus;
       FrmAnimal.Repaint;
end;

procedure TFOrdemPet.BtnConsultarClick(Sender: TObject);
begin
  inherited;
	Try
       LimpaCamposServ;
       LimpaCamposProd;
       LimpaEdits;
       // repassando valor do cidgo da ordem para variavel
       XCOD_ORDEM := DMServ.WOrdemDesp.FieldByname('cod_ordem').AsInteger;
       XNumOrdem := DMServ.WOrdemDesp.FieldByname('NUMERO').AsString;
       // BUSCANDO DADOS DA ORDEM
       FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCOD_ORDEM),'');
       if  DMSERV.TOrd.IsEmpty then begin
           Mensagem('    A T E N Ç Ã O   ','A ORDEM JÁ FOI REMOVIDA.','',1,1,false,'I');
           FiltraOrdem('');
           Exit;
       end;
       // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
       If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
       Then Begin
           Mensagem('    A T E N Ç Ã O   ','A ORDEM ESTÁ SENDO USADA NO MOMENTO.'+#13+'Use Ctrl+D para destravar','',1,1,false,'I');
           FiltraOrdem('');
           Exit;
       End;
       If (DMServ.TOrd.FieldByName('STATUS').AsString<>'FECHADO') //se a ordem ja não estiver fechada
       Then Begin
           DMServ.TAlx1.Close;
           DMServ.TAlx1.SQL.Clear;
           DMServ.TAlx1.SQL.Add('update ordem set ordem.edit = :EDITAR');
           DMServ.TAlx1.SQL.Add('where ordem.cod_ordem = :COD');
           DMServ.TAlx1.ParamByName('EDITAR').AsInteger:=1;
           DMServ.TAlx1.ParamByName('COD').AsInteger:=XCOD_ORDEM;
           DMServ.TAlx1.ExecSQL;
           DMServ.IBT.CommitRetaining;

           XESTADO:='EDIT'; //recebe estado de edição da ordem de serviço

           //filtra cliente para atribuir dados as variáveis e edits
           If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMServ.WOrdemDesp.FieldByName('COD_CLIENTE').AsString, '')=True
           Then Begin
               XCOD_CLIENTE:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
               FrmCliente.EDCodigo.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
               FrmCliente.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
               EdObsFinanceira.Text:=DMPESSOA.TCliente.FieldByName('OBS').AsString;
               EdEnderecoCliente.Text:= DMPESSOA.WCliente.FieldByName('ENDERECO').AsString;
               EdFoneCliente.Text:=DMPESSOA.WCliente.FieldByName('TELREL').AsString;
           End
           Else Begin
               XCOD_CLIENTE:=-1;
               FrmCliente.EDCodigo.Text:='';
               FrmCliente.EdDescricao.Text:='';
               EdObsFinanceira.Text:='Obs';
               EdEnderecoCliente.Text:='Endereço';
               EdFoneCliente.Text:='Fone';
           End;

          XCOD_ANIMAL:= DMServ.TOrd.FieldByName('COD_EQUIPAMENTO').AsInteger;
          // VERIFICA PRIMEIRO SE A ORDEM POSSUI EQUIPAMENTO
          If FiltraTabela(DMPESSOA.TEquip,'EQUIPAMENTO','COD_EQUIPAMENTO',IntToStr(XCOD_ANIMAL),'')= TRUE
          Then Begin
               FrmAnimal.EDCodigo.Text:=DMPESSOA.TEquip.FieldByName('PLACA').AsString;
               FrmAnimal.EdDescricao.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
               XCOD_ANIMAL:= DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
               EdAnimalObs.Text:= DMPESSOA.TEquip.FieldByName('MODELO_GUINCHO').AsString;
               EdAnimalRaca.Text:= DMPESSOA.TEquip.FieldByName('MODELO').AsString;
               EdAnimalCor.Text:= DMPESSOA.TEquip.FieldByName('COR').AsString;
          End
          else begin
              XCOD_ANIMAL:=-1;
              FrmAnimal.EdDescricao.Text := '';
              FrmAnimal.EDCodigo.Text := '';
              EdAnimalObs.Text:='Obs:';
              EdAnimalRaca.Text:='Raça:';
              EdAnimalCor.Text:='Cor:';
          end;

          // VERIFICA PRIMEIRO SE A ORDEM POSSUI RESPOSAVEL TECNICO
          If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', IntToStr(DMServ.TOrd.FieldByName('COD_VENDEDOR').AsInteger), ' ')= TRUE
          Then Begin
               FrmResponsavel.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
               FrmResponsavel.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
               XCOD_VENDEDOR:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;

          End
          else begin
              XCOD_VENDEDOR:=-1;
              FrmResponsavel.EDCodigo.Text:='';
              FrmResponsavel.EdDescricao.Text:='';

          end;

          //Informa outros valores
          EdNumero.Text:=DMServ.TOrd.FieldByName('NUMERO').AsString;

          MObs.Lines.Text:=DMServ.TOrd.FieldByName('observacao').AsString;
          EdContatoCliente.Text:=DMServ.TOrd.FieldByName('contato').AsString;


         FiltraSlave;

         EdtotalProd.ValueNumeric:=DMServ.TOrd.FieldByName('TOTPROD').AsCurrency;
         EdtotalServ.ValueNumeric:=DMServ.TOrd.FieldByName('TOTSERV').AsCurrency;
         EdDescTOrdem.ValueNumeric:=DMServ.TOrd.FieldByName('DESCONTO').AsCurrency;
         EdDescTProd.ValueNumeric:=DMServ.TOrd.FieldByName('DESCPROD').AsCurrency;
         EdDescTServ.ValueNumeric:=DMServ.TOrd.FieldByName('DESCSERV').AsCurrency;
         EdTotalOrd.ValueNumeric:=DMServ.TOrd.FieldByName('TOTORD').AsCurrency;
         EdValorTotal.ValueNumeric:=EdTotalOrd.ValueNumeric;

          PConsulta.Visible := False;
          PCadastro.Visible := True;
          PCadastro.BringToFront;
          FrmAnimal.EDCodigo.SetFocus;
       End
       Else Begin
           Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'PEDIDO FECHADO!'+#13+'NÃO É POSSÍVEL ALTERAR/CONSULTAR.', '', 1, 1, False, 'a');
           FiltraOrdem('');
           Exit;
       End;
       inherited;
       PConsulta.Visible:=True;
       PConsulta.BringToFront;
       PCadastro.Visible:=True;
       PCadastro.BringToFront;
       Except
   End;
end;

procedure TFOrdemPet.BtnGravarClick(Sender: TObject);
var
   XFlagControlNumero: Integer;
   XStatus: String;
begin
  inherited;
   //VALIDA CAMPOS NECESSÁRIOS
   If (XCOD_CLIENTE=-1) or (FrmCliente.EDCodigo.Text = '')
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe um Cliente para Ordem de Serviço', '', 1, 1, False, 'a');
       FrmCliente.EDCodigo.SetFocus;
       Exit;
   End;
   If (XCOD_VENDEDOR=-1)
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe um 	Vendedor para Ordem de Serviço', '', 1, 1, False, 'a');
       FrmResponsavel.EDCodigo.SetFocus;
       Exit;
   End;
  
   //CONTROLE DA NUMERAÇÃO DA ORDEM DE SERVIÇO
   XFlagControlNumero:=1;
   While XFlagControlNumero=1 do
   Begin
       If FiltraTabela(DMServ.WOrdemDesp, 'VWORDEM', 'numero', '', ' (numero='+#39+EdNumero.Text+#39+') AND (VWORDEM.cod_ordem<>'+IntToStr(XCOD_ORDEM)+') ')=True
       Then Begin
           //caso já exista o mesmo numero em outro pedido incrementamos mais um numero de acordo com a tabela empresa e continuamos loop para teste
           EdNumero.Text:=RetornaNumPed;
           MessageDlg('O Número anteriormente informado para a O.S. já existia em banco.'+#13+#10+'O Sistemas alterou automaticamente para: '+EdNumero.Text, mtWarning, [mbOK], 0)
       End
       Else Begin
           Try
               //Testamos o numero do edit para garantir que é um numero
               If XNumOrdem<>EdNumero.Text Then
                   MessageDlg('O Número anteriormente informado para a O.S. já existia em banco.'+#13+#10+'O Sistemas alterou automaticamente para: '+EdNumero.Text, mtWarning, [mbOK], 0)
           Except
           End;
           XFlagControlNumero:=0;
       End;
   End;

   // se nao possui servico e nem produtos eh exibido a mensagem - SEGUNDO SOLICITAÇÃO É OBRIGATORIO PODER GRAVAR SEM SERVICO
   If (DMESTOQUE.TSlaveServ.IsEmpty) and (DMESTOQUE.TSlave.IsEmpty)
   Then Begin
       If Mensagem('   A T E N Ç Ã O   ','A Ordem de Serviço atual não possui serviços ou produtos inclusos. Deseja apagá-la ?','',2,3,false,'A')=2
       Then Begin
           //Apaga ORDEM
           FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');
           DMServ.TOrd.Delete;

            //REGISTRA COMANDO DO USUARIO
           Try
               Registra('ORDEM', 'APAGAR/CANCELAR', DMServ.TOrd.FieldByName('DTABERT').AsString, 'Nº '+DMServ.TOrd.FieldByName('NUMERO').AsString, 'Valor: '+DMServ.TOrd.FieldByName('TOTORD').AsString);
           Except
           End;

           //Confirma Transação
           DMSERV.IBT.CommitRetaining;

           //atualiza vew
           FiltraOrdem('');

           PCadastro.Visible:=False;
           PConsulta.Visible:=true;
           PConsulta.BringToFront;
           //EdNome.SetFocus;
           XEstado:='';

           Exit;
       End;
   End;

  {DMServ.TOrd.Edit;
   DMServ.TOrd.FieldByName('COD_USUARIO').AsInteger:=StrToInt(FMenu.LCODUSUARIO.Caption);
   DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger:=XCOD_CLIENTE;
   DMServ.TOrd.FieldByName('COD_EQUIPAMENTO').AsInteger:=XCOD_ANIMAL;
   DMServ.TOrd.FieldByName('COD_VENDEDOR').AsInteger:=XCOD_VENDEDOR;
   DMServ.TOrd.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
   DMServ.TOrd.FieldByName('observacao').AsString:=MObs.Lines.Text;
   DMServ.TOrd.FieldByName('CONTATO').AsString:=EdContatoCliente.Text;
   DMServ.TOrd.FieldByName('EDIT').AsString:='';
   DMServ.TOrd.FieldByName('TOTORD').AsCurrency:=EdValorTotal.ValueNumeric;
   DMServ.TOrd.FieldByName('TOTPROD').AsCurrency:=EdtotalProd.ValueNumeric;
   DMServ.TOrd.FieldByName('TOTSERV').AsCurrency:=EdTotalserv.ValueNumeric;
   DMServ.TOrd.FieldByName('TOTDESP').AsCurrency:=0;
   DMServ.TOrd.FieldByName('DESCONTO').AsCurrency:=EdDescTOrdem.ValueNumeric;
   DMServ.TOrd.FieldByName('DESCPROD').AsCurrency:=EdDescTProd.ValueNumeric;
   DMServ.TOrd.FieldByName('DESCSERV').AsCurrency:=EdDescTServ.ValueNumeric;
   DMServ.TOrd.FieldByName('NUMERO').AsString:=EdNumero.Text;
	DMServ.TOrd.FieldByName('STATUS').AsString:='ABERTO';}

   try
   	MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' UPDATE ORDEM SET ORDEM.COD_USUARIO = :COD_USUARIO, ORDEM.COD_CLIENTE = :COD_CLIENTE, ');
       MDO.Query.SQL.Add(' ORDEM.COD_EQUIPAMENTO = :COD_EQUIPAMENTO, ORDEM.COD_VENDEDOR = :COD_VENDEDOR, ');
       MDO.Query.SQL.Add(' ORDEM.COD_LOJA = :COD_LOJA, ORDEM.OBSERVACAO = :OBSERVACAO, ORDEM.CONTATO = :CONTATO, ');
       MDO.Query.SQL.Add(' ORDEM.EDIT = :EDIT, ORDEM.TOTORD = :TOTORD, ORDEM.TOTPROD = :TOTPROD, ORDEM.TOTSERV = :TOTSERV, ');
       MDO.Query.SQL.Add(' ORDEM.TOTDESP = :TOTDESP, ORDEM.DESCONTO = :DESCONTO, ORDEM.DESCPROD = :DESCPROD, ');
       MDO.Query.SQL.Add(' ORDEM.DESCSERV = :DESCSERV, ORDEM.NUMERO = :NUMERO, ORDEM.STATUS = :STATUS ');
       MDO.Query.SQL.Add(' WHERE ORDEM.COD_ORDEM = :COD_ORDEM ');
   	MDO.Query.ParamByName('COD_USUARIO').AsInteger:=StrToInt(FMenu.LCODUSUARIO.Caption);
   	MDO.Query.ParamByName('COD_CLIENTE').AsInteger:=XCOD_CLIENTE;
   	MDO.Query.ParamByName('COD_EQUIPAMENTO').AsInteger:=XCOD_ANIMAL;
   	MDO.Query.ParamByName('COD_VENDEDOR').AsInteger:=XCOD_VENDEDOR;
   	MDO.Query.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
   	MDO.Query.ParamByName('observacao').AsString:=MObs.Lines.Text;
   	MDO.Query.ParamByName('CONTATO').AsString:=EdContatoCliente.Text;
   	MDO.Query.ParamByName('EDIT').AsString:='';
   	MDO.Query.ParamByName('TOTORD').AsCurrency:=EdValorTotal.ValueNumeric;
   	MDO.Query.ParamByName('TOTPROD').AsCurrency:=EdtotalProd.ValueNumeric;
   	MDO.Query.ParamByName('TOTSERV').AsCurrency:=EdTotalserv.ValueNumeric;
   	MDO.Query.ParamByName('TOTDESP').AsCurrency:=0;
   	MDO.Query.ParamByName('DESCONTO').AsCurrency:=EdDescTOrdem.ValueNumeric;
   	MDO.Query.ParamByName('DESCPROD').AsCurrency:=EdDescTProd.ValueNumeric;
   	MDO.Query.ParamByName('DESCSERV').AsCurrency:=EdDescTServ.ValueNumeric;
   	MDO.Query.ParamByName('NUMERO').AsString:=EdNumero.Text;
		MDO.Query.ParamByName('STATUS').AsString:='ABERTO';
       MDO.Query.ParamByName('COD_ORDEM').AsInteger := XCOD_ORDEM;
       MDO.Query.ExecSQL;

       MDO.Transac.CommitRetaining;

   	//DMServ.TOrd.Post;
   Except
   	MessageDlg('Não foi possível gravar, as informações serão retornadas.', mtWarning, [mbOK], 0);
       //DMServ.TOrd.Cancel;
       MDO.Transac.RollbackRetaining;       
   End;
  {Try
      DMServ.IBT.CommitRetaining;
   Except
      DMServ.IBT.RollbackRetaining;
   End;}

   //Atualiza View da tela de Consulta
   FiltraOrdem('');

   PCadastro.Visible:=False;
   PConsulta.Visible:=true;
   PConsulta.BringToFront;
   XEstado:='';
 
end;

procedure TFOrdemPet.BtnCancelarClick(Sender: TObject);
var
   XVazio: Boolean;
begin
	XVazio:=False;
   FiltraSlave;
   If (Not DMESTOQUE.TSlaveServ.IsEmpty = True) or (Not DMESTOQUE.TSlave.IsEmpty = True) Then
       XVazio:= True;
   DMESTOQUE.TSlave.RecordCount;
	If XVazio=False
   Then Begin//Se o pedido encontra-se sem itens ele pode ser apagado automaticamente pelo sistema
   	If Mensagem('Mzr Sistemas - C O N F I R M A Ç Ã O', 'Esta O.S. não apresenta itens lançados! Deseja apaga-la?', '', 2, 3, False, 'c')=2
       Then Begin
           //Apaga Ordem
           DMServ.TAlx1.Close;
           DMServ.TAlx1.SQL.Clear;
           DMServ.TAlx1.SQL.Add('delete from ordem where ordem.cod_ordem = :CODORDEM');
           DMServ.TAlx1.ParamByName('CODORDEM').AsInteger := DMServ.TOrd.FieldByName('cod_ordem').AsInteger;
           DMServ.TAlx1.ExecSQL;
           //REGISTRA COMANDO DO USUARIO
           Try
               Registra('ORDEM', 'APAGAR/CANCELAR', DMServ.TOrd.FieldByName('DTABERT').AsString, 'Nº '+DMServ.TOrd.FieldByName('NUMERO').AsString, 'Valor: '+DMServ.TOrd.FieldByName('TOTORD').AsString);
           Except
           End;
           DMServ.IBT.CommitRetaining;
           FiltraOrdem('');
   	End;
   End;
   Try
   	DMServ.TAlx1.Close;
     	DMServ.TAlx1.SQL.Clear;
     	DMServ.TAlx1.SQL.Add('update ORDEM set EDIT = :EDIT');
     	DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
     	DMServ.TAlx1.ParamByName('EDIT').AsString := '0';
     	DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := XCOD_ORDEM;
     	DMServ.TAlx1.ExecSQL;
     	DMServ.IBT.CommitRetaining;
   Except
     DMServ.IBT.RollbackRetaining;
   End;
   PCadastro.Visible:=False;   
   PConsulta.Visible:=True;
   PConsulta.BringToFront;
 
	inherited;
end;

//Localiza animal da tabela equipamento para o cliente
Procedure TFOrdemPet.LocalizaAnimal(Codigo: Integer; TpBusca: String);
Begin
	Try
   	//If TpBusca='ANIMAL' Then
			//FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'cod_equipamento', IntToStr(Codigo), '')
       if TpBusca='CLIENTE' then
       begin
           DMPESSOA.TAux1.Close;
           DMPESSOA.TAux1.SQL.Clear;
           DMPESSOA.TAux1.SQL.Add('select equipamento.cod_equipamento, equipamento.cod_cliente,equipamento.descricao,');
           DMPESSOA.TAux1.SQL.Add('equipamento.marca, equipamento.modelo, equipamento.cor, equipamento.placa,');
           DMPESSOA.TAux1.SQL.Add('equipamento.ano, equipamento.modelo_guincho, vwcliente.nome from equipamento');
           DMPESSOA.TAux1.SQL.Add('left join vwcliente on equipamento.cod_cliente = vwcliente.cod_cliente');
           DMPESSOA.TAux1.SQL.Add('where equipamento.cod_cliente = :CODCLIENTE AND (EQUIPAMEnTO.ATIVO='+#39+'1'+#39+')');
           DMPESSOA.TAux1.ParamByName('CODCLIENTE').AsInteger:=Codigo;
           DMPESSOA.TAux1.Open;
			//FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'cod_cliente', IntToStr(Codigo), '');
       end;
       If not DMPESSOA.TAux1.IsEmpty
       Then Begin
           XCOD_ANIMAL:=DMPESSOA.TAux1.FieldByName('cod_equipamento').AsInteger;
           FrmAnimal.EDCodigo.Text:=DMPESSOA.TAux1.FieldByName('placa').AsString;
           FrmAnimal.EdDescricao.Text:=DMPESSOA.TAux1.FieldByName('DESCRICAO').AsString;
           EdAnimalObs.Text:=DMPESSOA.TAux1.FieldByName('modelo_guincho').AsString;
           EdAnimalRaca.Text:=DMPESSOA.TAux1.FieldByName('modelo').AsString;
           EdAnimalCor.Text:=DMPESSOA.TAux1.FieldByName('cor').AsString;
           if TpBusca='ANIMAL' Then
               LocalizaCliente(DMPESSOA.TAux1.FieldByName('COD_CLIENTE').AsInteger, 'ANIMAL');
       End
       Else Begin
           XCOD_ANIMAL:=-1;
           FrmAnimal.EDCodigo.Text:='';
           FrmAnimal.EdDescricao.Text:='';
           EdAnimalObs.Text:='';
           EdAnimalRaca.Text:='';
           EdAnimalCor.Text:='';
           If Mensagem('Mzr Sistemas - C O N F I R M A Ç Ã O', 'O cliente selecionado não possui um animal cadastrado, Deseja cadastrar agora?', '', 2, 3, False, 'c')=2
           Then Begin
               XNovoAnimal:=True;
               //FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', IntToStr(Codigo), '');
               {DMPESSOA.TAux1.Close;
               DMPESSOA.TAux1.SQL.Clear;
               DMPESSOA.TAux1.SQL.Add('select equipamento.cod_equipamento, equipamento.cod_cliente,equipamento.descricao,');
               DMPESSOA.TAux1.SQL.Add('equipamento.marca, equipamento.modelo, equipamento.cor, equipamento.placa,');
               DMPESSOA.TAux1.SQL.Add('equipamento.ano, equipamento.modelo_guincho, vwcliente.nome from equipamento');
               DMPESSOA.TAux1.SQL.Add('left join vwcliente on equipamento.cod_cliente = vwcliente.cod_cliente');
               DMPESSOA.TAux1.SQL.Add('where equipamento.cod_cliente = :CODCLIENTE');
               DMPESSOA.TAux1.ParamByName('COD_EQUIPAMENTO').AsInteger:=Codigo;
               DMPESSOA.TAux1.Open;}
               if AbrirForm(TFCadEquipamento, FCadEquipamento, 1)='Selected' Then
		            LocalizaAnimal(DMPESSOA.TAux1.FieldByName('COD_EQUIPAMENTO').AsInteger, '');
               
           end;
           
       End;
   Except

   End;
End;

Procedure TFOrdemPet.LocalizaCliente(CdCliente: Integer; TpClienteAnimal: String);
Begin
	Try
       If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(CdCliente), '')
       Then Begin
   		If DMPESSOA.WCliente.FieldByName('ATUALIZAR').AsString='1' Then
       		MessageDlg('AS INFORMAÇÕES DO CLIENTE NECESSITAM SER ATUALIZADAS', mtWarning, [mbOK], 0);
       	XCOD_CLIENTE:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       	FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
       	DMPESSOA.TCliente.Close;
       	DMPESSOA.TCliente.SQL.Clear;
       	DMPESSOA.TCliente.SQL.Add(' Select * from cliente where cliente.cod_cliente=:Codigo ');
       	DMPESSOA.TCliente.ParamByName('Codigo').AsInteger:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       	DMPESSOA.TCliente.Open;
       	If not DMPESSOA.TCliente.IsEmpty Then
           	EdObsFinanceira.Text:=DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString
       	Else
           	EdObsFinanceira.Text:='';
           EdEnderecoCliente.Text:=DMPESSOA.WCliente.FieldByName('endereco').AsString;
           EdFoneCliente.Text:=DMPESSOA.WCliente.FieldByName('telrel').AsString;
           //Localiza pessoa para verificar o credito
           If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByName('COD_PESSOA').AsString, '')=True Then
               EdCreditoCliente.ValueNumeric:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency;

           //Paulo 21/11/2011: verifica se o cliente não tem cta vencida
           VerificaCtaVencida(DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger);

           If TpClienteAnimal='CLIENTE' Then
               LocalizaAnimal(XCOD_CLIENTE, 'CLIENTE');
       End
       Else Begin
           XCOD_CLIENTE:=-1;
           FrmCliente.EDCodigo.Text:='';
           FrmCliente.EdDescricao.Text:='';
           EdObsFinanceira.Text:='';
           EdEnderecoCliente.Text:='';
           EdFoneCliente.Text:='';
           EdCreditoCliente.ValueNumeric:=0;
       End;
       FrmCliente.Repaint;
   Except

   End;
End;
procedure TFOrdemPet.FrmAnimalBTNOPENClick(Sender: TObject);
begin
  inherited;
   XNovoAnimal:=False;
   DMPESSOA.TAux1.Close;
   DMPESSOA.TAux1.SQL.Clear;
   DMPESSOA.TAux1.SQL.Add('select equipamento.cod_equipamento, equipamento.cod_cliente,equipamento.descricao,');
   DMPESSOA.TAux1.SQL.Add('equipamento.marca, equipamento.modelo, equipamento.cor, equipamento.placa,');
   DMPESSOA.TAux1.SQL.Add('equipamento.ano, equipamento.modelo_guincho, vwcliente.nome from equipamento');
   DMPESSOA.TAux1.SQL.Add('left join vwcliente on equipamento.cod_cliente = vwcliente.cod_cliente');
   DMPESSOA.TAux1.SQL.Add('where EQUIPAMEnTO.ATIVO='+#39+'1'+#39+'');

   if XCOD_CLIENTE > 0 then
   begin
       DMPESSOA.TAux1.SQL.Add('and equipamento.cod_cliente = :CODCLIENTE');
       DMPESSOA.TAux1.ParamByName('CODCLIENTE').AsInteger:=XCOD_CLIENTE;
       DMPESSOA.TAux1.Open;
       //filtraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_CLIENTE', IntToStr(XCOD_CLIENTE), '')//LIBERA TODOS OS REGISTROS PARA CONSULTA
   end
   else begin
       DMPESSOA.TAux1.SQL.Add('ORDER BY EQUIPAMENTO.DESCRICAO');
       DMPESSOA.TAux1.Open;
   end;
       //FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', '', '', ' ORDER BY EQUIPAMENTO.DESCRICAO');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   If AbrirForm(TFCadEquipamento, FCadEquipamento, 1)='Selected' Then
		LocalizaAnimal(DMPESSOA.TAux1.FieldByName('COD_EQUIPAMENTO').AsInteger, 'ANIMAL');

end;

procedure TFOrdemPet.FrmAnimalEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=vk_return
   Then Begin
		If FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'placa', FrmAnimal.EDCodigo.Text, '') Then
           LocalizaAnimal(DMPESSOA.TEquip.FieldByName('cod_equipamento').AsInteger, 'ANIMAL');
   End;
end;

procedure TFOrdemPet.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
  //Paulo 17/06/2011: Para trazer o responsável técnico
   FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA

   If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
   Then Begin
       XCOD_VENDEDOR:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
 		FrmResponsavel.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
       FrmResponsavel.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
   End
   Else Begin
       XCOD_VENDEDOR:=-1;
 		FrmResponsavel.EDCodigo.Text:='';
       FrmResponsavel.EdDescricao.Text:='';
   End;

   FrmResponsavel.Repaint;
   
end;

procedure TFOrdemPet.FrmClienteBTNOPENClick(Sender: TObject);
begin
  inherited;
       FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME');
       If AbrirForm(TFCliente, FCliente, 1)='Selected' Then
		    LocalizaCliente(DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger, 'CLIENTE');
  
end;

procedure TFOrdemPet.BtnProcServClick(Sender: TObject);
begin
  inherited;
   FMenu.XCod_Ordem := '';
   //Paulo 17/06/2011: abre formulario de serviço para seleção
	If AbrirForm(TFSERVICO, FSERVICO, 1)='Selected'
	Then Begin
   	//Depois de selecionado escreve nas labels o produto
       EscreveLabelsSERV;
   End;
end;

//Paulo 17/06/2011: Filtra as tabelas e escreve em edits e labels as informações dos serviços selecionado
Procedure TFOrdemPet.EscreveLabelsSERV;
Begin
	//Filtra tabela de subservicos de acordo com o servico selecionada em fservico
   If FiltraTabela(DMSERV.TSubserv, 'SUBSERVICO', 'COD_SUBSERVICO', DMSERV.WSubServ.FieldByName('COD_SUBSERVICO').AsString, '')=False Then
		Exit;

   // por questao de garantia o codigo de servico do produto selecionado esta sendo atribuido á variavel pois jah que ela naum eh usada em nenhum outro momento, nao tem a possibilidade de ter seu valor alterado
   XCOD_SERVICO := DMSERV.WSubServ.FieldByName('COD_SUBSERVICO').AsInteger;

	//Passa os valores do produto selecionado para as labels
   EdCodInternoServ.Text:= DMSERV.TSubserv.FieldByName('COD_INTERNO').AsString;
   LServico.Caption:=DMSERV.WSubServ.FieldByName('DESCRICAO').AsString;
   EDQtdServ.Text:=DMSERV.TSubserv.FieldByName('TEMPSERV').AsString;
   EdVlrCustoServ.ValueNumeric:=DMSERV.TSubserv.FieldByName('vlrunit').AsCurrency;
   EDVlrUnitServ.ValueNumeric:=DMSERV.TSubserv.FieldByName('VLRFINAL').AsCurrency;
   EdVlrtotalServ.ValueNumeric:=DMSERV.TSubserv.FieldByName('VLRFINAL').AsCurrency;
End;


procedure TFOrdemPet.BtnInsertServClick(Sender: TObject);
begin
  inherited;
       //Valida se foi encontrado algum produto
   If LServico.Caption=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Não existe serviço a ser adicionado a lista de items de serviços.', '', 1, 1, False, 'a');
		BtnProcServ.SetFocus;
	    Exit;
   End;
   //Valida quanto a quantidade
   If EDQtdServ.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O serviço não pode ser inserido a lista com quantidade inferior ou igual a 0.', '', 1, 1, False, 'a');
		EDQtdServ.SetFocus;
	    Exit;
   End;
   //Valida quanto ao valor unitario do produto
   If EDVlrUnitServ.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O serviço não pode ser inserido a lista com o valor unitario igual ou inferiro a 0.', '', 1, 1, False, 'a');
		EDVlrUnitServ.SetFocus;
	    Exit;
   End;
   //Valida quanto ao valor total do produto
   If EdVlrtotalServ.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O serviço não pode ser inserido a lista com o valor total igual ou inferiro a 0.', '', 1, 1, False, 'a');
		EdVlrtotalServ.SetFocus;
	    Exit;
   End;

   //Tenta gravar as informações
   Try
       //Insere serviço a lista de serviços
       XCOD_ITSERV:=InserReg(DMSERV.TSOrd, 'ITSERVORD', 'COD_ITSERVORD');
       DMSERV.TSOrd.FieldByName('COD_ITSERVORD').AsInteger:=XCOD_ITSERV;
       DMSERV.TSOrd.FieldByName('COD_ORDEM').AsInteger:=XCOD_ORDEM;
       DMSERV.TSOrd.FieldByName('COD_SERVICO').AsInteger:= XCOD_SERVICO;
       DMSERV.TSOrd.FieldByName('QTD').AsCurrency:=EDQtdServ.ValueNumeric;
       DMSERV.TSOrd.FieldByName('DESCONTO').AsCurrency:=EdDescServ.ValueNumeric;
       DMSERV.TSOrd.FieldByName('VLRUNIT').AsCurrency:=EDVlrUnitServ.ValueNumeric;
       DMSERV.TSOrd.FieldByName('VLRUNITCUSTO').AsCurrency:=EdVlrCustoServ.ValueNumeric;
       DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency:=EdVlrtotalServ.ValueNumeric;
       DMSERV.TSOrd.FieldByName('COD_FUNCIONARIO').AsInteger:=XCOD_VENDEDOR;
       DMSERV.TSOrd.FieldByName('DATA').AsDateTime:=Date();
       DMSERV.TSOrd.FieldByName('TOTENCARGO').AsCurrency:=DMSERV.TSOrd.FieldByName('PIS').AsCurrency+DMSERV.TSOrd.FieldByName('CONTSOC').AsCurrency+DMSERV.TSOrd.FieldByName('IR').AsCurrency+DMSERV.TSOrd.FieldByName('COFINS').AsCurrency+DMSERV.TSOrd.FieldByName('INSS').AsCurrency+DMSERV.TSOrd.FieldByName('ISSQN').AsCurrency+DMSERV.TSOrd.FieldByName('OUTROS').AsCurrency;
       DMSERV.TSOrd.FieldByName('LUCMOE').AsCurrency:=DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency-DMSERV.TSOrd.FieldByName('TOTENCARGO').AsCurrency-DMSERV.TSOrd.FieldByName('COMISSAO').AsCurrency;
   	DMSERV.TSOrd.FieldByName('LUCPER').AsCurrency:=(DMSERV.TSOrd.FieldByName('LUCMOE').AsCurrency*100)/DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency;
       DMSERV.TSOrd.Post;
       DMSERV.IBT.CommitRetaining;
		BtnProcServ.SetFocus;
   Except
   	MessageDlg('Não foi possível inserir o Serviço. '+#13+#10+'Reinicie o sistema em todas os computadores para solucionar o problema. Se o problema persistir, entre em contato com o suporte.', mtWarning, [mbOK], 0);
       DMSERV.IBT.RollbackRetaining;
   End;
   FiltraSlave;
   LimpaCamposServ;
	BtnProcServ.SetFocus;
end;

//Paulo 17/06/2011: Limpa Campos de Serviço
procedure TFOrdemPet.LimpaCamposServ;
begin
   EdCodInternoServ.Text:='';
   EdVlrCustoServ.ValueNumeric:=0;
   EDQtdServ.Text:='';
   EDVlrUnitServ.ValueNumeric:=0;
   EdDescServ.ValueNumeric:=0;
   EdVlrtotalServ.ValueNumeric:=0;
   LServico.Caption:='Selecione o Serviço';
end;

//Paulo 17/06/2011: Função utilizada para retornar o numero corrente para o pedido e incremantar na empresa
Function TFOrdemPet.RetornaNumPed: String;
Var
	XFlag: Integer;
Begin
   Result:='-1';
   XFlag:=-1;
   Try
      //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
      FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
      //Recebe o Código de vendas
      If DMMacs.TEmpresa.FieldByName('PROX_OS').AsString='' Then
      		XNumOrdem:='1'
      Else
         	XNumOrdem:=DMMacs.TEmpresa.FieldByName('PROX_OS').AsString;

      While XFlag=-1 do
      Begin
      		If FiltraTabela(DMMACS.TALX, 'VWORDEM', 'numero', XNumOrdem, '')=True
           Then Begin
               XNumOrdem:=IntToStr((StrToInt(XNumOrdem)+1));
           End
           Else Begin
               XFlag:=1;
           End;
      End;
      //Incrementa o codigo de vendas em Empresa
      DMMACS.TEmpresa.Edit;
      DMMacs.TEmpresa.FieldByName('PROX_OS').AsString:=IntToStr(StrToInt(XNumOrdem)+1);
      DMMACS.TEmpresa.Post;
      //Atualiza e confirma os Dados de empresa
      try
           DMMacs.Transaction.CommitRetaining;
      except
           DMMacs.Transaction.RollbackRetaining;
      end;
      Result:=XNumOrdem;
   Except
      Result:=XNumOrdem;
   End;
End;

//Paulo 17/06/2011: Limpa os Componentes
Procedure TFOrdemPet.LimpaEdits;
Begin
	PParticularidadesAnimal.Visible:=False;
	PParticularidadesCliente.Visible:=False;   

   FrmCliente.EDCodigo.Text:='';
   FrmCliente.EdDescricao.Text:='';

   FrmAnimal.EDCodigo.Text:='';
   FrmAnimal.EdDescricao.Text:='';

   FrmResponsavel.EDCodigo.Text:='';
   FrmResponsavel.EdDescricao.Text:='';

   EdObsFinanceira.Text:='';
   EdEnderecoCliente.Text:='';
   EdFoneCliente.Text:='';
   EdAnimalObs.Text:='';
   EdAnimalRaca.Text:='';
   EdAnimalCor.Text:='';

   EdContatoCliente.Text:='';
   MObs.Lines.Clear;



   EdtotalProd.ValueNumeric:=0;
   EdtotalServ.ValueNumeric:=0;
   EdDescTOrdem.ValueNumeric:=0;
   EdDescTProd.ValueNumeric:=0;
   EdDescTServ.ValueNumeric:=0;
   EdTotalOrd.ValueNumeric:=0;

   
   LimpaCamposServ;
   LimpaCamposProd;
   
End;

//Paulo 17/06/2011: FILTRA OS REGISTROS DE SERVIÇOS PERTENCENTES A ORDEM
Procedure TFOrdemPet.FiltraSlave;
Begin
   //TRABALHA COM PRODUTOS DA ORDEM
   //CALCULA TOTAL
	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select Sum(ITPRODORD.total) as TOTAL From ITPRODORD');
	DMESTOQUE.TSlave.SQL.Add('Where ITPRODORD.COD_ORDEM = :CODORDEM ');
	DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger:=XCOD_ORDEM;
	DMESTOQUE.TSlave.Open;
   //informa total de produtos
   XVLRTPROD:=DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
   EdTotalPROD.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
   // - 16/02/2009:  soma qnt de produtos
   DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select Sum(ITPRODORD.qtd) as QTD, count(ITPRODORD.qtd) as QTDITEM From ITPRODORD');
	DMESTOQUE.TSlave.SQL.Add('Where ITPRODORD.COD_ORDEM = :CODORDEM ');
	DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger:=XCOD_ORDEM;
	DMESTOQUE.TSlave.Open;

   DMESTOQUE.TSlave.Close;
   DMESTOQUE.TSlave.SQL.Clear;
   DMESTOQUE.TSlave.SQL.Add('Select itprodord.cod_itprodord, unidade.sigla_unid as UNIDADE, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.numreq, itprodord.qtd, itprodord.qtdRET, itprodord.total, ');
   DMESTOQUE.TSlave.SQL.Add('itprodord.desconto, itprodord.ALIQICMS, itprodord.VLRICMS, itprodord.data, itprodord.cod_funcionario, pessoa.nome, itprodord.vlrunit, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR, ');
   DMESTOQUE.TSlave.sql.Add('subproduto.contrint,itprodord.operacao, subproduto.ncm ');
   DMESTOQUE.TSlave.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TSlave.SQL.Add('Left Join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
   DMESTOQUE.TSlave.SQL.Add('Left Join funcionario on funcionario.cod_func = itprodord.cod_funcionario ');
   DMESTOQUE.TSlave.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
   DMESTOQUE.TSlave.SQL.Add('Where itprodord.cod_ordem = :CODORDEM ');
   DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger := XCOD_ORDEM;
   DMESTOQUE.TSlave.SQL.Add('order by itprodord.cod_itprodord desc');
   DMESTOQUE.TSlave.Open;

   
	//TRABALHA COM SERVIÇOS DA ORDEM
   //CALCULA TOTAL E QUANTIDADE
	DMESTOQUE.TSlaveServ.Close;
	DMESTOQUE.TSlaveServ.SQL.Clear;
	DMESTOQUE.TSlaveServ.SQL.Add('Select Sum(ITSERVORD.total) as TOTAL, count(ITSERVORD.qtd) as QTDCOL From ITSERVORD');
	DMESTOQUE.TSlaveServ.SQL.Add('Where ITSERVORD.COD_ORDEM = :CODORDEM ');
	DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsInteger:=XCOD_ORDEM;
	DMESTOQUE.TSlaveServ.Open;

   //informa total de serviços
   EdTotalserv.ValueNumeric:=DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency;
   XVLRTSERV:=DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency;

   //passa valor total ao a edit
   EdValorTotal.ValueNumeric:=XVLRTSERV+XVLRTPROD;
   EdTotalOrd.ValueNumeric:=EdValorTotal.ValueNumeric;
   XVLRTOTAL:=XVLRTPROD+XVLRTSERV;
   
  	//INSERE COMANDOS PARA FILTRAR
   DMESTOQUE.TSlaveServ.Close;
   DMESTOQUE.TSlaveServ.SQL.Clear;
   DMESTOQUE.TSlaveServ.SQL.Add(' select itservord.cod_itservord, itservord.cod_servico, itservord.cod_ordem, ');
   DMESTOQUE.TSlaveServ.SQL.Add('        subservico.descricao, itservord.vlrunit,itservord.desconto, itservord.qtd, itservord.total, ');
   DMESTOQUE.TSlaveServ.SQL.Add('        vwfuncionario.nome, itservord.data ');
   DMESTOQUE.TSlaveServ.SQL.Add(' from itservord ');
   DMESTOQUE.TSlaveServ.SQL.Add(' left join subservico on itservord.cod_servico=subservico.cod_subservico ');
   DMESTOQUE.TSlaveServ.SQL.Add(' left join vwfuncionario on itservord.cod_funcionario = vwfuncionario.cod_func ');
   DMESTOQUE.TSlaveServ.SQL.Add('Where itservord.cod_ordem = :CODORDEM ');
   DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsInteger := XCOD_ORDEM;
   DMESTOQUE.TSlaveServ.SQL.Add('order by itservord.cod_itservord desc');
   DMESTOQUE.TSlaveServ.SQL.Text;
   DMESTOQUE.TSlaveServ.Open;
End;


procedure TFOrdemPet.BtnDeleteServClick(Sender: TObject);
begin
  inherited;
      //Paulo 17/06/2011: Deleta o serviço da grid
      DMServ.TAlx1.Close;
      DMServ.TAlx1.sql.Clear;
      DMServ.TAlx1.SQL.Add('delete from itservord where itservord.cod_itservord= :CODIGO');
      DMServ.TAlx1.ParamByName('CODIGO').AsInteger:=DMESTOQUE.TSlaveServ.FieldByName('cod_itservord').AsInteger;
      DMServ.TAlx1.ExecSQL;
      DMServ.IBT.CommitRetaining;

      FiltraSlave;
end;

//Paulo 17/06/2011: Função para retornar dados de Ordem em dmserv.wordemdesp de acordo com o filtro
Procedure TFOrdemPet.FiltraOrdem(XSql: String);
Var
	XAux, XFiltro, XOrdem: String;
Begin
	Try

       //Verifica Filtros
       If CBFILTRO.Text='ABERTAS' Then
           XFiltro:=' Where (vwordem.STATUS='+#39+'ABERTO'+#39+')';
       If CBFILTRO.Text='FECHADAS' Then
           XFiltro:=' Where (vwordem.STATUS='+#39+'FECHADO'+#39+')';
       If CBFILTRO.Text='TERMINADAS' Then
           XFiltro:=' Where (vwordem.STATUS='+#39+'TERMINADO'+#39+')';
       If CBFILTRO.Text='PARADAS' Then
           XFiltro:=' Where (vwordem.STATUS='+#39+'PARADO'+#39+')';
       If CBFILTRO.Text='CANCELADO' Then
           XFiltro:=' Where (vwordem.STATUS='+#39+'CANCELADO'+#39+')';
       If CBFILTRO.Text='NFE2' Then
           XFiltro:=' Where (vwordem.FISCO = ''NFE2'' )';
       If CBFILTRO.Text='EXECUTANDO' Then
           XFiltro:=' Where (vwordem.STATUS='+#39+'EXECUTANDO'+#39+')';
		If (EdDtFiltro01.Text<>'  /  /    ') and (edDtFiltro02.Text<>'  /  /    ')
       Then Begin
           XFiltro:=XFiltro+' and  (vwordem.dtabert between :dt1 and :dt2) ';
       End;


       //Verifica Ordenação
   	If CBORDEM.Text='+ RECENTE' Then
           XOrdem:=' order by vwordem.cod_ordem DESC, vwordem.cliente ';
   	If CBORDEM.Text='NUMERO' Then
           XOrdem:=' order by vwordem.numero, vwordem.cliente, vwordem.cod_ordem desc';
   	If CBORDEM.Text='CLIENTE' Then
           XOrdem:=' order by vwordem.CLIENTE, vwordem.numero, vwordem.cod_ordem desc ';
   	If CBORDEM.Text='DATA' Then
           XOrdem:=' order by vwordem.dtabert, vwordem.numero, vwordem.cliente, vwordem.cod_ordem desc ';

       if XSql<>''then
           XAux:='and'
       else
           XAux:='';

       if (CBFILTRO.Text='TODAS') and (XSql<>'') then
          XAux:='where';

       dmserv.WOrdemDesp.Close;
       DMServ.WOrdemDesp.SQL.Clear;
       DMServ.WOrdemDesp.SQL.Add(' SELECT VWORDEM.COD_CLIENTE,VWORDEM.COD_FUNCIONARIO, VWORDEM.STATUS,VWORDEM.COD_ORDEM, VWORDEM.NUMERO, EQUIPAMENTO.DESCRICAO, ');
       DMServ.WOrdemDesp.SQL.Add(' EQUIPAMENTO.MODELO, VWORDEM.CLIENTE, VWORDEM.FORMAPAG, VWORDEM.DTABERT, ');
       DMServ.WOrdemDesp.SQL.Add(' VWORDEM.DTPREV, VWORDEM.DTFECH, VWORDEM.TOTAL, VWORDEM.FISCO, VWORDEM.NUMFISCAL ');
       DMServ.WOrdemDesp.SQL.Add(' FROM VWORDEM ');
       DMServ.WOrdemDesp.SQL.Add(' LEFT JOIN VWCLIENTE ON VWORDEM.COD_CLIENTE = VWCLIENTE.COD_CLIENTE ');
       DMServ.WOrdemDesp.SQL.Add(' LEFT JOIN CLIENTE ON VWORDEM.COD_VENDEDOR = CLIENTE.COD_CLIENTE ');
       DMServ.WOrdemDesp.SQL.Add(' LEFT JOIN PESSOA ON CLIENTE.COD_PESSOA = PESSOA.COD_PESSOA ');
       DMServ.WOrdemDesp.SQL.Add(' LEFT JOIN EQUIPAMENTO ON VWORDEM.COD_EQUIPAMENTO = EQUIPAMENTO.COD_EQUIPAMENTO ');
       DMServ.WOrdemDesp.SQL.Add(XFiltro+ ' ' +XAux+' '+XSql+ ' '+ XOrdem);
		If (EdDtFiltro01.Text<>'  /  /    ') and (edDtFiltro02.Text<>'  /  /    ')
       Then Begin
           DMServ.WOrdemDesp.ParamByName('dt1').AsDate:=StrToDate(EdDtFiltro01.Text);
           DMServ.WOrdemDesp.ParamByName('dt2').AsDate:=StrToDate(EdDtFiltro02.Text);
       End;

       DMServ.WOrdemDesp.Open;


   Except
   End;
End;

procedure TFOrdemPet.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Ordem de Serviço' ;
   XNovoAnimal:=False;
   PConsulta.Visible := True;
   PConsulta.BringToFront;
   //SETA DBS
   FiltraOrdem('');
   DBGridConsulta.DataSource:=DMSERV.DWOrdemDesp;
   if FileExists('C:\MZR\Arquivos\LayoutGrid\Ordempet.lgm') Then
       DBGridConsulta.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\Ordempet.lgm');
   //Verifica controles para filtros de pedido que vem do xml de configuração
   //Verifica controles para filtros de pedido que vem do xml de configuração
   If buscadatafiltrousuario=True
   Then Begin
       EdDtFiltro01.Text := DMMACS.TUsuario.FieldByName('FILTRAPEDDATA01').AsString;
       EdDtFiltro02.Text := DMMACS.TUsuario.FieldByName('FILTRAPEDDATA02').AsString;
   End;

   FMenu.XCodOrdemVinculo := -1;
   FMenu.SelectedForm:=False;//inicia com false para dizer que o botão selecionar não foi pressionado
   //Edmar - 19/08/2015 - verifica o tipo do formulário para posicionar
   //a grid corretamente e mostrar ou não o botão para seleção
 	if Tag = 20 then//form de seleção
   begin
       DBGridConsulta.Top := 177;
       DBGridConsulta.Height := 412;
       BtnSelecionar.Visible := True;
   end
   else begin//form de cadastro
       DBGridConsulta.Top := 153;
       DBGridConsulta.Height := 436;
       BtnSelecionar.Visible := False;
   end;
end;

procedure TFOrdemPet.CBORDEMPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
       FiltraOrdem('');
end;

procedure TFOrdemPet.CBFILTROPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
       FiltraOrdem('');
end;

procedure TFOrdemPet.BtnRelatorioClick(Sender: TObject);

begin
  inherited;
       PMRel.Popup(Left+PConsulta.left+PBotoesConsulta.left+ BtnRelatorio.Left, top+PConsulta.Top+PBotoesConsulta.top+BtnRelatorio.Top+BtnRelatorio.Height);


end;

procedure TFOrdemPet.DBGridConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
       If (shift=[ssCtrl]) and (key = 83)
       Then Begin
           Try
               if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\')
               then begin
                   ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
               end;
               DBGridConsulta.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\Ordempet.lgm');
               Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
           Except
               Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
           End;
       End;
	if (Shift = [ssCtrl]) And (Key = 67) then
   begin
   	Try
       	If FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('cod_ordem').AsString, '') = True then
           begin
           	Clipboard.AsText := DMServ.TFiscOrd.FieldByName('nfechave').AsString;
               MessageDlg('A Chave da Nfe foi Copiada (' + Clipboard.AsText + ')' + #13 + #10 + 'para colar pressione Ctrl+v', mtWarning, [mbOK], 0);
           end;
        except
        	Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de copiar a chave de Nfe!', '', 1, 1, false, 'i');
        end;
   end;
end;

procedure TFOrdemPet.BtnFechaPedClick(Sender: TObject);
var
xCodcliente:Integer;
begin
  inherited;
   xCodcliente := 0;
     //EFETUA CONTROLE DE ACESSO
   If ControlAccess('FECHORD', 'M')=False Then
  		Exit;

   DMServ.TAlx1.Close;
   dmserv.TAlx1.SQL.Clear;
   DMServ.TAlx1.SQL.Add('select cod_cliente from ordem where ordem.cod_ordem = :cod');
   dmserv.talx1.ParamByName('cod').AsInteger := DMServ.TOrd.fieldbyname('cod_ordem').AsInteger;
	xCodCliente := DMServ.WOrdemDesp.FieldByName('cod_cliente').AsInteger;

	VerificaCtaVencida(xCodCliente);
   
   // repassando valor do codigo da ordem para variavel
   XCOD_ORDEM := DMServ.WOrdemDesp.FieldByname('cod_ordem').AsInteger;

   // BUSCANDO DADOS DA ORDEM
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

   // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
   If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
   Then Begin
       Mensagem('    A T E N Ç Ã O   ','A ORDEM ESTÁ SENDO USADA NO MOMENTO.'+#13+'Use Ctrl+D para destravar','',1,1,false,'I');
       Exit;
   End;


   
   If DMServ.TOrd.FieldByName('STATUS').AsString = 'FECHADO'
   Then Begin
       Mensagem('    A T E N Ç Ã O   ','A ORDEM PRESCISA ESTAR EM ABERTO PARA PODER SER FECHADA.','',1,1,false,'I');
       Exit;
   End;
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
  	If DMServ.WOrdemDesp.IsEmpty
   Then Begin
		Mensagem('A T E N Ç Ã O', 'Não existe nenhuma ordem a ser fechada!', '', 1, 1, False, 'a');
       Exit;
   End;
   If DMServ.WOrdemDesp.FieldByName('TOTAL').AsCurrency=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Esta ordem não contém produto ou serviços. Por isso não pode ser fechada!', '', 1, 1, False, 'i');
       Exit;
   End;
  	If DMServ.WOrdemDesp.FieldByName('STATUS').AsString<>'FECHADO'
   Then Begin
		If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja Realmente fechar a ordem de serviço '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString, '', 2, 3, False, 'C')=2
       Then Begin
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
           CBGeraFinanceiro.Checked:=False;
           CBGeraFinanceiro.Visible:=False;
           CBPagamento.Text := 'Carteira';
           PFinanceiro.Visible:=True;
           PFinanceiro.BringToFront;

           //Paulo 20/07/2011: seleciona a forma de pagamento a vista
           FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO','À VISTA', '');
           XCOD_FORMPAG:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
           FrmFormPag.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsString;
           FrmFormPag.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;

           //Paulo 17/08/2011: verifica se o cliente está marcado somente para venda a vista
           FiltraTabela(DMServ.TAlx1,'CLIENTE','COD_CLIENTE', IntToStr(DMServ.TOrd.FieldByname('COD_CLIENTE').AsInteger),'');
           if DMServ.TAlx1.FieldByName('VENDAVISTA').AsString = '1' then
           begin
               FrmFormPag.BTNOPEN.Enabled:=False;
               FrmFormPag.BTNMINUS.Enabled:=False;
           end
           else begin
               FrmFormPag.BTNOPEN.Enabled:=True;
               FrmFormPag.BTNMINUS.Enabled:=True;
           end;

           If DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString<>''
           Then Begin//se existir uma conta padrao configurada
                XCOD_CONTASERV:=DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
                FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCOD_CONTASERV), '');
                FrmContaServ.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                FrmContaServ.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
           End;


           //LIMPA VALORES ANTIGOS
	   	   	FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '');
           If ControlAccess('GERAFINANC', '')=True Then
               CBGeraFinanceiro.Visible:=true;
      		//FORMA DE PAGAMENTO
      		{XCOD_FORMPAG:=DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger;
 	   		If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '')=True
      		Then Begin
				XCOD_FORMPAG:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
  		    	FrmFormPag.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
               FrmFormPag.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
      		End
      		Else Begin
				XCOD_FORMPAG:=-1;
               FrmFormPag.EDCodigo.Text:='';
               FrmFormPag.EdDescricao.Text:='';
      		End;
            }


           If DMServ.TOrd.FieldByName('DTFECH').AsString<>'' Then
               EdDtFech.Text:=DMServ.TOrd.FieldByName('DTFECH').AsString
           Else
               EdDtFech.Text:=DateToStr(Date());
           FrmFormPag.EDCodigo.SetFocus;
           FrmFormPag.Refresh;
          	FrmContaServ.EDCodigo.SetFocus;
          	TravarPaines(True);
          	CBPagamento.SetFocus;
          	FPFinanceiro.Refresh;
       End;
	End;
end;

//Paulo 22/06/2011:travar paines principais
procedure TFOrdemPet.TravarPaines(oi:boolean);
begin
   if oi
   then begin
       PConsulta.Enabled := False;
       PCadastro.Enabled := False;
   end
   else begin
       PConsulta.Enabled := True;
       PCadastro.Enabled := True;
   end;
end;

procedure TFOrdemPet.FrmFormPagBTNOPENClick(Sender: TObject);
begin
  inherited;

    If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
     Then Begin
         XCOD_FORMPAG:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
         FrmFormPag.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
         FrmFormPag.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
         FrmFormPag.Repaint;
     End
     Else Begin
        if XCOD_FORMPAG=-1
        then begin
          FrmFormPag.EDCodigo.Text:='';
          FrmFormPag.EdDescricao.Text:='';
        end;
     End;

     //Filtra conta
     If DMMACS.TLoja.FieldByName('PLNCTASERV').AsString<>''
     Then Begin//se existir uma conta padrao configurada
         XCOD_CONTASERV:=DMMACS.TLoja.FieldByName('PLNCTASERV').AsInteger;
         FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCOD_CONTASERV), '');
         FrmContaServ.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
         FrmContaServ.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
     End
     Else Begin
         XCOD_CONTASERV:=-1;
         FrmContaServ.EDCodigo.Text:='';
         FrmContaServ.EdDescricao.Text:='';
     End;

end;

procedure TFOrdemPet.BtnMoedaOKClick(Sender: TObject);
var
   XCodPedidoGerador :Integer; // - 16/03/2009: guarda codigo do pedido
   XFlag : Boolean; // - 13/03/2009: verifica se deve imprimir NF depois do cupom conforme configurado em caixa
   XNumAuxECF:String; // - 16/03/2009: armazena numero auxiliar cupom
begin
  inherited;
  	//Bloqueia opção a vista para determinadas formas de pagamento
	If ((CBPagamento.Text<>'Carteira') and (CBPagamento.Text<>'Chq. Terc.')  and (CBPagamento.Text<>'Banco') and (CBPagamento.Text<>'Crédito')) and (FrmFormPag.EdDescricao.tEXT='À VISTA')
	Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'A forma de pagamento '+CBPagamento.Text+' não permite fecharo pedido como À Vista!', '', 1, 1, False, 'i');
       CBPagamento.SetFocus;
       Exit;
   End;  
	//valida quanto a forma de pagamento
	If CBPagamento.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe se o pagamento será feito em carteira ou cheque!', '', 1, 1, False, 'i');
       CBPagamento.SetFocus;
       Exit;
   End;
   //valida quanto a Conta
	If XCOD_CONTASERV=-1
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
	If XCOD_FORMPAG=-1
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma forma de pagamento para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmFormPag.EDCodigo.SetFocus;
       Exit;
   End; 

   XCodPedidoGerador := DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsInteger;
  	XCOD_ORDEM:=DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsInteger;
   if FechaOrd(DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString, EdDtFech.Text) then
   begin
   	if ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF')
       	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe'))
       		OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
           		OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
       				AND (DMSERV.TOrd.FieldByName('TOTPROD').AsCurrency > 0) then
       begin
       	FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');

           FMenu.TIPOREL := 'NF';
           if Mensagem('C O N F I R M A Ç Ã O', 'Deseja imprimir NFC-e para o pedido' + #13 + 'Nº ' + DMSERV.TOrd.FieldByName('NUMERO').AsString + '?', '', 2, 3, False, 'C') = 2 then
           begin
           	FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');
               AbreFiscal;
               Registra('ORDEM DE SERVIÇO', 'NF', DMSERV.TOrd.FieldByName('dtabert').AsString, 'Nº ' + DMSERV.TOrd.FieldByName('NUMERO').AsString, 'Valor: ' + DMSERV.TOrd.FieldByName('totord').AsString);               
           end;
       end;
   end;

   //     FIM  ---------------------
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

   //Atualiza View da tela de Consulta
   FiltraOrdem('');
   TravarPaines(False);
   PCadastro.Visible:=False;
   PConsulta.Visible:=true;
   PConsulta.BringToFront;

end;

//Paulo 22/06/2011: Fecha Ordem
Function TFOrdemPet.FechaOrd(CODPEDIDO: String; DTFECH: String) : Boolean;
Var
	ATUFINANC: Boolean; //controle financeiro foram efetivados
   XVALORSERV,XVLRCREDITO,XVLRDESP:Real;//O VLR DAS DESPESAS É DIV POR DOIS ENTRE PROD E SERV.
Begin
	//inicializa as variaveis como true, caso encontre erro na passagem da função eslas passaram a false
   FechaOrd:=True;
   ATUFINANC:=True;
   // Tenta filtrar a ordem
   If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '') = True
   Then Begin
   	If (DMServ.TOrd.FieldByName('STATUS').AsString='FECHADO') //se a ordem ja não estiver fechada
       Then Begin
           Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'PEDIDO FECHADO!'+#13+'NÃO É POSSÍVEL ALTERAR/CONSULTAR.', '', 1, 1, False, 'a');
           FiltraOrdem('');
			Exit;
       End;
   	XVLRDESP:=DMServ.TOrd.FIELDBYNAME('TOTDESP').AsCurrency/2;
       //Filtra loja
       FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       //***********************************************
       // INICIO DE PROCESSO PARA CONTROLE FINANCEIRO **
       //***********************************************
       //Filtra cliente
       FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMServ.TOrd.FIELDBYNAME('COD_CLIENTE').AsString, '');
       If (CBGeraFinanceiro.Checked=False)
       Then Begin
       	If CBPagamento.Text='Multiplo'
           Then Begin
           	//tenta validar a data
           	Try
               	StrToDate(EdDtFech.Text);
               Except
               	MessageDlg('Por favor, verifique a data de fechamento. Ela não passou na validação', mtWarning, [mbOK], 0);
                   EdDtFech.SetFocus;
               End;
               //tenta fechar as contas
				If FecConta('ORDEM', XCOD_ORDEM, DMServ.TOrd.FieldByName('TOTORD').AsCurrency, DMServ.TOrd.FieldByName('TOTPROD').AsCurrency, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency, XCOD_CONTASERV, XCOD_CONTASERV, StrToDate(EdDtFech.Text))=True
               Then Begin
                   ATUFINANC:=True;
               End
               Else
                   ATUFINANC:=False;
           End
           Else Begin
           	//Filtra Forma de Pagamento
               If FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(XCOD_FORMPAG), '') = True
               Then Begin // Encontrou forma de pagamento, continua processo
               	//verifica moeda padrão para lançamento
                   If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
                   Then Begin // caso o pedido tenha sido feito à vista deve-se lançar o valor direto no caixa
                   	If CBPagamento.Text='Cheque'
                       Then Begin//LANÇAMENTO EM CONTROLE DE CHEQUE
                       	If LancChEnt(-1, XCOD_CONTASERV, 'Fech. Ordem'+DMServ.TOrd.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, Date(), '', DMServ.TOrd.FieldByName('TOTPROD').AsCurrency+XVLRDESP, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, '', '', 0, '', '', 'ORDEM', IntToStr(XCOD_ORDEM))=True
                           Then  ////informa que a atualização do financeiro foi efetivada
                           	ATUFINANC:=True
                           Else//informa que a finalização do financeiro falhou
                           	ATUFINANC:=False;
                       End;
                       If CBPagamento.Text = 'Cartão'
                       Then Begin
                           If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger, XCOD_CONTASERV ,'Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMServ.TOrd.FieldByName('TOTPROD').AsCurrency+DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, 'TOTSERV',(XCOD_ORDEM), 'ORDSERV',StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                           Then  Begin////informa que a atualização do financeiro foi efetivada
                           	ATUFINANC:=True
                           End
                           Else Begin//informa que a finalização do financeiro falhou
                           	ATUFINANC:=False;
                           End;
                       End;
                       If (CBPagamento.Text <> 'Cheque') and (CBPagamento.Text <> 'Cartão') and (CBPagamento.Text<>'Crédito')
                       Then Begin
                           //REALIZA LANÇAMENTOS EM CAIXA REFERENTE A SERVIÇOS
                           If LanCaixa(-1, DateToStr(Date()), XCOD_CONTASERV, '(Serviços) Fech. Ordem Serv. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMServ.TOrd.FieldByName('TOTPROD').AsCurrency+DMServ.TOrd.FieldByName('TOTSERV').Value+XVLRDESP, 'ORDSERV', (XCOD_ORDEM), CBPagamento.Text, 'E', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1')=True
                           Then Begin//informa que a atualização do financeiro foi efetivada
                           	ATUFINANC:=True;
                           End
                           Else Begin//informa que a finalização do financeiro falhou
                           	ATUFINANC:=False;
                           End;
                       End;
                       //Paulo 25/10/2011: Desconta do crédito do cliente
                       If CBPagamento.Text='Crédito'
                       Then Begin
                           //LANÇA CREDITO PARA CLIENTE
                           If FiltraTabela(DMPESSOA.WCliente, 'vwcliente', 'COD_CLIENTE', DMServ.TOrd.FIELDBYNAME('COD_CLIENTE').AsString, '')=False
                           Then Begin
                               Exit;
                           End;
                           If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsString, '')=False
                           Then Begin
                               Exit;
                           End;
                           XVALORSERV:=DMServ.TOrd.FieldByName('TOTPROD').AsCurrency+DMServ.TOrd.FieldByName('TOTSERV').Value+XVLRDESP;
                           //determina o valor a ser lançado como credito
                           If XVALORSERV<=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency
                           Then Begin
                               XVLRCREDITO:=XVALORSERV;
                           End
                           Else Begin
                               XVLRCREDITO:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency;
                           End;
                           //SE EXISTE
                           DMPESSOA.TPessoa.Edit;
                           DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency-XVLRCREDITO;
                           DMPESSOA.TPessoa.Post;
                           //Lança na tabela de credito
                           LanCredito(DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsInteger, XCOD_ORDEM, 'ORDSERV', 'CLI', 'S', DMServ.TOrd.FieldByName('NUMERO').AsString, DateToStr(Date()), XVLRCREDITO);

                           //REGISTRO DE CREDITO SAIDA
                           If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.FieldByName('COD_CTAANTECIPCREDCLI').AsInteger, 'Bx. O.S. Crédito-'+DMServ.TOrd.FieldByName('NUMERO').AsString +' Cli: '+DMPESSOA.WCliente.FIELDBYNAME('NOME').AsString, XVLRCREDITO, 'ORDSERV', XCOD_ORDEM, CBPagamento.Text, 'S', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1')=True
                           Then Begin//informa que a atualização do financeiro foi efetivada
                               
                               //REGISTRO DE CREDITO ENTRADA
                               If LanCaixa(-1, DateToStr(Date()), XCOD_CONTASERV, 'Bx. O.S. Crédito-'+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli: '+DMPESSOA.WCliente.FIELDBYNAME('NOME').AsString, XVLRCREDITO, 'ORDSERV', XCOD_ORDEM, CBPagamento.Text, 'E', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1')=True
                               Then Begin//informa que a atualização do financeiro foi efetivada
                                   DMPESSOA.TransacPessoa.CommitRetaining;
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   DMPESSOA.TransacPessoa.RollbackRetaining;
                               End;
                               DMPESSOA.TransacPessoa.CommitRetaining; 
                           End
                           Else Begin//informa que a finalização do financeiro falhou
                               DMPESSOA.TransacPessoa.RollbackRetaining;
                           End;
                           If XVALORSERV>XVLRCREDITO
                           Then Begin
                               //CASO O CREDITO NAO TENHA SIDO SUFICIENTE TRABALHA NO CAIXA
                               //REGISTRO DE CREDITO ENTRADA
                               If LanCaixa(-1, DateToStr(Date()), XCOD_CONTASERV, 'Bx. O.S. Crédito-'+DMServ.TOrd.FieldByName('NUMERO').AsString + ' Cli: '+DMPESSOA.WCliente.FIELDBYNAME('NOME').AsString, XVALORSERV-XVLRCREDITO, 'ORDSERV', XCOD_ORDEM, CBPagamento.Text, 'E', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1')=True
                               Then Begin//informa que a atualização do financeiro foi efetivada
                                   DMPESSOA.TransacPessoa.CommitRetaining;
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   DMPESSOA.TransacPessoa.RollbackRetaining;
                               End;
                           End; 
                        End; 
                   End
                   Else Begin//Não é à vista
                   	If LancConta('ORDEM', (XCOD_ORDEM), DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, DMServ.TOrd.FieldByName('TOTPROD').Value+XVLRDESP, DMServ.TOrd.FieldByName('TOTSERV').Value, XCOD_CONTASERV, XCOD_CONTASERV, -1, 'Fech. Ordem de Serviço '+DMServ.TOrd.FieldByName('NUMERO').AsString, XCOD_FORMPAG, DMServ.TOrd.FieldByName('NUMERO').AsString, 'O', Date(), 0, EdDtFech.Text, DMServ.TOrd.FieldByName('numfiscal').AsString)=True
                       Then Begin
                       	ATUFINANC:=True;
                       End
                       Else Begin
                       	ATUFINANC:=False;
                       End;
                   End;
               End
               Else Begin //não esncontrou forma de pagamento, processo inválido retornar informações
                   ATUFINANC:=False;
               End;
       	End;
       End
       Else Begin
           ATUFINANC:=True;
       End;
       //Verifica se todas as atualizações foram possíveis
       If ATUFINANC=True
       Then Begin //então tenta-se confirmar operação
       	Try
   			//calcula comissão
   			//CalcComisTotVend;
           	//FECHA PEDIDO
               DMServ.TOrd.Edit;
               DMServ.TOrd.FieldByName('STATUS').AsString:='FECHADO';
               DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger:=XCOD_FORMPAG;
               DMServ.TOrd.FieldByName('TIPOPAG').AsString:=CBPagamento.Text;
               DMServ.TOrd.FieldByName('DTFECH').AsString:=EdDtFech.Text;
               DMServ.TOrd.FieldByName('TIPOPAG').AsString:=CBPagamento.Text;
               DMServ.TOrd.FieldByName('COMISSAO').AsCurrency:=XVLRCOMIS;
               DMServ.TOrd.Post;
               DMServ.TOrd.ApplyUpdates;

               //FechaFaturaServicos(IntToStr(XCOD_ORDEM));
               //EFETUA TRANSAÇÕES
               DMServ.IBT.CommitRetaining;
               DMBANCO.IBT.CommitRetaining;
               DMCAIXA.IBT.CommitRetaining;
               MDO.Transac.CommitRetaining;
				Mensagem('INFORMAÇÃO AO USUÁRIO', 'ORDEM DE SERVIÇO FECHADA COM SUCESSO!', '', 1, 1, false, 'a');
               //Atualiza ordens na tela de consulta
               FiltraOrdem('');
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
           MDO.Transac.RollbackRetaining;
       End; 
   End
   Else Begin //else de filtragem de pedido
       FechaOrd:=false;
   End;
End;

procedure TFOrdemPet.BtnCancelamentosClick(Sender: TObject);
Var
	XCodPedidoTroca: String;
begin
   FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '');
  	FiltraTabela(DMServ.TFiscOrd, 'DOCFISORD', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '');

  	if (DMServ.WOrdemDesp.FieldByName('NUMFISCAL').AsString <> '0') And (DMServ.WOrdemDesp.FieldByName('NUMFISCAL').AsString <> '') then
   begin
   	Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Esta O.S. Passou por uma impressão fiscal e não pode mais ter seu fechamento cancelado.', '', 1, 1, False, 'a');
      	Exit;
  	end;
   
	If DMServ.WOrdemDesp.FieldByName('STATUS').AsString<>'FECHADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO','A ORDEM DE SERVIÇO NÃO SE ENCONTRADA FECHADA!'+#13+'PRESSIONE O BOTÃO CONSULTAR PARA ALTERAR AS INFORMAÇÕES.', '', 1, 1, False, 'a');
       Exit;
   End;

	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CANCPEDFECH', 'M')=False Then
  		Exit;

	If Mensagem('A T E N Ç Ã O', 'DESEJA EFETUAR O CANCELAMENTO DA ORDEM DE SERVIÇO:'+#13+'Nº '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin
       // verifica se o caixa estah aberto
       If DMCAIXA.VerifAbCaixa = false
       Then Begin
           Mensagem('   A T E N Ç Ã O   ','CAIXA FECHADO. A ORDEM DE SERVIÇO NÃO PODE SER CANCELADA.','',1,1,false,'I');
           Exit;
       End;
       XCodPedidoTroca:=DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString;
       If FiltraTabela(DMServ.WOrdemDesp, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '')=True
       Then Begin
           //REGISTRA COMANDO DO USUARIO
           Registra('ORDEM', 'C. FECH ORD', DMServ.WOrdemDesp.FieldByName('DTABERT').AsString, 'Nº '+DMServ.TOrd.FieldByName('NUMERO').AsString+'-'+DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, 'Vlr:'+DMServ.TOrd.FieldByName('totord').AsString+'-'+DMServ.WOrdemDesp.FieldByName('equipamento').AsString);
			If DMServ.WOrdem.FieldByName('TIPOPAG').AsString='Multiplo'
           Then Begin
               DMServ.TOrd.EDIT;
               DMServ.TOrd.FieldByName('STATUS').AsString:='ABERTO';
               DMServ.TOrd.FieldByName('EDIT').AsString := '0';
               DMServ.TOrd.Post;
               Try
                   DMESTOQUE.TransacEstoque.CommitRetaining;
                   DMENTRADA.IBT.CommitRetaining;
                   DMSAIDA.IBT.CommitRetaining;
		           	MessageDlg('Esta Ordem foi fechada com a opção Multipla para pagamento. Ela será gravada com status de aberto, porém seus lançamentos financeiros não serão cancelados.', mtWarning, [mbOK], 0);
               Except
                   DMESTOQUE.TransacEstoque.RollbackRetaining;
                   DMENTRADA.IBT.RollbackRetaining;
                   DMSAIDA.IBT.RollbackRetaining;
               End;
               If FiltraTabela(DMServ.WOrdemDesp, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '')=True
               Then Begin
                   BtnConsultar.Click;
               End;
           End
           Else Begin
               If CancelLanOrd(XCodPedidoTroca)=True
               Then Begin//Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
                   DMServ.TOrd.EDIT;
                   DMServ.TOrd.FieldByName('STATUS').AsString:='ABERTO';
                   DMServ.TOrd.FieldByName('EDIT').AsString := '0';
                   DMServ.TOrd.Post;
               End;
               Try
                   DMESTOQUE.TransacEstoque.CommitRetaining;
                   DMENTRADA.IBT.CommitRetaining;
                   DMSAIDA.IBT.CommitRetaining;
               Except
                   DMESTOQUE.TransacEstoque.RollbackRetaining;
                   DMENTRADA.IBT.RollbackRetaining;
                   DMSAIDA.IBT.RollbackRetaining;
               End;
               If FiltraTabela(DMServ.WOrdemDesp, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '')=True
               Then Begin
                   BtnConsultar.Click;
               End;
           End;
       End
       Else Begin
			Exit;
       End;
   End;
end;

//Paulo 22/06/2011: Função utilizada para cancelar/estornar todos os lançamentos emitidos por uma determinada OS
Function TFOrdemPet.CancelLanOrd(CodPedido: String):Boolean;
var
   XtipCai:String;
begin
   //Inicia resultado como falso
   Result:=True;

	//filtra loja para capturar as configurações
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	//filtra DADOS DA VIEW
	DMServ.WOrdemDesp.Close;
	DMServ.WOrdemDesp.SQL.Clear;
	DMServ.WOrdemDesp.SQL.Add('SELECT * FROM vwordem WHERE COD_ORDEM=:CODIGO');
	DMServ.WOrdemDesp.ParamByName('CODIGO').AsString:=CodPedido;
	DMServ.WOrdemDesp.Open;
   If DMServ.WOrdemDesp.IsEmpty
   Then Begin
   	MessageDlg('O Registro de ordem não foi encontrado', mtWarning, [mbOK], 0);
       Exit;
   End;
   FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', CodPedido, '');
   FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '');

   If DMServ.TOrd.FieldByName('TipoPag').AsString<>'Multiplo'
   Then Begin
   	//SE A FORMA DE PAGAMENTO FOR DIFERENTE DE MULTIPLO

		//CONTROLE QUE DELETA TODA A MOVIMENTAÇÃO QUANDO UMA ORDEM É FECHADO COM CHEQUE E É À VISTA.

       FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'ORDEM' + #39 + ')');

       XCampo:=DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;

       //seleciona cheques para serem apagados
       DMCAIXA.TAlx.close;
       DMCAIXA.TAlx.SQL.Clear;
       DMCAIXA.TAlx.SQL.Add('select * from chequerec');
       DMCAIXA.TAlx.SQL.Add('where chequerec.cod_movbanco = :CODMOV');
       DMCAIXA.TAlx.ParamByName('CODMOV').AsString:=DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;
       DMCAIXA.TAlx.Open;

       IF NOT DMCAIXA.TAlx.IsEmpty
       then begin
         xcod_chequerec:=         DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
         //seleciona lançamentos de caixa para serem deletados
         DMCAIXA.TLanCaixa.Close;
         DMCAIXA.TLanCaixa.SQL.Clear;
         DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA');
         DMCAIXA.TLanCaixa.SQL.Add('where ((lancaixa.tipogerador='+#39+'LCHR'+#39+') or (lancaixa.tipogerador='+#39+'DCHR'+#39+') or (lancaixa.tipogerador='+#39+'MCHR'+#39+') AND (lancaixa.cod_gerador =:CODLANCA))');
         DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString:=DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
         DMCAIXA.TLanCaixa.Open;
         DMCAIXA.TLanCaixa.First;

         //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
         IF (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption) and (FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.WOrdemDesp.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= false)
         THEN BEGIN //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
              LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fech. Ped. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TPEDV', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.TOrD.FieldByName('NUMERO').AsString, Date(), '1');
              MDO.Transac.CommitRetaining;
         end;


         //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
         If DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption
         then begin
              while not DMCAIXA.TLanCaixa.Eof do
              begin
                DMCAIXA.TLanCaixa.Delete;
                DMCAIXA.TLanCaixa.ApplyUpdates;

              end;
         end;

         //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em conta corrente
         If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + xcod_chequerec + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= true
         Then Begin
                 DMBANCO.TMovBanco.Delete;
                 DMBANCO.TMovBanco.ApplyUpdates;
         End;


         //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em caixa
         If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.TOrd.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'ORDEM' + #39 + ')')= true
         Then Begin
             DMBANCO.TMovBanco.Delete;
             DMBANCO.TMovBanco.ApplyUpdates;
         End;


         //apaga cheques ligados ao pedido de venda
         if not DMCAIXA.TAlx.IsEmpty
         then begin
            DMBANCO.TChequeRec.Close;
            DMBANCO.TChequeRec.SQL.Clear;
            DMBANCO.TChequeRec.SQL.Add('delete from chequerec where cod_movbanco= :CODIGO');
            DMBANCO.TChequeRec.ParamByName('CODIGO').AsString:=XCampo;
            DMBANCO.TChequeRec.ExecSQL;
            DMBANCO.IBT.CommitRetaining;
            DMBANCO.TChequeRec.Open;
            DMBANCO.TChequeRec.Close;
            DMBANCO.TChequeRec.SQL.Clear;
            DMBANCO.TChequeRec.SQL.Add('select * from chequerec');
            DMBANCO.TChequeRec.Open;
         end;
     END;

     //VERIRIFA SE A OS FOI À VISTA
     If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
     Then Begin
         //FILTRA LANÇAMENTO EM CAIXA E GERA OUTRO LANÇAMENTO DE ESTORNO EM CX
         DMCAIXA.TLanCaixa.Close;
         DMCAIXA.TLanCaixa.SQL.Clear;
         DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA WHERE (TIPOGERADOR='+#39+'ORDSERV'+#39+') AND (COD_GERADOR=:CODPEDIDO)');
         DMCAIXA.TLanCaixa.ParamByName('CODPEDIDO').AsString:=CodPedido;
         DMCAIXA.TLanCaixa.Open;
         DMCAIXA.TLanCaixa.First;
         If Not DMCAIXA.TLanCaixa.IsEmpty
         Then Begin//se foi encontrado algum lançamento em caixa deve se realizar outro de estorno
           while not DMCAIXA.TLanCaixa.Eof do begin
               //Paulo 25/10/2011 verifica o tipcai para fazer a operação inversão para crédito
               if DMCAIXA.TLanCaixa.FieldByName('TIPCAI').AsString = 'E' then
                   XtipCai:='S'
               else
                   XtipCai:='E';
               If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. O.S. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TOS', StrToInt(CodPedido), 'Carteira', XtipCai, 'EST'+DMServ.TOrd.FieldByName('NUMERO').AsString, Date(), '1')= True Then
                   MDO.Transac.CommitRetaining
                   //DMCAIXA.IBT.CommitRetaining
               Else
                   Result:=False;
               DMCAIXA.TLanCaixa.Next;
           end;
         End;
         If DMServ.TOrd.FieldByName('TIPOPAG').AsString = 'Cartão'
         Then Begin
             If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.WOrdemDesp.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'TOTPROD' + #39 + ')')= true
             Then Begin
                 DMBANCO.TMovBanco.Delete;
                 DMBANCO.TMovBanco.ApplyUpdates;
             End;
             If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.WOrdemDesp.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'TOTSERV' + #39 + ')')= true
             Then Begin
                 DMBANCO.TMovBanco.Delete;
                 DMBANCO.TMovBanco.ApplyUpdates;
             End;
             DMBANCO.IBT.CommitRetaining;
         End;
         //Paulo 25/10/2011: Cancela os créditos
         If DMServ.TOrd.FieldByName('TIPOPAG').AsString = 'Crédito'
         Then Begin
               DMCAIXA.TAlx.Close;
               DMCAIXA.TAlx.SQL.Clear;
               DMCAIXA.TAlx.SQL.Add(' select * from credito Where (credito.cod_gerador = :CODGERADOR )and (credito.tipogerador=' +#39 + 'ORDSERV' + #39 + ') And (TIPOCRED ='+#39 + 'S' + #39 + ')');
               DMCAIXA.TAlx.ParamByName('CODGERADOR').AsString:=CodPedido;
               DMCAIXA.TAlx.Open;
               FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(DMCAIXA.TAlx.FieldByName('COD_PESSOA').AsInteger), '');
               FiltraTabela(DMPESSOA.TPessoa,'PESSOA','COD_PESSOA',IntToStr(DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsInteger),'' );
               DMPESSOA.TPessoa.Edit;
               DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency+DMCAIXA.TAlx.FieldByName('VALOR').AsCurrency;
               DMPESSOA.TPessoa.Post;
               //APAGA LANÇAMENTPO DE CREDITO CASO TENHA OCORRIDO UM
               DMCAIXA.TAlx.Close;
               DMCAIXA.TAlx.SQL.Clear;
               DMCAIXA.TAlx.SQL.Add(' delete from credito Where (credito.tipogerador=' +#39 + 'ORDSERV' + #39 + ') And (credito.cod_gerador=:CODGERADOR) ');
               DMCAIXA.TAlx.ParamByName('CODGERADOR').AsString:=CodPedido;
               DMCAIXA.TAlx.ExecSQL;
               try
                  DMPESSOA.TransacPessoa.CommitRetaining;
                  DMCAIXA.IBT.CommitRetaining;
               except
                   DMPESSOA.TransacPessoa.RollbackRetaining;
                   DMCAIXA.IBT.RollbackRetaining;
               end;
         end;
     End
     Else Begin
          //SE A VENDA NÃO FOI À VISTA
          //FILTRA CTA RECEBER PARA LOCALIZAR LANÇAMENTOS
          If FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', '', ' (TIPOGERADOR = '+#39+'ORD'+#39+') AND (COD_GERADOR='+CodPedido+')')=True
          Then Begin//se foi encontrado alguma conta
             //FILTRA PARCELAS
             If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_CTARECEBER', DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '')=True
             Then Begin//se foi encontrado alguma conta
                 //PARA CADA PARCELA VERIFICA SE ESTA FECHADA
                 DMCONTA.TParcCR.First;
                 While not DMCONTA.TParcCR.Eof do
                 Begin
                     //deleta lançamentos de caixa caso seja forma de pagamento carteira.
                     if DMServ.TOrd.FieldByName('TIPOPAG').AsString = 'Carteira'
                     then begin
                     		FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', '','(lancaixa.tipogerador='+#39+'CTAR'+#39+') AND (lancaixa.cod_gerador =' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39')');
                          	while not DMCAIXA.TLanCaixa.Eof
                          	do begin
                           	If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. O.S. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TOS', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.TOrd.FieldByName('NUMERO').AsString, Date(), '1')= True Then
                                   MDO.Transac.CommitRetaining
                               	//DMCAIXA.IBT.CommitRetaining
                             	Else
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
                         If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (TIPOGERADOR='+#39+'CTARCH'+#39+') AND (COD_GERADOR='+DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString+')')=True
                         Then Begin
                            //se o codigo de abertura do caixa atual for diferente do codigo de lançamento de caixa da ordem e este cheque foi movimentado em caixa faz o estorno
                            IF (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption) and (FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= false)
                            THEN BEGIN //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
                                LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fech. Ped. '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'ORDEM', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString, Date(), '1');
                            end;
                            DMCAIXA.IBT.CommitRetaining;
                           

                                DMCAIXA.TLanCaixa.First;

                                while not DMCAIXA.TLanCaixa.Eof do
                                //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
                                If (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption) AND (DMCAIXA.TLanCaixa.FieldByName('COD_GERADOR').AsString = DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsString)
                                then begin
                                      if ((DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'LCHR') OR (DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'MCHR') or (DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'DCHR'))
                                      THEN BEGIN
                                        DMCAIXA.TLanCaixa.Delete;
                                        DMCAIXA.TLanCaixa.ApplyUpdates;
                                      END;
                                end
                                else
                                dmcaixa.TLanCaixa.Next;
                            DMCAIXA.IBT.CommitRetaining;
                            MDO.Transac.CommitRetaining;
                         End;

                            //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em conta corrente
                            If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + IntToStr(DMBANCO.TChequeRec.FieldByname('COD_CHEQUEREC').AsInteger) + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= true
                               Then Begin
                               DMBANCO.TMovBanco.First;
                                   while not DMBANCO.TMovBanco.Eof do
                                       DMBANCO.TMovBanco.Delete;
                                       DMBANCO.TMovBanco.ApplyUpdates;
                                   //end;
                               DMBANCO.TMovBanco.Next;
                               End;
                            DMBANCO.IBT.CommitRetaining;  

                            //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em caixa
                            If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39 + ')')= true
                            Then Begin
                               DMBANCO.TMovBanco.Delete;
                               DMBANCO.TMovBanco.ApplyUpdates;
                            End;
                            DMBANCO.IBT.CommitRetaining;


                     //apaga cheques ligados a ordem

                      DMBANCO.TChequeRec.Close;
                      DMBANCO.TChequeRec.SQL.Clear;
                      DMBANCO.TChequeRec.SQL.Add('delete from chequerec where cod_movbanco= :CODIGO');
                      DMBANCO.TChequeRec.ParamByName('CODIGO').AsString:=XCampo;
                      DMBANCO.TChequeRec.ExecSQL;
                      DMBANCO.IBT.CommitRetaining;
                      DMBANCO.TChequeRec.Open;
                      DMBANCO.TChequeRec.Close;
                      DMBANCO.TChequeRec.SQL.Clear;
                      DMBANCO.TChequeRec.SQL.Add('select * from chequerec');
                      DMBANCO.TChequeRec.Open;
                   // end;


                     DMCONTA.TParcCR.Delete;
                     DMCONTA.TParcCR.ApplyUpdates;
               End;
             End;
             DMCONTA.TCtaR.Delete;
             DMCONTA.TCtaR.ApplyUpdates;
             Result := true;
          End;
     End;
   End
   Else Begin
   	//SE A FORMA DE PAGAMENTO FOR IGUAL A MULTIPLO

       //ENTRADA - verifica entrada
       //verifica se foi dado lançamentos de entrada
       //seleciona lançamentos de caixa para serem deletados
        DMCAIXA.TLanCaixa.Close;
        DMCAIXA.TLanCaixa.SQL.Clear;
        DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA');
        DMCAIXA.TLanCaixa.SQL.Add('where (lancaixa.tipogerador='+#39+'ORDEMENT'+#39+') AND (lancaixa.cod_gerador =:CODLANCA)');
        DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString:=DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
        DMCAIXA.TLanCaixa.Open;
        DMCAIXA.TLanCaixa.First;

        //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
        IF DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption= false
        THEN BEGIN //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
            LanCaixa(-1, DateToStr(Date()), DMCAIXA.TLanCaixa.fieldByName('COD_PLNCTAFIL').AsInteger, 'Cancel. fech. Ped. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'ORDEMENTEST', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.TOrD.FieldByName('NUMERO').AsString, Date(), '1');
        end;


        //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
        If DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption
        then begin
            while not DMCAIXA.TLanCaixa.Eof do
            begin
              DMCAIXA.TLanCaixa.Delete;
              DMCAIXA.TLanCaixa.ApplyUpdates;

            end;
        end;

       //TROCO - Verifica extorno para troco
       //verifica se foi dado lançamentos de troco
       //seleciona lançamentos de caixa para serem deletados
        DMCAIXA.TLanCaixa.Close;
        DMCAIXA.TLanCaixa.SQL.Clear;
        DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA');
        DMCAIXA.TLanCaixa.SQL.Add('where (lancaixa.tipogerador='+#39+'ORDEMTRO'+#39+') AND (lancaixa.cod_gerador =:CODLANCA)');
        DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString:=DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
        DMCAIXA.TLanCaixa.Open;
        DMCAIXA.TLanCaixa.First;

        //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
        IF DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption= false
        THEN BEGIN //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
            LanCaixa(-1, DateToStr(Date()), DMCAIXA.TLanCaixa.fieldByName('COD_PLNCTAFIL').AsInteger, 'Cancel. fech. Ped. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'ORDEMTROEST', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.TOrD.FieldByName('NUMERO').AsString, Date(), '1');
        end;    
        //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
        If DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption
        then begin
            while not DMCAIXA.TLanCaixa.Eof do
            begin
              DMCAIXA.TLanCaixa.Delete;
              DMCAIXA.TLanCaixa.ApplyUpdates;
            end;
        end;

		 MessageDlg('OS LANÇAMENTO EFETUADOS EM CHEQUE E A PRAZO NÃO SERÃO CANCELADOS', mtWarning, [mbOK], 0);
   End;
   Try
           DMCONTA.IBT.CommitRetaining;
           DMBANCO.IBT.CommitRetaining;
           DMCAIXA.IBT.CommitRetaining;
           MDO.Transac.CommitRetaining;
	Except
   End;
   //CANCELA FATURA DE PAGAMENTOS DE SERVIÇOS
   If CodPedido<>''
   Then Begin
   	//LANCAMENTOS EM CAIXA
   	DMMACS.TALX.Close;
   	DMMACS.TALX.SQL.Clear;
   	DMMACS.TALX.SQL.Add(' Select * from lancaixa where (lancaixa.tipogerador=''FATURA'') AND (lancaixa.cod_gerador=:CODIGO) ');
   	DMMACS.TALX.ParamByName('CODIGO').AsString:=CodPedido;
   	DMMACS.TALX.Open;
       DMMACS.TALX.First;
       While not DMMACS.TALX.Eof do
       Begin
           DMCAIXA.TAbCaixa.Close;
           DMCAIXA.TAbCaixa.SQL.Clear;
           DMCAIXA.TAbCaixa.SQL.Add('Select * from abcaixa where (abcaixa.cod_abcaixa=:codabcaixa)');
           DMCAIXA.TAbCaixa.ParamByName('codabcaixa').AsInteger:=DMMACS.TALX.FieldByName('cod_abcaixa').AsInteger;
           DMCAIXA.TAbCaixa.Open;
           If DMCAIXA.TAbCaixa.FieldByName('FECHADO').AsString='S'
           Then Begin
				MessageDlg('O Lançamento: '+DMMACS.TALX.FieldByName('historico').AsString+' não pode ser cancelado devido ao caixa estar fechado', mtWarning, [mbOK], 0);
           End
           Else Begin
				If FiltraTabela(DMCAIXA.TLanCaixa, 'lancaixa', 'cod_lanc', DMMACS.TALX.FieldByName('cod_lanc').AsString, '')
               Then Begin
                   DMCAIXA.TLanCaixa.Delete;
                   DMCAIXA.IBT.CommitRetaining;
               End;
           End;
           DMMACS.TALX.next;
       End;
       //LANCAMENTOS EM CONTAS A PAGAR
   	DMMACS.TALX.Close;
   	DMMACS.TALX.SQL.Clear;
   	DMMACS.TALX.SQL.Add(' Select parcelacp.cod_parcelacp from parcelacp ');
   	DMMACS.TALX.SQL.Add(' Left Join ctapagar on parcelacp.cod_ctapagar = ctapagar.cod_ctapagar ');
   	DMMACS.TALX.SQL.Add(' Where (ctapagar.tipogerador=''FATURA'') and (ctapagar.cod_gerador=:codigogerador) and (parcelacp.fech=''N'') ');
   	DMMACS.TALX.ParamByName('codigogerador').AsString:=CodPedido;
   	DMMACS.TALX.Open;
       DMMACS.TALX.First;
       While not DMMACS.TALX.Eof do
       Begin
           If FiltraTabela(DMCONTA.TParcCP, 'parcelacp', 'cod_parcelacp', DMMACS.TALX.FieldByName('cod_parcelacp').AsString, '')
           Then Begin
               DMCONTA.TParcCP.Delete;
               DMCONTA.IBT.CommitRetaining;
           End;
           DMMACS.TALX.next;
       End;
   End; 
end;

procedure TFOrdemPet.DBGridConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
	if (DMServ.WOrdemDesp.FieldByName('STATUS').AsString='ABERTO') OR (DMServ.WOrdemDesp.FieldByName('FISCO').AsString='NFE2') then
   begin
   	DBGridConsulta.Canvas.Font.Color := clRed;
       DBGridConsulta.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
end;

procedure TFOrdemPet.EdAnimalEnter(Sender: TObject);
begin
  inherited;
       if EdAnimal.Text = 'Animal' then
   	    EdAnimal.Text := '';
end;

procedure TFOrdemPet.EdRacaEnter(Sender: TObject);
begin
  inherited;
       if EdRaca.Text = 'RAÇA' then
   	    EdRaca.Text := '';
end;

procedure TFOrdemPet.EDClienteEnter(Sender: TObject);
begin
  inherited;
       if EDCliente.Text = 'CLIENTE' then
   	    EDCliente.Text := '';
end;

procedure TFOrdemPet.EDNumEnter(Sender: TObject);
begin
  inherited;
       if EdNum.Text = 'Número' then
   	    EdNum.Text := '';
end;

procedure TFOrdemPet.EDNumExit(Sender: TObject);
begin
  inherited;
       if Trim(EdNum.Text) = '' then
           EDNum.Text := 'Número';
end;

procedure TFOrdemPet.EdAnimalExit(Sender: TObject);
begin
  inherited;
       if Trim(EdAnimal.Text) = '' then
         EdAnimal.Text := 'Animal';
end;

procedure TFOrdemPet.EdRacaExit(Sender: TObject);
begin
  inherited;
       if Trim(EdRaca.Text) = '' then
         EdRaca.Text := 'Raça';
end;

procedure TFOrdemPet.EDClienteExit(Sender: TObject);
begin
  inherited;
       if Trim(EDCliente.Text) = '' then
         EDCliente.Text := 'Cliente';
end;

procedure TFOrdemPet.EDClienteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
       If Key=#13
       Then Begin
           If (EDCliente.Text<>'') and (EDCliente.Text<>'CLIENTE')
           Then Begin
               FiltraOrdem('(vwordem.cliente like upper('+#39+'%'+EDCliente.Text+'%'+#39+'))');
           End;
       End;
       If Key=#27
       Then Begin
           FiltraOrdem('');
       End;
end;

procedure TFOrdemPet.EdAnimalKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
       If Key=#13
       Then Begin
           If (EdAnimal.Text<>'') and (EdAnimal.Text<>'Animal')
           Then Begin
               FiltraOrdem('(equipamento.descricao like upper('+#39+'%'+EdAnimal.Text+'%'+#39+'))');
           End;
       End;
       If Key=#27
       Then Begin
           FiltraOrdem('');
       End;
end;

procedure TFOrdemPet.EdRacaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
       If Key=#13
       Then Begin
           If (EdRaca.Text<>'') and (EdRaca.Text<>'RAÇA')
           Then Begin
               FiltraOrdem('(equipamento.modelo like upper('+#39+'%'+EdRaca.Text+'%'+#39+'))');
           End;
       End;
       If Key=#27
       Then Begin
           FiltraOrdem('');
       End;
end;

procedure TFOrdemPet.EDNumKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
       If Key=#13
       Then Begin
           If (EDNum.Text<>'') and (EDNum.Text<>'Número')
           Then Begin
               FiltraOrdem('(vwordem.numero like '+#39+'%'+EDNum.Text+#39+')');
           End;
       End;
       If Key=#27
       Then Begin
           FiltraOrdem('');
       End;
end;

//Paulo 24/06/2011: Retorna o dia da semana por extenso
function TFOrdemPet.DiaSemana(Data: string): string;
begin

   Try
       //Retorna um número inteiro que representa o dia da semana
       xdata := IntToStr(DayOfWeek(StrToDateTime(Data)));

       Case StrToInt(XDATA) of
           1 : Result := 'Domingo';
           2 : Result := 'Segunda-Feira';
           3 : Result := 'Terça-Feira';
           4 : Result := 'Quarta-Feira';
           5 : Result := 'Quinta-Feira';
           6 : Result := 'Sexta-Feira';
           7 : Result := 'Sábado';
       End;
    Except
        xdata := '0';
        Result := '';
    End;
end;

procedure TFOrdemPet.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   	If Key=VK_ESCAPE
       Then Begin
       	If PParticularidadesAnimal.Visible=True Then
           	BtnParticularidadesAnimal.SetFocus;
       	If PParticularidadesCliente.Visible=True Then
           	BtnParticularidadesCliente.SetFocus;

           PParticularidadesAnimal.Visible:=False;
           PParticularidadesCliente.Visible:=False;           
       End;
       If PConsulta.Visible=True
       Then Begin
           if (Key = VK_Down) Then
               dmserv.WOrdemDesp.Next;
           if (Key = VK_Up) Then
               dmserv.WOrdemDesp.Prior;
       End;

       //botão GRAVAR
        If Key=vk_f5 Then
            if PCadastro.Visible then
               BtnGravar.Click;

        //botão CANCELAR
        If Key=vk_f7 Then
            if PCadastro.Visible then
               BtnCancelar.Click;

       if (Key = VK_F9) AND (PConsulta.Visible) then
           BtnSelecionar.Click;

       // CTRL + D -> eh o comando para desbloquear a ordem de servico caso tenha ocorrido algum problema
       // qdo estava sendo consultada e caiu energia, ou foi pressionado F4 (por exemplo) e nao passou pelo
       // botão GRAVAR ou CANCELAR que liberar a ordem
       If (shift=[ssCtrl]) and (key = 68)
       Then Begin
           // faz o filtro na tabela para verificar se ela esta realmente bloqueada
           FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM', dmserv.WOrdemDesp.FieldByname('cod_ordem').AsString,'');
           // se ela nao estiver bloqueada eh exibida a msg e finalizada a operação
           If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
           Then Begin
               If Mensagem('   A T E N Ç Ã O   ','Deseja desbloquear a Ordem nº ' + dmserv.WOrdemDesp.FieldByName('numero').AsString + ' ?','',2,3,false,'A')=2
               Then Begin
                   // abre formulario de senha
                   AbrirForm(TFSenha,FSenha,0);
                   // caso tenha informado os dados do administrador correto, a OS eh liberada
                   If XAlxResult = true
                   Then Begin
                       // liberando a ordem para consulta
                       DMServ.TOrd.Edit;
                       DMServ.TOrd.FieldByName('EDIT').AsString := '0';
                       DMServ.TOrd.Post;
                       DMServ.TOrd.ApplyUpdates;
                       DMServ.IBT.CommitRetaining;
                   End;
               End;
           End;
       End;
       //controle de botões
       //botão novo
       If Key=vk_f4 Then
           if PConsulta.Visible then
               BtnNovo.Click;

       //botão apagar
       If Key=vk_f8 Then
           if PConsulta.Visible then
               BtnApagar.Click;

        //botão consultar
        If Key=vk_f6 Then
            if PConsulta.Visible then
               BtnConsultar.Click;

        //FOCUS EM LOCALIZAR
        If Key=vk_f2 Then
            if PConsulta.Visible
            then BEGIN
               FiltraOrdem('');
               EDNum.SetFocus;
            END;
       inherited;
end;

procedure TFOrdemPet.EDQtdServExit(Sender: TObject);
begin
  inherited;
       If (EDQtdServ.ValueNumeric<>0) And (EDVlrUnitServ.ValueNumeric<>0)
       Then Begin
           CalcPercent(EdDescServ.ValueNumeric, 0, (EDQtdServ.ValueNumeric*EDVlrUnitServ.ValueNumeric), 'D');
           EdVlrtotalServ.ValueNumeric:=AlxCalculo;
       End;
end;

procedure TFOrdemPet.EdDescServChange(Sender: TObject);
begin
  inherited;
     If (EDQtdServ.ValueNumeric<>0) And (EDVlrUnitServ.ValueNumeric<>0)
     Then Begin
         CalcPercent(EdDescServ.ValueNumeric, 0, (EDQtdServ.ValueNumeric*EDVlrUnitServ.ValueNumeric), 'D');
         EdVlrtotalServ.ValueNumeric:=AlxCalculo;
     End;
end;

procedure TFOrdemPet.EdVlrtotalServExit(Sender: TObject);
begin
  inherited;
       CalcPercent(0, (EDQtdServ.ValueNumeric*EDVlrUnitServ.ValueNumeric)- EdVlrtotalServ.ValueNumeric, (EDQtdServ.ValueNumeric*EDVlrUnitServ.ValueNumeric), 'D');
       EdDescServ.ValueNumeric:=AlxPercento;
end;

procedure TFOrdemPet.BitBtn2Click(Sender: TObject);
begin
  inherited;
  		//Valida se foi encontrado algum produto
       If LProduto.Caption=''
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'Não existe produto a ser adicionado a lista de produtos.', '', 1, 1, False, 'a');
           BtnProcProd.SetFocus;
           Exit;
       End;
       //Valida quanto a quantidade
       If EDQtdProd.ValueNumeric<=0
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com quantidade inferior ou igual a 0.', '', 1, 1, False, 'a');
           EDQtdProd.SetFocus;
           Exit;
       End;
       //Valida quanto ao valor unitario do produto
       If EDVlrUnitProd.ValueNumeric<=0
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com o valor unitario igual ou inferiro a 0.', '', 1, 1, False, 'a');
           EDVlrUnitProd.SetFocus;
           Exit;
       End;
       //Valida quanto ao valor total do produto
       If EdVlrtotalProd.ValueNumeric<=0
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com o valor total igual ou inferiro a 0.', '', 1, 1, False, 'a');
           EdVlrtotalProd.SetFocus;
           Exit;
       End;
       //Verifica se pode ser atualizado caso não haja estoque suficiente
       If (DMMacs.TLoja.FieldByName('VENDESTNEG').AsString='0') And (EDQtdProd.ValueNumeric>XESTPRODUTO)
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'Não existe estoque suficiente para suportar esta operação!', '', 1, 1, False, 'a');
           Exit;
           
       End;


       //Tenta gravar as informações
       Try
           XCOD_ITPROD:=InserReg(DMSERV.TpOrd, 'ITPRODORD', 'COD_ITPRODORD');
           DMSERV.TPOrd.FieldByName('COD_ITPRODORD').AsInteger:=XCOD_ITPROD;
           DMSERV.TPOrd.FieldByName('COD_ESTOQUE').AsInteger:= XCOD_PRODUTO;
           DMSERV.TPOrd.FieldByName('COD_ORDEM').AsInteger := XCOD_ORDEM;

           // seleciona todos os dados de subproduto que tenha o mesmo cod_subprod que a tabela estoque
           DMServ.TAlx1.Close;
           DMServ.TAlx1.SQL.Clear;
           DMServ.TAlx1.SQL.Add(' select estoque.cod_estoque, estoque.cod_subprod, subproduto.cod_subproduto, ');
           DMServ.TAlx1.SQL.Add(' subproduto.cod_cst, subproduto.quantgarantia, subproduto.tipogarantia ');
           DMServ.TAlx1.SQL.Add(' from estoque left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
           DMServ.TAlx1.SQL.Add(' where estoque.cod_estoque = :codigo ');
           DMServ.TAlx1.ParamByName('codigo').AsInteger := DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
           DMServ.TAlx1.Open;

           DMSERV.TPOrd.FieldByName('QTD').Value := EDQtdProd.ValueNumeric;;
           DMSERV.TPOrd.FieldByName('OPERACAO').AsString := 'VND';
           DMSERV.TPOrd.FieldByName('DESCONTO').Value := EdDescProd.ValueNumeric;
           DMSERV.TPOrd.FieldByName('VLRUNIT').Value := EDVlrUnitProd.ValueNumeric;
           DMSERV.TPOrd.FieldByName('TOTAL').Value := EdVlrtotalProd.ValueNumeric;
           DMSERV.TPOrd.FieldByName('COD_FUNCIONARIO').AsInteger := XCOD_VENDEDOR;
           DMSERV.TPOrd.FieldByName('DATA').AsDateTime := Date();
           DMSERV.TPOrd.FieldByName('VALCUSTO').Value := EdVlrCustoProd.ValueNumeric;
           DMSERV.TPOrd.FieldByName('VALREP').Value := DMESTOQUE.TEstoque.FieldByName('VALREP').Value;
           DMSERV.TPOrd.FieldByName('COEFDIV').Value := DMESTOQUE.TEstoque.FieldByName('COEFDIV').Value;
           DMSERV.TPOrd.FieldByName('VALCOMP').Value := DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').Value*EDQtdProd.ValueNumeric;
           DMSERV.TPOrd.FieldByName('COD_CST').AsInteger := DMServ.TAlx1.FieldByName('COD_CST').AsInteger;

           CalcLuc(EdVlrtotalProd.ValueNumeric, EdDescProd.ValueNumeric, EDQtdProd.ValueNumeric);

           If DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency <> 0
           Then Begin
                DMSERV.TPOrd.FieldByName('LUCMOE').AsCurrency := (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency/DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency);  
                If (EdVlrtotalProd.ValueNumeric <> 0)
                Then Begin
                     DMSERV.TPOrd.FieldByName('LUCMOE').AsCurrency := EdVlrtotalProd.ValueNumeric - (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency);
                     DMSERV.TPOrd.FieldByName('LUCPER').AsCurrency := ((EdVlrtotalProd.ValueNumeric - (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency)) * 100) / EdVlrtotalProd.ValueNumeric;
                End;
           End
           Else Begin
                DMSERV.TPOrd.FieldByName('LUCMOE').AsCurrency := 0;
           End;

           DMSERV.TPOrd.FieldByName('ALIQICMS').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency;
           DMSERV.TPOrd.FieldByName('BASEICMS').AsCurrency:=EdVlrtotalProd.ValueNumeric;
           DMSERV.TPOrd.FieldByName('VLRICMS').AsCurrency:=(EdVlrtotalProd.ValueNumeric*DMSERV.TPOrd.FieldByName('ALIQICMS').AsCurrency)/100;

          // filtra estoque para buscar os valores das porcentagens das comissoes
          FiltraTabela(DMESTOQUE.Alx4,'ESTOQUE','COD_ESTOQUE',DMSERV.TPOrd.FieldByName('COD_ESTOQUE').AsString,'');
          XCOD_ULTPROD := DMSERV.TPOrd.FieldByName('COD_ESTOQUE').AsInteger;

          If XCOD_VENDEDOR > 0
          Then Begin
               // se na loja esta configurado p buscar do funcionario
               If (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
               Then Begin
                   // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
                   FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',IntToStr(XCOD_VENDEDOR),'');

                   DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO

                   //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                   DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency:=(EdVlrtotalProd.ValueNumeric*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
               End
               Else Begin
                   //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                   DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (EdVlrtotalProd.ValueNumeric * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) /100;
               End;
           end;

           DMSERV.TPOrd.Post;
           DMSERV.IBT.CommitRetaining;
           BtnProcProd.SetFocus;
       Except
           DMSERV.IBT.RollbackRetaining;
       End;
       FiltraSlave;
       LimpaCamposProd;
       BtnProcProd.SetFocus;
end;

//Paulo 28/06/2011: Limpa Campos de Produtos
procedure TFOrdemPet.LimpaCamposProd;
begin
   XCOD_PRODUTO:=-1;
   XESTPRODUTO:=-1;
   EdEstFisicoProduto.ValueNumeric:=0;
   EdCodigo.Text:='';
   EdVlrCustoProd.ValueNumeric:=0;
   EDQtdProd.Text:='';
   EDVlrUnitProd.ValueNumeric:=0;
   EdDescProd.ValueNumeric:=0;
   EdVlrtotalProd.ValueNumeric:=0;
   LProduto.Caption:='Selecione o Serviço';
end;

procedure TFOrdemPet.EDQtdProdExit(Sender: TObject);
begin
  inherited;
       If (EDQtdProd.ValueNumeric<>0) And (EDVlrUnitProd.ValueNumeric<>0)
       Then Begin
           CalcPercent(EdDescProd.ValueNumeric, 0, (EDQtdProd.ValueNumeric*EDVlrUnitProd.ValueNumeric), 'D');
           EdVlrtotalProd.ValueNumeric:=AlxCalculo;
       End;
end;

procedure TFOrdemPet.EdDescProdChange(Sender: TObject);
begin
  inherited;
       If (EDQtdProd.ValueNumeric<>0) And (EDVlrUnitProd.ValueNumeric<>0)
       Then Begin
           CalcPercent(EdDescProd.ValueNumeric, 0, (EDQtdProd.ValueNumeric*EDVlrUnitProd.ValueNumeric), 'D');
           EdVlrtotalProd.ValueNumeric:=AlxCalculo;
       End;
end;

procedure TFOrdemPet.EdVlrtotalProdExit(Sender: TObject);
begin
  inherited;
       CalcPercent(0, (EDQtdProd.ValueNumeric*EDVlrUnitProd.ValueNumeric)- EdVlrtotalProd.ValueNumeric, (EDQtdProd.ValueNumeric*EDVlrUnitProd.ValueNumeric), 'D');
       EdDescProd.ValueNumeric:=AlxPercento;
end;

procedure TFOrdemPet.BtnDeleteProdClick(Sender: TObject);
begin
  inherited;
     //Paulo 28/06/2011: Deleta o PRODUTO da grid
     If DMESTOQUE.TSlave.RecordCount<>0
     Then Begin//caso a tabela esteja vasia não pode apagar
         //LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
         FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
         FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
         FiltraTabela(DMSERV.TPOrd, 'ITPRODORD', 'COD_ITPRODORD', DMESTOQUE.TSlave.FieldByName('COD_ITPRODORD').AsString, '');

         // filtra estoque para buscar os valores das porcentagens das comissoes
         FiltraTabela(DMESTOQUE.Alx4,'ESTOQUE','COD_ESTOQUE',DMSERV.TPOrd.FieldByName('COD_ESTOQUE').AsString,'');
         XCOD_ULTPROD := DMSERV.TPOrd.FieldByName('COD_ESTOQUE').AsInteger;

         //APAGA ITEM
         //DMSERV.TPOrd.Delete;
         //If DMSERV.TPOrd.UpdatesPending Then
         //    DMSERV.TPOrd.ApplyUpdates;
         DMServ.TAlx1.Close;
         DMServ.TAlx1.SQL.Clear;
         DMServ.TAlx1.SQL.Add('delete from itprodord where itprodord.cod_itprodord = :CODIGO');
         DMServ.TAlx1.ParamByName('CODIGO').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ITPRODORD').AsInteger;
         DMServ.TAlx1.ExecSQL;


         //CONFIRMA TRANZAÇÃO
         Try
            DMServ.IBT.CommitRetaining;

         Except
            DMServ.IBT.RollbackRetaining;
          
         End;

         //VOLTA VALORES AS LABELS
         EscreveLabelsPROD;
         EDQtdProd.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('QTD').Value;
         EDVlrUnitProd.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VLRUNIT').Value;
         EdDescProd.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('DESCONTO').Value;
         EdVlrtotalProd.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('TOTAL').Value;
         //Filtra registros escrsavos
         FiltraSlave;

     End;
end;
                                        
procedure TFOrdemPet.BtnProcProdClick(Sender: TObject);
begin
  inherited;
       //Paulo 28/06/2011: abre formulario de produto para seleção
       If AbrirForm(TFProduto, FProduto, 1)='Selected'
       Then Begin
           //Depois de selecionado escreve nas labels o produto
           EscreveLabelsPROD;

       End
       Else Begin
           LimpaCamposProd;
           LProduto.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
end;

//Paulo 28/06/2011: Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
Procedure TFOrdemPet.EscreveLabelsPROD;
Begin
   //Filtra tabela de subproduto de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '')=False Then
		Exit;

   //Filtra tabela de estoque de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString, '')=False Then
   	Exit;

   // por questao de garantia o codigo de estoque do produto selecionado esta sendo atribuido á variavel pois jah que ela naum eh usada em nenhum outro momento, nao tem a possibilidade de ter seu valor alterado
   XCOD_PRODUTO := DMEstoque.TEstoque.FieldByName('COD_ESTOQUE').AsInteger;
   XESTPRODUTO := DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency;
	EdEstFisicoProduto.ValueNumeric:=XESTPRODUTO;
   
   EDVlrUnitProd.ValueNumeric := DMEstoque.TEstoque.FieldByName('VENDVARV').AsCurrency;
   //EdCodigo.Text := DMEstoque.TSubProd.FieldByName('CONTRINT').AsString;
   LProduto.Caption:=DMEstoque.TSubProd.FieldByName('DESCRICAO').AsString;
   EdVlrCustoProd.ValueNumeric:=DMEstoque.TEstoque.FieldByName('VALCUSTO').AsCurrency; 
End;

procedure TFOrdemPet.EdDescTProdExit(Sender: TObject);
begin
  inherited;
      //Paulo 29/06/2011: CALCULA VALOR DA COMISSAO APOS EFETUAR DESCONTO NOS PRODUTOS DA ORDEM DE SERVICÇO
      if (EdtotalProd.ValueNumeric = 0) and (EdDescTProd.ValueNumeric <> 0)
      then begin
           Mensagem('A T E N Ç Ã O !', 'Não há produtos na Ordem para conceder desconto.', '', 1, 1, False, 'a');
           EdDescTProd.ValueNumeric := 0;
           Exit;
      end;
      CalcPercentProd;
      EfetuaDesconto('PRODUTO', 'PERCENTO');
end;

//Paulo 29/06/2011:Quando eh informado o valor de desconto do total dos produtos em "%" eh efetuado calculo para cada produto da ordem
Procedure TFOrdemPet.CalcPercentProd;
begin
     
     // busca todos os produtos relacionados á ordem
     FiltraTabela(DMServ.TPOrd,'ITPRODORD','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

     If Not DMServ.TPOrd.IsEmpty
     Then Begin
         DMServ.TPOrd.First;
         XVLRCOMIS := 0;

         While Not DMServ.TPOrd.Eof do
         Begin
             DMServ.TPOrd.Edit;

             //DMSERV.TPOrd.FieldByName('TOTAL').AsCurrency := (DMSERV.TPOrd.FieldByName('TOTAL').AsCurrency - (DMSERV.TPOrd.FieldByName('TOTAL').AsCurrency * (StrToFloat(EdDescTProd.Text)/100)));

             If XCOD_VENDEDOR > 0
             Then Begin
                 DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency - (DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency * (StrToFloat(EdDescTProd.Text)/100)));
                 //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                 XVLRCOMIS := XVLRCOMIS + DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency;
             end;
             DMServ.TPOrd.Post;
         // proximo produto
         DMServ.TPOrd.Next;
         End;
       end;
       If XCOD_VENDEDOR > 0
       Then Begin
           // filtra servicos da ordem de servico
           DMServ.Alx.Close;
           DMServ.Alx.SQL.Clear;
           DMServ.Alx.SQL.Add('select sum(itservord.comissao) as TOTAL_SERV from itservord');
           DMServ.Alx.SQL.Add('where itservord.cod_ordem = :codigo');
           DMServ.Alx.ParamByName('codigo').AsInteger := XCOD_ORDEM;
           DMServ.Alx.Open;

           XVLRCOMIS := XVLRCOMIS + DMServ.Alx.FieldByName('TOTAL_SERV').AsCurrency;

           
       end;

end;

//Paulo 29/06/2011: Função Para calcular desconto da ordem
Function TFOrdemPet.EfetuaDesconto(OrigemDesconto: String; TipoDesconto: String): Boolean;
Begin
	//se nao tiver nenhum desconto zerar o desconto de produto
   If DMESTOQUE.TSlave.IsEmpty Then
		EdDescTProd.ValueNumeric := 0;

   //se nao tiver nenhum desconto zerar o desconto de serviço
   If DMESTOQUE.TSlaveServ.IsEmpty Then
        EdDescTServ.ValueNumeric := 0;

	//CALCULA DESCONTOS
   //SERVICOS
	If (OrigemDesconto='SERVICO') or (OrigemDesconto='GERAL')
   Then Begin
   	IF XVLRTSERV<>0
       Then Begin
           //Efetua desconto somente para serviços
           If TipoDesconto='PERCENTO'
           Then Begin
               EdTotalserv.ValueNumeric:=XVLRTSERV-(EdDescTServ.ValueNumeric*XVLRTSERV)/100
           End
           Else Begin
               EdDescTServ.ValueNumeric:=((XVLRTSERV-EdTotalserv.ValueNumeric)*100)/XVLRTSERV;
           End;
       End
       Else Begin
           EdDescTServ.ValueNumeric:=0;
			EdTotalserv.ValueNumeric:=0;
       End
   End;
   //PRODUTOS
	If (OrigemDesconto='PRODUTO') or (OrigemDesconto='GERAL')
   Then Begin
   	If XVLRTPROD<>0
       Then Begin
           //Efetua desconto somente para serviços
           If TipoDesconto='PERCENTO' Then
               EdtotalProd.ValueNumeric:=XVLRTPROD-(EdDescTProd.ValueNumeric*XVLRTPROD)/100
           Else
               EdDescTProd.ValueNumeric:=((XVLRTPROD-EdtotalProd.ValueNumeric)*100)/XVLRTPROD;
       End
       Else Begin
			EdtotalProd.ValueNumeric:=0;
			EdDescTProd.ValueNumeric:=0
       End;
   End;

   //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
   EdValorTotal.ValueNumeric:=EdTotalserv.ValueNumeric+EdtotalProd.ValueNumeric;
	EdTotalOrd.ValueNumeric:=EdValorTotal.ValueNumeric;
	EdDescTOrdem.ValueNumeric:=((XVLRTOTAL-EdValorTotal.ValueNumeric)*100)/XVLRTOTAL;

End;

procedure TFOrdemPet.EdtotalProdExit(Sender: TObject);
begin
  inherited;
       If XVLRTPROD<>EdtotalProd.ValueNumeric
       Then Begin
           CalcPercent(0, XVLRTPROD-EdtotalProd.ValueNumeric, XVLRTPROD , 'D');
           DMServ.TOrd.edit;
           DMServ.TOrd.FieldByName('DESCPROD').AsCurrency:=AlxPercento;
           EdDescTProd.ValueNumeric:=AlxPercento;
       End
       Else Begin
           //FiltraSlave;

           DMServ.TOrd.edit;
           DMServ.TOrd.FieldByName('DESCPROD').AsCurrency:=0;
           EdtotalProd.ValueNumeric:=XVLRTPROD;
           EdDescTProd.ValueNumeric:=0;
       End;
       //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
       EdValorTotal.ValueNumeric:=EdTotalserv.ValueNumeric+EdtotalProd.ValueNumeric;
       EdTotalOrd.ValueNumeric:=EdValorTotal.ValueNumeric;
       CalcPercent(0, (XVLRTPROD+XVLRTSERV) - (EdtotalProd.ValueNumeric+EdTotalserv.ValueNumeric), (XVLRTPROD+XVLRTSERV) , 'D');
       EdDescTOrdem.ValueNumeric:=AlxPercento;
       CalcComisTotVend;
end;

//Paulo 29/06/2011: FUNÇÃO QUE EFETUA CALCULO DE COMISSÃO BASEADO NO VALOR TOTAL DO PEDIDO E NÃO NA SOMA DO TOTAL DE PRODUTOS
Function TFOrdemPet.CalcComisTotVend: Boolean;
Begin
   //VERIFICA SE EXISTE ALGUM COMISSIONADO PARA A ORDEM
   DMFINANC.TAlx.Close;
   DMFINANC.TAlx.SQL.Clear;
   DMFINANC.TAlx.SQL.Add(' Select *  from comissao ');
   DMFINANC.TAlx.SQL.Add(' Where (comissao.gerador=:GERADOR) AND (comissao.cod_gerador=:CODGERADOR) ');
	DMFINANC.TAlx.ParamByName('GERADOR').AsString:='ORDEM';
	DMFINANC.TAlx.ParamByName('CODGERADOR').AsInteger:=XCOD_ORDEM;
   DMFINANC.TAlx.Open;

   DMFINANC.TSlctComis.Close;
   DMFINANC.TSlctComis.SQL.Clear;
   DMFINANC.TSlctComis.SQL.Add(' Select SUM(comissao.perprod) as PERPROD, SUM(comissao.vlrcomisprod) AS COMISPROD, ');
   DMFINANC.TSlctComis.SQL.Add('        SUM(comissao.perserv) as PERSERV, SUM(comissao.vlrcomisserv) AS COMISSERV ');
   DMFINANC.TSlctComis.SQL.Add(' from comissao ');
   DMFINANC.TSlctComis.SQL.Add(' Where (comissao.gerador=:GERADOR) AND (comissao.cod_gerador=:CODGERADOR) ');
	DMFINANC.TSlctComis.ParamByName('GERADOR').AsString:='ORDEM';
	DMFINANC.TSlctComis.ParamByName('CODGERADOR').AsInteger:=XCOD_ORDEM;
   DMFINANC.TSlctComis.Open;
   XVLRCOMIS:=DMFINANC.TSlctComis.FieldByName('COMISPROD').AsCurrency+DMFINANC.TSlctComis.FieldByName('COMISSERV').AsCurrency;;
   If (DMFINANC.TAlx.IsEmpty)
   Then Begin
       If XCOD_FUNCIONARIO > 0
       Then Begin
           FiltraTabela(DMServ.TPOrd,'ITPRODORD','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

           DMServ.TPOrd.First;

           //se a tabela estiver vazia significa que não existe comissionado
           If XVLRTOTAL<>0
           Then Begin
               While Not DMServ.TPOrd.Eof Do
               Begin

                   // filtra estoque para buscar os valores das porcentagens das comissoes
                   FiltraTabela(DMESTOQUE.Alx4,'ESTOQUE','COD_ESTOQUE',DMServ.TPOrd.FieldByname('cod_estoque').AsString,'');

                       // se na loja esta configurado p buscar preço somente a prazo
                       If DMMACS.TLoja.FieldByName('TIPOVENDA').AsString = '1'
                       Then Begin
                           // se na loja esta configurado p buscar do funcionario
                           If (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
                           Then Begin
                               // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
                               FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',IntToStr(XCOD_VENDEDOR),'');

                               DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO

                               //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                               XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
                           End
                           Else Begin
                               //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                               XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) /100;
                           End;
                       End
                       Else Begin
                           // se na loja esta configurado p buscar do funcionario
                           If (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
                           Then Begin
                               // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
                               FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',IntToStr(XCOD_VENDEDOR),'');

                               DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO

                               XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;

                           End
                           Else Begin

                               XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) /100;

                           End;
                       End;
               // proximo item da ordem de serviço
               DMServ.TPOrd.Next;
               End;

               // TODOS OS SERVIÇOS DA ORDEM
               FiltraTabela(DMServ.TSOrd,'ITSERVORD','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

               DMServ.TSOrd.First;

               // PERCORRE TODOS OS SERVIÇOS DA ORDEM DE SERVIÇO
               While not DMServ.TSOrd.Eof do
               Begin

                   // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
                   If FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',IntToStr(XCOD_VENDEDOR),'') = true
                   Then Begin
                       DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO

                       XVLRCOMIS := XVLRCOMIS + ((DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency) * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVSER').AsCurrency)/100;

                   End;
               // proximo serviço
               DMServ.TSOrd.Next;
               End;
           End
           Else Begin
               XVLRCOMIS:=0;
           End;
       End;
   End;
	

End;

procedure TFOrdemPet.EdDescTServExit(Sender: TObject);
begin
  inherited;
       if (EdTotalserv.ValueNumeric = 0) and (EdDescTServ.ValueNumeric <> 0)
        then begin
             Mensagem('A T E N Ç Ã O !', 'Não há serviços na ordem para conceder desconto!', '', 1, 1, False, 'a');
             EdDescTServ.ValueNumeric := 0;
             Exit;
        end;

        EfetuaDesconto('SERVICO', 'PERCENTO');
end;

procedure TFOrdemPet.EdTotalservExit(Sender: TObject);
begin
  inherited;
       If XVLRTSERV<>EdTotalserv.ValueNumeric
       Then Begin
           CalcPercent(0, XVLRTSERV-EdtotalServ.ValueNumeric, XVLRTSERV , 'D');
           DMServ.TOrd.edit;
           DMServ.TOrd.FieldByName('DESCSERV').AsCurrency:=AlxPercento;
           EdDescTServ.ValueNumeric:=AlxPercento;
       End
       Else Begin
           //FiltraSlave;
           DMServ.TOrd.edit;
           DMServ.TOrd.FieldByName('DESCSERV').AsCurrency:=0;
           EdtotalServ.ValueNumeric:=XVLRTSERV;
           EdDescTServ.ValueNumeric:=0;
       End;
       //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
       EdValorTotal.ValueNumeric:=EdTotalserv.ValueNumeric+EdtotalProd.ValueNumeric;
       EdTotalOrd.ValueNumeric:=EdValorTotal.ValueNumeric;
       CalcPercent(0, (XVLRTPROD+XVLRTSERV) - (EdtotalProd.ValueNumeric+EdTotalserv.ValueNumeric), (XVLRTPROD+XVLRTSERV) , 'D');
       EdDescTOrdem.ValueNumeric:=AlxPercento;
       CalcComisTotVend;
end;

procedure TFOrdemPet.BtnMoedaCancelarClick(Sender: TObject);
begin
  inherited;
       PFinanceiro.Visible:=False;
       PCadastro.Visible:=False;
       PConsulta.Visible:=true;
       PConsulta.BringToFront;

       TravarPaines(False);

       // BUSCANDO DADOS DA ORDEM
       FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString,'');

       // EDITANDO ORDEM DE SERVICO PARA LIBERAR SEU USO CASO SEJA NECESSARIO
       DMServ.TOrd.Edit;
       DMServ.TOrd.FieldByName('EDIT').AsString := '0';
       DMServ.TOrd.Post;
       DMServ.IBT.CommitRetaining;
end;

procedure TFOrdemPet.FrmContaServBTNOPENClick(Sender: TObject);
begin
  inherited;
  FrmContaServ.BTNOPENClick(Sender);

end;

//Paulo 17/08/2011: Emite o Relatório de ordem de petshop
procedure TFOrdemPet.ImpRel(Xtipo:String);
var
   XServicoDesc:String;
begin
       DMMACS.TLOJA.Edit;
       DMMACS.TLoja.FieldByName('TMP2').AsString:='';
       DMMACS.TLoja.Post;
       DMMACS.Transaction.CommitRetaining;
		FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

      //EFETUA CONTROLE DE ACESSO
       If ControlAccess('RELABERTORD', 'M')=False Then
  		    Exit;

       DMServ.TRel.Close;
       DMServ.TRel.SQL.Clear;
       DMServ.TRel.SQL.Add('select vwordem.status, vwordem.numero, equipamento.obs as PARTICULARIDADE, equipamento.descricao as animal,');
       DMServ.TRel.SQL.Add('equipamento.modelo as raca ,equipamento.cor, equipamento.obs as PARTICULARIDADE, vwordem.cliente, vwordem.cod_cliente, vwordem.dtabert,');
       DMServ.TRel.SQL.Add('vwordem.dtprev, vwordem.cod_ordem, vwordem.total,vwcliente.endereco, vwcliente.endnumero, vwfuncionario.nome as vendedor,');
       DMServ.TRel.SQL.Add('vwcliente.bairro, vwcliente.cod_interno AS CODCLI, vwcliente.cidade,vwcliente.telrel,vwcliente.cpfcnpj, ordem.fones as horaprev, ordem.observacao,');
       DMServ.TRel.SQL.Add('ordem.cdrecupera as tosaraca,ordem.documentos as tosacomp, ordem.desktop as tosahig,');
       DMServ.TRel.SQL.Add('ordem.emails as pataspoodle, ordem.outros as raspar, ordem.mouse as franja, ordem.teclado as unhas,');
       DMServ.TRel.SQL.Add('ordem.kitmm as perfume, ordem.cabos as laco, ordem.impressora as consulta');
       DMServ.TRel.SQL.Add('from vwordem');
       DMServ.TRel.SQL.Add('Left join vwcliente on vwordem.cod_cliente = vwcliente.cod_cliente');
       DMServ.TRel.SQL.Add('Left join vwfuncionario on vwordem.cod_vendedor = vwfuncionario.cod_func');
       DMServ.TRel.SQL.Add('left join equipamento on vwordem.cod_equipamento = equipamento.cod_equipamento');
       DMServ.TRel.SQL.Add('left join ordem on vwordem.cod_ordem = ordem.cod_ordem');
       DMServ.TRel.SQL.Add('where vwordem.cod_ordem = :ORDEM');
       DMServ.TRel.ParamByName('ORDEM').AsInteger:= DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
       DMServ.TRel.Open;

       //Paulo 12/07/2011: Seleciona os produtos da Ordem
       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMSERV.TAlx1.SQL.Add('select itprodord.cod_itprodord,itprodord.qtd, itprodord.vlrunit, itprodord.desconto, itprodord.total,');
       DMSERV.TAlx1.SQL.Add('itprodord.cod_estoque, estoque.cod_subprod, subproduto.descricao from itprodord');
       DMSERV.TAlx1.SQL.Add('left join estoque on itprodord.cod_estoque = estoque.cod_estoque');
       DMSERV.TAlx1.SQL.Add('left join subproduto on estoque.cod_subprod  = subproduto.cod_subproduto');
       DMSERV.TAlx1.SQL.Add('where itprodord.cod_ordem = :CODORDEM');
       DMServ.TAlx1.ParamByName('CODORDEM').AsInteger:=DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
       DMServ.TAlx1.Open;

       //Paulo 12/07/2011: Seleciona os SERVIÇOS da Ordem
       DMServ.TAlx2.Close;
       DMServ.TAlx2.SQL.Clear;
       DMSERV.TAlx2.SQL.Add('select itservord.qtd, itservord.cod_itservord, itservord.vlrunit, itservord.desconto, itservord.total,');
       DMSERV.TAlx2.SQL.Add('itservord.cod_servico,  subservico.descricao from itservord');
       DMSERV.TAlx2.SQL.Add('left join subservico on itservord.cod_servico = subservico.cod_subservico');
       DMSERV.TAlx2.SQL.Add('where itservord.cod_ordem = :CODORDEM');
       DMServ.TAlx2.ParamByName('CODORDEM').AsInteger:=DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
       DMServ.TAlx2.Open;

       //insere sql necessária para filtrar parcelas da conta
       DMMacs.TALX.Close;
       DMMacs.TALX.sql.Clear;
       DMMacs.TALX.SQL.Add('SELECT parcelacr.dtdebito, parcelacr.dtvenc,parcelacr.valorpg, parcelacr.cobranca, parcelacr.valor FROM parcelacr left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
       DMMacs.TALX.SQL.Add(' Where (ctareceber.tipogerador='+#39+'ORD'+#39+') And (ctareceber.cod_gerador=:CODGERADOR) ');
       DMMacs.TALX.ParamByName('CODGERADOR').AsInteger:=DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
       DMMacs.TALX.Open;

       //Assume parcelas em campo blob de loja para após ser passado em relatório
       DMMACS.TLoja.Edit;
       DMMACS.TLoja.FieldByName('TMP1').AsString:='';
       DMMACS.TLoja.Post;
       DMMACS.TALX.First;
       while not DMMACS.TALX.Eof do
       Begin
           DMMACS.TLoja.Edit;
           DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+DMMacs.TALX.FieldByName('dtvenc').AsString+'     /    '+DMMacs.TALX.FieldByName('cobranca').AsString+'     -    '+FormatFloat('0.00', DMMacs.TALX.FieldByName('valor').AsCurrency)+#13;
           DMMACS.TLoja.Post;
           DMMACS.TALX.Next;
       End;
       DMMACS.Transaction.CommitRetaining;
       
       FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdemPet.frf');

       FSRel.PrepareReport;
       FSRel.ShowReport;

end;

procedure TFOrdemPet.CompAberturaReduzida1Click(Sender: TObject);
begin
  inherited;
       ImpRel('REDUZIDO');
end;

procedure TFOrdemPet.CompAbertura1Click(Sender: TObject);
begin
  inherited;
       ImpRel('NORMAL');
end;

procedure TFOrdemPet.BtnApagarClick(Sender: TObject);
begin
  inherited;
   //EFETUA CONTROLE DE ACESSO
   If ControlAccess('EXCORD', 'M')=False Then
  		Exit;

   FiltraTabela(DMSERV.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '');

   if  DMSERV.TOrd.IsEmpty then begin
       Mensagem('    A T E N Ç Ã O   ','A ORDEM JÁ FOI REMOVIDA.','',1,1,false,'I');
       FiltraOrdem('');
       Exit;
   end;


   XCOD_ORDEM:=DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;

   // BUSCANDO DADOS DA ORDEM
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

   // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
   If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
   Then Begin
       Mensagem('    A T E N Ç Ã O   ','A ORDEM ESTÁ SENDO USADA NO MOMENTO.'+#13+'Use Ctrl+D para destravar','',1,1,false,'I');
       FiltraOrdem('');
       Exit;
   End
   Else Begin
       DMServ.TOrd.Edit;
       DMServ.TOrd.FieldByName('EDIT').AsString := '1';
       DMServ.TOrd.Post;
       DMServ.TOrd.ApplyUpdates;
       DMServ.IBT.CommitRetaining;
   End;

  	If (DMServ.WOrdemDesp.FieldByName('STATUS').AsString<>'TERMINADA') AND (DMServ.WOrdemDesp.FieldByName('STATUS').AsString<>'FECHADA')
   Then Begin //se passar pelas restrições de apagamento da ordem
		If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'DESEJA APAGAR A ORDEM DE SERVIÇO '+#13+'Nº '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
   	Then Begin

       	//Filtra registros do pedido
       	FiltraSlave;
           //VERIFICA SE EXISTEM ITENS NA ORDEM, ELA SOMENTE PODERÁ SER APAGADA SE ESTIVER SEM ITENS
			If (Not DMESTOQUE.TSlaveServ.IsEmpty) or (Not DMESTOQUE.TSlave.IsEmpty) 
       	Then Begin
				Mensagem('OPÇÃO BLOQUEADA', 'ANTES DE REMOVER ESTA ORDEM É NECESSÁRIO REMOVER TODOS OS PRODUTOS E SERVIÇOS DA ORDEM '+'Nº '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+'.', '', 1, 1, False, 'a');
               DMServ.TOrd.Edit;
               DMServ.TOrd.FieldByName('EDIT').AsString := '0';
               DMServ.TOrd.Post;
               DMServ.TOrd.ApplyUpdates;
               DMServ.IBT.CommitRetaining;
               FiltraOrdem('');
				Exit;
           End;

           //REGISTRA COMANDO DO USUARIO
           Try
               Registra('ORDEM', 'APAGAR/CANCELAR', DMServ.TOrd.FieldByName('DTABERT').AsString, 'Nº '+DMServ.TOrd.FieldByName('NUMERO').AsString, 'Valor: '+DMServ.TOrd.FieldByName('TOTORD').AsString);
           Except
           End;

			Try

	       		//Apaga ORDEM
				FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '');
				DMServ.TOrd.Delete;

          		//Confirma Tranzaçào
          		DMSERV.IBT.CommitRetaining;

          		//atualiza view
          		FiltraOrdem('');
			Except
          		//caso não conseguiu executar as tranzações acima retorna as informações anteriores
          		DMSERV.IBT.RollbackRetaining
       	End;
   	End
       Else Begin
           DMServ.TOrd.Edit;
           DMServ.TOrd.FieldByName('EDIT').AsString := '0';
           DMServ.TOrd.Post;
           DMServ.TOrd.ApplyUpdates;
           DMServ.IBT.CommitRetaining;
           FiltraOrdem('');
       End;
   End;

end;

procedure TFOrdemPet.FrmResponsavelEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
       If Key=vk_return
       Then Begin                
           If Key = VK_return
           Then Begin
               If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmResponsavel.EDCodigo.Text+#39)=True
               Then Begin//Paulo 20/10/20101: Seleciona funcionario
                   XCOD_VENDEDOR:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
                   FrmResponsavel.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
                   FrmResponsavel.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
               
               End
               Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
                   XCOD_VENDEDOR:=-1;
                   FrmResponsavel.EDCodigo.Text:='';
                   FrmResponsavel.EdDescricao.Text:='';
               End;
           End;
       End;
end;

procedure TFOrdemPet.RelatrioSinttico1Click(Sender: TObject);
begin
  inherited;
       //Paulo 25/10/2011: Imprimi relatório sintético
       If ControlAccess('RFINEST', 'M')=False Then
  	        Exit;
       FMenu.TIPOREL:='RELORDEM';
	    AbrirForm(TFRelOrdem, FRelOrdem, 0);
end;

procedure TFOrdemPet.RelatriodeServiosAgrupados1Click(Sender: TObject);
begin
  inherited;
   If ControlAccess('RFINEST', 'M')=False Then
  	    Exit;

	FMenu.TIPOREL:='SERVIÇOS';
	AbrirForm(TFRelServicosPet, FRelServicosPet, 0);
end;

procedure TFOrdemPet.EdCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
       //Edmar - 03/02/2015 - Alterado o metodo de pesquisa
       //agora é feito a pesquisa por diferente campos e diferentes tabelas
       If Key=VK_Return
       Then Begin
       	//controle interno
           if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'Upper(CONTRINT)', UpperCase(EdCodigo.Text), '') then
           begin
           	Label16.Caption := 'Ctrl. Interno:';
               EscreveLabelsPROD;
               Exit;
           end;

           //código do fabricante
           if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'Upper(CODFABRICANTE)', UpperCase(EdCodigo.Text), '') then
           begin
           	Label16.Caption := 'Cod. Fabricante:';
               EscreveLabelsPROD;
               Exit;
           end;

           //código de barra
           if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'Upper(CODBARRA)', UpperCase(EdCodigo.Text), '') then
           begin
           	Label16.Caption := 'Cod. Barra:';
               EscreveLabelsPROD;
               Exit;
           end;

           //codigo de barra da tabela codigobarra
           if FiltraTabela(DMEstoque.TCodBarra, 'CODIGOBARRA', 'Upper(CODBARRA)', UpperCase(EdCodigo.Text), '') then
           begin
           	//se achou o codigo de barra, busca seu produto
           	if FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMESTOQUE.TCodBarra.FieldByName('COD_ESTOQUE').AsString, '') then
               begin
           		Label16.Caption := 'Cod. Barra:';               
               	EscreveLabelsPROD;
                   Exit;
           	end;
           end;
           
           LimpaCamposProd;
           Label16.Caption := 'Código:';
           LProduto.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
end;

procedure TFOrdemPet.EdCodInternoServKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
       //Paulo 27/10/2011: Seleciona SERVIÇO pelo código
       If Key=VK_Return
       Then Begin
           if FiltraTabela(DMServ.WSubServ, 'VWSUBSERVICO', 'COD_INTERNO', EdCodInternoServ.Text, '')=True
           then begin
               EscreveLabelsSERV;
           end
           else begin
               LimpaCamposServ;
               LServico.Caption:='SERVIÇO NÃO ENCONTRADO';
           End;
           
       End;
end;

procedure TFOrdemPet.RelatriodeProdutosAgrupados1Click(Sender: TObject);
begin
  inherited;
   If ControlAccess('RFINEST', 'M')=False Then
  	    Exit;
   FMenu.TIPOREL:='PRODUTO';
	AbrirForm(TFRelServicosPet, FRelServicosPet, 0);
end;

procedure TFOrdemPet.RelatriodeProdutosporCliente1Click(Sender: TObject);
begin
  inherited;
       //Paulo 27/10/2011: emite relatório de produtos agrupados por clientes
       If ControlAccess('RFINEST', 'M')=False Then
  	        Exit;
       FMenu.TIPOREL:='RELOSPRODUTOCLIENTE';
	    AbrirForm(TFRelOrdem, FRelOrdem, 0);
end;

procedure TFOrdemPet.RelatriodeServiosporCliente1Click(Sender: TObject);
begin
  inherited;
       If ControlAccess('RFINEST', 'M')=False Then
  	        Exit;
      FMenu.TIPOREL:='RELOSSERVICOSCLIENTE';
      AbrirForm(TFRelOrdem, FRelOrdem, 0);
end;

procedure TFOrdemPet.FrmClienteEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
       If Key=vk_return
       Then Begin
           If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', FrmCliente.EDCodigo.Text, '') Then
               LocalizaCliente(DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger, 'CLIENTE');
       End;
end;

procedure TFOrdemPet.edDtFiltro02KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key=#13 Then
       FiltraOrdem('');
end;

procedure TFOrdemPet.EdDtFiltro01KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key=#13 Then
       FiltraOrdem('');
end;

procedure TFOrdemPet.btnApagarFiltroDataClick(Sender: TObject);
begin
  inherited;
   EdDtFiltro01.Clear;
   edDtFiltro02.Clear;
   FiltraOrdem('');
end;

procedure TFOrdemPet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	If PCadastro.Visible=true
   Then Begin
   	MessageDlg('Use o botão gravar ou cancelar!', mtWarning, [mbOK], 0);
       Action:=caNone;
       Exit;
   End;
  inherited;
	//ATUALIZA CONFIG DE XML
	//Grava as informações no arquivo de config
   If (EdDtFiltro01.Text<>'  /  /    ') and (EdDtFiltro02.Text<>'  /  /    ')
   Then Begin
       gravaconfigsusuario(-3, EdDtFiltro01.Text, EdDtFiltro02.Text);
   end
   Else Begin
       gravaconfigsusuario(-3, '', '');
   End;
end;

procedure TFOrdemPet.BtnParticularidadesAnimalClick(Sender: TObject);
begin
  inherited;
	If FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'cod_equipamento', IntToStr(XCOD_ANIMAL), '')=True then
       MParticularidadesAnimal.Lines.Text:=DMPESSOA.TEquip.FieldByName('OBS').AsString;
   PParticularidadesAnimal.Visible:=True;
   PParticularidadesAnimal.BringToFront;
   MParticularidadesAnimal.SetFocus;
end;

procedure TFOrdemPet.BitBtn3Click(Sender: TObject);
begin
  inherited;
	If FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'cod_equipamento', IntToStr(XCOD_ANIMAL), '')=True
   then Begin
       DMPESSOA.TEquip.Edit;
       DMPESSOA.TEquip.FieldByName('OBS').AsString:=MParticularidadesAnimal.Text;
       DMPESSOA.TEquip.Post;
       DMPESSOA.TransacPessoa.CommitRetaining;
   End;
   PParticularidadesAnimal.Visible:=False;
   BtnParticularidadesAnimal.SetFocus;
end;

procedure TFOrdemPet.BtnParticularidadesClienteClick(Sender: TObject);
begin
  inherited;
	If FiltraTabela(DMPESSOA.TCliente, 'cliente', 'cod_cliente', IntToStr(XCOD_CLIENTE), '')=True then
       MParticularidadesCliente.Lines.Text:=DMPESSOA.TCliente.FieldByName('INFOCOM').AsString;
   PParticularidadesCliente.Visible:=True;
   PParticularidadesCliente.BringToFront;
   MParticularidadesCliente.SetFocus;
end;

procedure TFOrdemPet.BitBtn1Click(Sender: TObject);
begin
  inherited;
	If FiltraTabela(DMPESSOA.TCliente, 'cliente', 'cod_cliente', IntToStr(XCOD_CLIENTE), '')=True
   then Begin
       DMPESSOA.TCliente.Edit;
       DMPESSOA.TCliente.FieldByName('INFOCOM').AsString:=MParticularidadesCliente.Text;
       DMPESSOA.TCliente.Post;
       DMPESSOA.TransacPessoa.CommitRetaining;
   End;
   PParticularidadesCliente.Visible:=False;
   BtnParticularidadesCliente.SetFocus;
end;

procedure TFOrdemPet.ComparativoProdEntradasXSadas1Click(Sender: TObject);
begin
  inherited;
       //Paulo 21/11/2011: Abre o relatório Comparativo Entradas X Saídas
       If ControlAccess('RFINEST', 'M')=False Then
  	        Exit;
       FMenu.TIPOREL:='ENTXSAIPET';
       AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

//Paulo 21/11/2011: verifica se o cliente não tem cta vencida
procedure TFOrdemPet.VerificaCtaVencida(codCliente:Integer);
begin
  inherited;
      DMCONTA.TAlx.Close;
      DMCONTA.TAlx.SQL.Clear;
      DMCONTA.TAlx.SQL.Add('Select parcelacr.fech, parcelacr.dtvenc From ParcelaCR');
      DMCONTA.TAlx.SQL.Add('left join ctareceber ON ctareceber.cod_ctareceber=Parcelacr.cod_ctareceber');
      DMCONTA.TAlx.SQL.Add('left Join Cliente on Cliente.Cod_Cliente=CtaReceber.COD_CLIENTE');
      DMCONTA.TAlx.SQL.Add('Where (parcelacr.fech <> '+#39+'S'+#39+') AND (parcelacr.dtvenc < :DATA) and (cliente.cod_cliente = :COD)');
      DMCONTA.TAlx.ParamByName('DATA').AsDate:=Date;
      DMCONTA.TAlx.ParamByName('COD').AsInteger:=codCliente;
      DMCONTA.TAlx.Open;

      if not(DMCONTA.TAlx.IsEmpty)then
      begin
          Mensagem('    A T E N Ç Ã O   ','O Cliente selecionado possui contas vencidas.','',1,1,false,'I');
      end;

end;

procedure TFOrdemPet.Relatr1Click(Sender: TObject);
begin
  inherited;
       If ControlAccess('RFINEST', 'M')=False Then
  	        Exit;
       FMenu.TIPOAUX:='CR';
       FMenu.TIPOREL:='RELCTARDOC_REC_PET';
       AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFOrdemPet.ControleDiaMesdeVendaseServicos1Click(
  Sender: TObject);
begin
  inherited;
   If ControlAccess('RFINEST', 'M')=False Then
  	    Exit;  
	FMenu.XTipoRel := 'CONTROLEDIAMESVENDSERV';
   xTipo := 'PET';
   AbrirForm(TFRelData, FRelData, 0);
end;


procedure TFOrdemPet.RelatriodePagamentosdeServios1Click(Sender: TObject);
begin
  inherited;
   If ControlAccess('RFINEST', 'M')=False Then
  	    Exit;
       FMenu.TIPOREL:='RELPAGSERV';
      AbrirForm(TFRelDATA, FRelDATA, 0); 
end;

function TFOrdemPet.AbreFiscal: Boolean;
begin
	Result := True;
	try
		FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');
    	AbrirForm(TFFiscalOrdem, FFiscalOrdem, 0);
	except
    	Result := False;
	end;
end;

procedure TFOrdemPet.Reen1Click(Sender: TObject);
begin
  inherited;
	PCadastro.SendToBack;
   PCadastro.Visible := False;
   //
	if DMServ.WOrdemDesp.FieldByName('STATUS').AsString = 'ABERTO' then
   begin
   	Mensagem('OPÇÃO BLOQUEADA', 'PARA EFETUAR A IMPRESSÃO FISCAL O PEDIDO DEVE ESTAR FECHADO.' + #13 + 'Antes de fechar confira todas as informações do pedido.', '', 1, 1, False, 'a');
       Exit;
   end;

	XCOD_ORDEM := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;

	if FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '') = True then
   begin
		if Mensagem('A T E N Ç Ã O', 'DESEJA IMPRIMIR O DOCUMENTO FISCAL PARA O PEDIDO:' + #13 + 'Nº ' + DMServ.WOrdemDesp.FieldByName('NUMERO').AsString + '?', '', 2, 3, False, 'c') = 2 then
       begin
       	FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');

           if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF')
           	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
       			OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
           			OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') then
           begin
           	DMServ.TFiscOrd.Close;
               DMServ.TFiscOrd.SQL.Clear;
               DMServ.TFiscOrd.SQL.Add(' Select * from docfisord where docfisord.cod_ordem=:Codigo ');
               DMServ.TFiscOrd.ParamByName('Codigo').AsInteger := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
               DMServ.TFiscOrd.Open;

               if not DMServ.TFiscOrd.IsEmpty then
               begin
               	if (DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger = 1) Or (DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger = 3) then
                   begin
                   	//Se Documento Fiscal Enviado ou Cancelado
                       MessageDlg('Esta O.S já gerou uma Nota Fiscal Eletrônica enviada e recebida pelo sefaz. Sendo assim não pode mais ser transmitida.', mtWarning, [mbOK], 0);
                       Exit;
                   end;
               end;

               //REIMPRIME NOTA FISCAL
               FMenu.TIPOREL := 'RNF';
               if MessageDlg('Impressora NF Pronta?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
               begin
                   XTipo := 'ORDEM';
               	FMenu.TIPOREL := 'NF';
                   AbreFiscal;
                   Registra('ORDEM DE SERVIÇO', 'NF', DMServ.WOrdemDesp.FieldByName('dtabert').AsString, 'Nº ' + DMServ.WOrdemDesp.FieldByName('NUMERO').AsString, 'Valor: ' + DMServ.WOrdemDesp.FieldByName('total').AsString);
               end;
           end;
           
			FiltraOrdem('');
       end;
	end;
end;

procedure TFOrdemPet.VisualizarDANFCe1Click(Sender: TObject);
begin
  inherited;
	FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
  	FMzrNfe.SetInFiscal('', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger, 0, 'ORDEM', '', 1, '', '', '', 0, 0, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  	FMzrNfe.DanfeVisualizar;
  	FMzrNfe := Nil;
end;

procedure TFOrdemPet.CancelarNFCe1Click(Sender: TObject);
begin
  inherited;
	if DMServ.WOrdemDesp.FieldByName('STATUS').AsString = 'CANCELADO' then
        MessageDlg('NFC-e já cancelada', mtWarning, [mbOK], 0)
   else
   begin
   	if DMServ.WOrdemDesp.FieldByName('numfiscal').AsString = '' then
       begin
       	MessageDlg('Documento fiscal da Ordem '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+' não foi emitido corretamente.', mtWarning, [mbOK], 0);
           Exit;
       end;
       
   	if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente cancelar a Nota Fiscal Eletrônica Nº ' + DMServ.WOrdemDesp.FieldByName('numfiscal').AsString + '?', '', 2, 3, False, 'c') = 2 then
		begin
       	if FiltraTabela(DMServ.TFiscOrd, 'DOCFISORD', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, ' AND (MODELONF = ''65'')') then
           	XEmiteNFCe := True
           else
           	XEmiteNFCe := False;
                          
       	FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
           FMzrNfe.SetInFiscal('', DMServ.WOrdemDesp.FieldByName('cod_ordem').AsInteger, DMServ.WOrdemDesp.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'CANCELAR', 1, '', '', '', DMServ.WOrdemDesp.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
           FMzrNfe.ShowModal;
       end;
	end;
end;

procedure TFOrdemPet.EdFiscalKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	if Key = #13 then
   begin
		if (EdFiscal.Text<>'') and (EdFiscal.Text<>'Número') then
       	FiltraOrdem('(VWORDEM.NUMFISCAL = '+#39+EdFiscal.Text+#39+')');
	end;

	if Key = #27 then
		FiltraOrdem('');
end;

procedure TFOrdemPet.EdFiscalEnter(Sender: TObject);
begin
  inherited;
	if EdFiscal.Text = 'Fiscal' then
	   EdFiscal.Text := '';
end;

procedure TFOrdemPet.EdFiscalExit(Sender: TObject);
begin
  inherited;
	if Trim(EdFiscal.Text) = '' then
		EdFiscal.Text := 'Fiscal';
end;

procedure TFOrdemPet.ListarNFCeenvidas1Click(Sender: TObject);
begin
  inherited;
	AbrirForm(TFListaNfe, FListaNfe, 0);
end;

procedure TFOrdemPet.RecuperardadosdaNFCe1Click(Sender: TObject);
var
	XChaveNfe: String;
begin
  inherited;
	if FiltraTabela(DMServ.TFiscOrd, 'DOCFISORD', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '') then
   begin
   	if DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger = 2 then
       begin
       	if Mensagem('Confirmação do usuário', 'Deseja realmente Retornar os dados para a Ordem de Número ' + DMServ.WOrdemDesp.FieldByName('numero').AsString + '?', '', 2, 3, False, 'c') = 2 then
           begin
           	if InputQuery('Chave de Acesso', 'Informe a Chave de Acesso da NFe para recuperar os Dados', XChaveNfe) then
               begin
                   if DMServ.TFiscOrd.FieldByName('MODELONF').AsString = '65' then
                       XEmiteNFCe := True
                   else
                       XEmiteNFCe := False;
                       
               	FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
                   FMzrNfe.SetInFiscal(XChaveNfe, DMServ.WOrdemDesp.FieldByName('cod_ordem').AsInteger, DMServ.WOrdemDesp.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'RETORNADADOS', 1, '', '', '', 0, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                   FMzrNfe.ShowModal;
               end;
            end;
       end
       else
       	MessageDlg('Os dados não podem ser recuperados devido ao fato que a OS esta marcada como NFC-e enviada e homologada' + #13 + #10 + 'NFeStatus = 1 ou 3', mtWarning, [mbOK], 0);
	end
   else
   	MessageDlg('Os dados não podem ser recuperados devido ao fato que a OS não gerou uma NFC-e.', mtWarning, [mbOK], 0);   
end;

procedure TFOrdemPet.SalvareenviarXMLdedistribuio1Click(Sender: TObject);
var
	Xcfop: String;
begin
  inherited;
    XSafeXmlDist := True;
    //Paulo 13/01/2011: Gera Nfe distribuição base no pedido selecionado
    //Seta os dados para chamar a função
    FiltraTabela(DMMACS.TPeriodoFiscal, 'PERIODOFISCAL', 'FECHADO', 'N', '');
    FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger), '');
    FiltraTabela(DMServ.Alx, 'DOCFISORD', 'COD_ORDEM', IntToStr(DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger), '');
    FiltraTabela(DMESTOQUE.Alx, 'CFOP', 'COD_CFOP', IntToStr(DMServ.Alx.FieldByName('COD_CFOP').AsInteger), '');
    FiltraTabela(DMESTOQUE.Alx1, 'CFOP', 'COD_CFOP', IntToStr(DMServ.Alx.FieldByName('COD_CFOP1').AsInteger), '');
    FiltraTabela(DMESTOQUE.Alx2, 'CFOP', 'COD_CFOP', IntToStr(DMServ.Alx.FieldByName('COD_CFOP2').AsInteger), '');
    FiltraTabela(DMESTOQUE.Alx3, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger), '');
    FiltraTabela(DMESTOQUE.Alx4, 'CIDADE', 'COD_CIDADE', IntToStr(DMESTOQUE.Alx3.FieldByName('COD_CIDADE').AsInteger), '');
    FiltraTabela(DMESTOQUE.Alx5, 'ESTADO', 'COD_ESTADO', IntToStr(DMESTOQUE.Alx4.FieldByName('COD_ESTADO').AsInteger), '');

	 if DMServ.Alx.FieldByName('MODELONF').AsString = '65' then
    	XEmiteNFCe := True
  	 else
    	XEmiteNFCe := False;
       
    Xcfop := DMESTOQUE.Alx.FieldByName('CFOP').AsString + '/' + DMESTOQUE.Alx1.FieldByName('CFOP').AsString + '/' + DMESTOQUE.Alx2.FieldByName('CFOP').AsString;
    XXmlNfe := DMServ.Alx.FieldByName('NFEXML').AsString;
    XNfeRecibo := DMServ.Alx.FieldByName('NFERECIBO').AsString;
    XNfeTipoAmbiente := DMServ.Alx.FieldByName('NFEAMBIENTE').AsInteger;
    XUfLocal := 'PR';
    XNfeChave := DMServ.Alx.FieldByName('NFECHAVE').AsString;
    XSetInPeriodoFiscal := DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;

    FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe

    FMzrNfe.SetInFiscal(XSetInPeriodoFiscal, DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger, DMServ.WOrdemDesp.FieldByName('COD_CLIENTE').AsInteger, 'ORDEM', 'EMITIR', 1, Xcfop,
        DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString, DMServ.WOrdemDesp.FieldByName('FORMAPAG').AsString, StrToInt(DMServ.Alx.FieldByName('NUMDOCFIS').AsString),
        DMServ.WOrdemDesp.FieldByName('DTABERT').AsDateTime, IntToStr(DMESTOQUE.Alx4.FieldByName('COD_IBGE').AsInteger), DMESTOQUE.Alx4.FieldByName('NOME').AsString,
        DMESTOQUE.Alx5.FieldByName('UF_ESTADO').AsString, DMServ.Alx.FieldByName('BASEICMS').AsFloat, DMServ.Alx.FieldByName('VLRICMS').AsFloat,
        DMServ.Alx.FieldByName('VLRTOTIPI').AsFloat, DMServ.Alx.FieldByName('BASCALSUBS').AsFloat, DMServ.Alx.FieldByName('VLRICMSUBS').AsFloat,
        DMServ.Alx.FieldByName('VLRTOTPROD').AsFloat, DMServ.Alx.FieldByName('VLRFRETE').AsFloat, DMServ.Alx.FieldByName('VLRSEG').AsFloat,
        DMServ.Alx.FieldByName('VLRDESCONTO').AsFloat, DMServ.Alx.FieldByName('VLROUTRASDESP').AsFloat, DMServ.Alx.FieldByName('VLRTOTDOCNF').AsFloat,
        DMServ.Alx.FieldByName('valortotaltributa').AsFloat);
    FMzrNfe.ShowModal;
end;

procedure TFOrdemPet.BtnSelecionarClick(Sender: TObject);
begin
  inherited;
   FMenu.SelectedForm := True;
   FMenu.XCodOrdemVinculo := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
   Close;
end;

procedure TFOrdemPet.RelatriodeServiosporGrade1Click(Sender: TObject);
begin
  inherited;
       If ControlAccess('RFINEST', 'M')=False Then
  	        Exit;
      FMenu.TIPOREL:='RELOSSERVICOSGRADE';
      AbrirForm(TFRelDATA, FRelDATA, 0);
end;

procedure TFOrdemPet.RelatriodeDanfesNFCe1Click(Sender: TObject);
begin
  inherited;
   If ControlAccess('RFINEST', 'M')=False Then
  	    Exit;
	XRelDanfe := 'ORDEM_NFCE';
   AbrirForm(TFRelPeriodoFiscal, FRelPeriodoFiscal, 0);
end;

procedure TFOrdemPet.RelatriodeDANFENFe1Click(Sender: TObject);
begin
  inherited;
   If ControlAccess('RFINEST', 'M')=False Then
  	    Exit;
	XRelDanfe := 'ORDEM';
   AbrirForm(TFRelPeriodoFiscal, FRelPeriodoFiscal, 0);
end;

procedure TFOrdemPet.CartadeCorreoEletrnica1Click(Sender: TObject);
begin
  inherited;
	IniciaCCe(DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger, 'ORDEM');
end;

procedure TFOrdemPet.EfetuardevoluodaNFe1Click(Sender: TObject);
begin
  inherited;
	//Edmar - 20/03/2015 - busca o cliente do pedido
	FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMServ.WOrdemDesp.FieldByName('COD_CLIENTE').AsString, '');

   if not FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_PESSOA', DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsString, '') then
   begin
   	//se não estiver, dá uma mensagem para o usuario informando que deve cadastra-lo como cliente antes de devolver
       MessageDlg('O cliente '+DMPESSOA.WCliente.FieldByName('NOME').AsString+' deve estar cadastrado como fornecedor para efetuar a devolução da NF-e.', mtWarning, [mbOK], 0);

   	Exit;
   end;

	FMenu.XCOD_CLIENTE_DEVOLUCAO := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsString;
   FMenu.XNUM_FISCAL_DEVOLUCAO := DMServ.WOrdemDesp.FieldByName('NUMFISCAL').AsString;
   FMenu.XCOD_PK_DEVOLVIDO := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString;

   FMenu.XTABELA_DEVOLUCAO := 'ORDEM';

   AbrirForm(TFDevolucao , FDevolucao, 0);
end;

procedure TFOrdemPet.RelaodeNotasFiscais1Click(Sender: TObject);
begin
  inherited;
   If ControlAccess('RFINEST', 'M')=False Then
  	    Exit;  
    FMenu.TIPOREL := 'ORDST';
    AbrirForm(TFRelMecanica, FRelMecanica, 0);
    FMenu.TIPOREL := '';
end;

end.
