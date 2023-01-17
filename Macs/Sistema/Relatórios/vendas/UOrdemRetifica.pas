unit UOrdemRetifica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, ExtCtrls, StdCtrls, TFlatEditUnit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxControls, cxContainer, cxEdit, cxGroupBox,
  Grids, DBGrids, DB, ComCtrls, EditFloat, ColorEditFloat, Mask, ColorMaskEdit,
  UFrmBusca, FR_Class, FR_DSet, FR_DBSet, Menus, FashionPanel;

type
  TFOrdemRetifica = class(TFPadrao)
    PConsulta: TPanel;
    LEmissor: TLabel;
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
    EDNum: TFlatEdit;
    EDCliente1: TFlatEdit;
    PCadastro: TPanel;
    PTOPCADASTRO: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    Shape12: TShape;
    BtnGravar: TBitBtn;
    BtnCancelar: TBitBtn;
    EdValorOrd: TColorEditFloat;
    EdNumero: TEdit;
    Shape1: TShape;
    PCabecalho: TPanel;
    FrmCliente: TFrmBusca;
    PTotal: TPanel;
    Shape3: TShape;
    Label10: TLabel;
    EdValorProdutos: TColorEditFloat;
    Label11: TLabel;
    EdValorMaoObra: TColorEditFloat;
    Label12: TLabel;
    EdValorOrd2: TColorEditFloat;
    Shape4: TShape;
    Shape5: TShape;
    Label13: TLabel;
    Label14: TLabel;
    DBGProdutos: TDBGrid;
    DBGServicos: TDBGrid;
    PListaClientes: TPanel;
    DBGListaCliente: TDBGrid;
    LComplementoCliente: TLabel;
    Panel1: TPanel;
    FrmFormaPagamento: TFrmBusca;
    FrmVendedor: TFrmBusca;
    FrmResponsavel: TFrmBusca;
    MObs: TMemo;
    EdSubTotalProdutos: TColorEditFloat;
    EdSubTotalMaodeObra: TColorEditFloat;
    EdDescProdutos: TColorEditFloat;
    EdDescMaoObra: TColorEditFloat;
    EdBuscaProduto: TEdit;
    EdObsFinanceira: TEdit;
    LTextoBusca: TLabel;
    Label6: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    EdVlrTotProd: TColorEditFloat;
    EdVlrUnitProd: TColorEditFloat;
    EdQuantProd: TColorEditFloat;
    BtnInsertProd: TBitBtn;
    BtnDeleteProd: TBitBtn;
    LProduto: TLabel;
    PListaProdutos: TPanel;
    DBGListaProdutos: TDBGrid;
    Label22: TLabel;
    EdData: TColorMaskEdit;
    EdBuscaServicos: TEdit;
    Label23: TLabel;
    EdQuantServ: TColorEditFloat;
    Label24: TLabel;
    EdVlrUnitServ: TColorEditFloat;
    Label25: TLabel;
    EdVlrTotServ: TColorEditFloat;
    PListaServico: TPanel;
    DBGListaServicos: TDBGrid;
    LServicos: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label15: TLabel;
    Label16: TLabel;
    PmRelatorio: TPopupMenu;
    CompdeAbertura1: TMenuItem;
    FSDSServ: TfrDBDataSet;
    FSDSDesp: TfrDBDataSet;
    FSDSRel: TfrDBDataSet;
    Fsrel: TfrReport;
    FSDSFatura: TfrDBDataSet;
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
    CBPagamento: TComboBox;
    FrmConta: TFrmBusca;
    FrmFormPag: TFrmBusca;
    DBDATAENTREGA: TColorMaskEdit;
    DBHORAENTREGA: TColorMaskEdit;
    FrmContaServ: TFrmBusca;
    Panel7: TPanel;
    Label29: TLabel;
    EdDtFech: TColorMaskEdit;
    CBGeraFinanceiro: TCheckBox;
    PGrid: TPopupMenu;
    NotaFiscalEletrnica1: TMenuItem;
    RecuperarDados1: TMenuItem;
    ConsultasNotaFiscalEletrnica1: TMenuItem;
    VisualizarDanfe1: TMenuItem;
    VisualizarnoSefaz1: TMenuItem;
    ConsultarStatusNFe1: TMenuItem;
    N9: TMenuItem;
    VerificarServidorSefaz1: TMenuItem;
    N10: TMenuItem;
    ListaNfe1: TMenuItem;
    InutilizarNumerao1: TMenuItem;
    GeraNFeDistribuio1: TMenuItem;
    SalvarXMLDistribuio1: TMenuItem;
    CancelarNFe1: TMenuItem;
    N4: TMenuItem;
    ReeimprimirNF1: TMenuItem;
    Panel2: TPanel;
    Label17: TLabel;
    Shape2: TShape;
    Label1: TLabel;
    Label18: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label19: TLabel;
    Label4: TLabel;
    EdMarca: TColorMaskEdit;
    EdModelo: TColorMaskEdit;
    EdAno: TColorMaskEdit;
    EdComando: TColorMaskEdit;
    EdBiela: TColorMaskEdit;
    EdMancal: TColorMaskEdit;
    EdModeloCilindro: TColorMaskEdit;
    EdCilibdro: TColorMaskEdit;
    DbDiesel: TCheckBox;
    CbGasolina: TCheckBox;
    CbAlcool: TCheckBox;
    CBFlex: TCheckBox;
    EdFiscal: TFlatEdit;
    EdPlaca: TColorMaskEdit;
    Label30: TLabel;
    procedure BtnNovoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FrmClienteEdDescricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmClienteEdDescricaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmFormaPagamentoBTNOPENClick(Sender: TObject);
    procedure FrmVendedorBTNOPENClick(Sender: TObject);
    procedure FrmResponsavelBTNOPENClick(Sender: TObject);
    procedure FrmClienteBTNOPENClick(Sender: TObject);
    procedure FrmClienteExit(Sender: TObject);
    procedure FrmFormaPagamentoEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmVendedorEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmResponsavelEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure EdBuscaProdutoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdDataExit(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBFILTROClick(Sender: TObject);
    procedure CBFILTROExit(Sender: TObject);
    procedure CBORDEMClick(Sender: TObject);
    procedure EDNumEnter(Sender: TObject);
    procedure EDNumExit(Sender: TObject);
    procedure EDNumKeyPress(Sender: TObject; var Key: Char);
    procedure EDCliente1KeyPress(Sender: TObject; var Key: Char);
    procedure EDCliente1Enter(Sender: TObject);
    procedure EDCliente1Exit(Sender: TObject);
    procedure BtnInsertProdClick(Sender: TObject);
    procedure DBGridConsultaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FrmResponsavelExit(Sender: TObject);
    procedure EdQuantProdExit(Sender: TObject);
    procedure BtnDeleteProdClick(Sender: TObject);
    procedure EdBuscaServicosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdQuantServExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EdBuscaProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdBuscaServicosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdDescProdutosExit(Sender: TObject);
    procedure EdDescMaoObraExit(Sender: TObject);
    procedure EdValorProdutosExit(Sender: TObject);
    procedure EdValorMaoObraExit(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure CompdeAbertura1Click(Sender: TObject);
    procedure BtnFechaPedClick(Sender: TObject);
    procedure DBGridConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnMoedaCancelarClick(Sender: TObject);
    procedure FrmFormPagBTNOPENClick(Sender: TObject);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure FrmContaServBTNOPENClick(Sender: TObject);
    procedure FrmContaBTNMINUSClick(Sender: TObject);
    procedure BtnMoedaOKClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FrmClienteEdDescricaoExit(Sender: TObject);
    procedure DBGListaClienteDblClick(Sender: TObject);
    procedure DBGListaClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCancelamentosClick(Sender: TObject);
    procedure DbDieselClick(Sender: TObject);
    procedure CbGasolinaClick(Sender: TObject);
    procedure CbAlcoolClick(Sender: TObject);
    procedure CBFlexClick(Sender: TObject);
    procedure EdMarcaEnter(Sender: TObject);
    procedure MObsEnter(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure EdQuantProdEnter(Sender: TObject);
    procedure DBGListaProdutosDblClick(Sender: TObject);
    procedure DBGListaProdutosKeyPress(Sender: TObject; var Key: Char);
    procedure EdQuantServEnter(Sender: TObject);
    procedure DBGListaServicosDblClick(Sender: TObject);
    procedure DBGListaServicosKeyPress(Sender: TObject; var Key: Char);
    procedure RecuperarDados1Click(Sender: TObject);
    procedure VisualizarDanfe1Click(Sender: TObject);
    procedure ConsultarStatusNFe1Click(Sender: TObject);
    procedure VerificarServidorSefaz1Click(Sender: TObject);
    procedure ListaNfe1Click(Sender: TObject);
    procedure InutilizarNumerao1Click(Sender: TObject);
    procedure SalvarXMLDistribuio1Click(Sender: TObject);
    procedure CancelarNFe1Click(Sender: TObject);
    procedure ReeimprimirNF1Click(Sender: TObject);
    procedure EdFiscalEnter(Sender: TObject);
    procedure EdFiscalExit(Sender: TObject);
    procedure EdFiscalKeyPress(Sender: TObject; var Key: Char);
    procedure EdPlacaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    //Gera nova Ordem
    Function AbreNovaOrdem: Boolean;
    //Grava Ordem em trabalho
    Function GravaOrdem: Boolean;
    //Inicializa as variaveis e componentes
    Function LimpaCamposOrdem: Boolean;
	 //seleciona forma de pagamento e vendedor de acordo com o cliente
	 Procedure SelecionaFormaPagamento;
    //Função utilizada para retornar o numero corrente para o pedido e incremantar na empresa
    Function RetornaNumPed: Integer;
    //Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
    Procedure EscreveLabelsPROD;
    //Filtra as tabelas e escreve em edits e labels as informações dos serviços selecionado
    Procedure EscreveLabelsSERV;
    //Limpa os edits de produtos
    Procedure LimpaLabelsPROD;
    //Limpa os edits de Serviços
    Procedure LimpaLabelsSERV;
    //17/06/2011: Função para retornar dados de Ordem em dmserv.wordemdesp de acordo com o filtro
    Procedure FiltraOrdem(XSql: String);
    //Grava ou Insere novo Equipamento a Ordem
    Function GeraGravaEquipamento: Boolean;
    //Recebe o proximo codigo de equipamento e incrementa +1 na tabela
    Function RetornaCodigoEquipamento: Integer;
    //Busca/Consulta dados de cabeçalho da Ordem
    Function ConsultaOrdem: Boolean;
    //Filtra Produtos e Servicos
    Procedure FiltraSlave;
    //Função Responsável por aplicar Descontos nos produtos tendo como base o campo em percentual
    Function AplicaDescProdBasePercento: Boolean;
    //Função Responsável por aplicar Descontos nos Serviços tendo como base o campo em percentual
    Function AplicaDescServBasePercento: Boolean;
    //Função Responsável por aplicar Descontos nos produtos tendo como base o valor retornando o percentual
    Function AplicaDescProdBaseValor: Boolean;
    //Função Responsável por aplicar Descontos nos servicos tendo como base o valor retornando o percentual
    Function AplicaDescServBaseValor: Boolean;
    //Fecha Ordem(joga no financeiro)
    Function FechaOrd(CODPEDIDO: String; DTFECH: String) : Boolean;
    //Seleciona Cliente e fecha lista
    Function SelecionaClienteLista : Boolean;
    //Função utilizada para cancelar/estornar todos os lançamentos emitidos por uma determinada OS
    Function CancelLanOrd(CodPedido: String):Boolean;
    //Marca desmarca o chekbox de combustivel
    Function MarcaDesmarcaCombustivel(Tipo: Integer): Boolean;
    //Função Utilizada para gerar a tela do fiscal a partir da tela de consulta
    Function AbreFiscal: Boolean;
  end;

var
  FOrdemRetifica: TFOrdemRetifica;
  XCodOrdem, XCodCliente, XCodFormPag, XCodVendedor, XCodResponsavel, XCodEquipamento: Integer;
  XCOD_ESTOQUE, XCOD_SERVICO, XCOD_ITEMSERVICO, XCOD_CONTASERV, XCOD_CONTA: Integer;
  XCodTmpEstoque, XCodTmpServico: String;
  XCampo: String; //Nome do campo Principal da tabela padrão para se trabalhar no Cadastro Padrão
  XFatOrd:Boolean;
  XServicoOp: Boolean; //Alex: 25/05/2012 Para controle na elaboração do xml     
implementation

uses UDMPessoa, UDMEstoque, Alxor32, UFormPag, UDMFinanc, UMenu,
  UFuncionario, UCliente, UMDO, UDMMacs, JLLabel, UDmServ, UProduto,
  AlxMessage, UServico, UDMGEOGRAFIA, UDMConta, USenha, UConsPlncta,
  UDMCaixa, UDmBanco, UDMSaida, UDMEntrada, UMzrNfe, UListaNfe,
  UFiscalOrdem;

{$R *.dfm}
//Função utilizada para cancelar/estornar todos os lançamentos emitidos por uma determinada OS
Function TFOrdemRetifica.CancelLanOrd(CodPedido: String):Boolean;
Var
	xcod_chequerec: String;
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
               If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. O.S. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TOS', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.TOrd.FieldByName('NUMERO').AsString, Date(), '1')= True Then
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
                     if DMServ.WOrdemDesp.FieldByName('TIPOPAG').AsString = 'Carteira'
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
                                LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fech. Ped. '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString+' Cli. '+DMSAIDA.WPedV.FieldByName('NOMECLI').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TPEDV', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMSAIDA.TPedV.FieldByName('NUMPED').AsString, Date(), '1');
                            end;
                            DMCAIXA.IBT.CommitRetaining;
                            MDO.Transac.CommitRetaining;

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
end;

//Seleciona Cliente e fecha lista
Function TFOrdemRetifica.SelecionaClienteLista : Boolean;
Begin
	Try
   	//Se pressionado Enter, confirma a nova busca
       XCodCliente:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       FrmCliente.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('nome').AsString;
       LComplementoCliente.Caption:=DMPESSOA.WCliente.FieldByName('cidade').AsString+' - '+DMPESSOA.WCliente.FieldByName('endereco').AsString;
       PListaClientes.Visible:=False;
       DMPESSOA.TCliente.Close;
       DMPESSOA.TCliente.SQL.Clear;
       DMPESSOA.TCliente.SQL.Add(' Select * from cliente where cliente.cod_cliente=:Codigo ');
       DMPESSOA.TCliente.ParamByName('Codigo').AsInteger:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       DMPESSOA.TCliente.Open;
       If not DMPESSOA.TCliente.IsEmpty Then
           EdObsFinanceira.Text:=DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString
       Else
           EdObsFinanceira.Text:='';

 	    SelecionaFormaPagamento;
   Except

   End;
End;

//Fecha Ordem(joga no financeiro)
Function TFOrdemRetifica.FechaOrd(CODPEDIDO: String; DTFECH: String) : Boolean;
Var
	ATUFINANC: Boolean; //controle financeiro foram efetivados
   XVLRDESP:Real;//O VLR DAS DESPESAS É DIV POR DOIS ENTRE PROD E SERV.
Begin
	//inicializa as variaveis como true, caso encontre erro na passagem da função eslas passaram a false
   FechaOrd:=True;
   ATUFINANC:=True;
     // Tenta filtrar a ordem
     If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '') = True
     Then Begin
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
				If FecConta('ORDEM', XCodOrdem, DMServ.TOrd.FieldByName('TOTORD').AsCurrency, DMServ.TOrd.FieldByName('TOTPROD').AsCurrency, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency, XCOD_CONTA, XCOD_CONTASERV, StrToDate(EdDtFech.Text))=True
               Then Begin
                   ATUFINANC:=True;
               End
               Else
                   ATUFINANC:=False;
           End
           Else Begin
               //Filtra Forma de Pagamento
               If FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(XCodFormPag), '') = True
               Then Begin // Encontrou forma de pagamento, continua processo
                   //verifica moeda padrão para lançamento
                       If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
                       Then Begin // caso o pedido tenha sido feito à vista deve-se lançar o valor direto no caixa
                           If CBPagamento.Text='Cheque'
                           Then Begin//LANÇAMENTO EM CONTROLE DE CHEQUE
                               If LancChEnt(XCOD_CONTA, XCOD_CONTASERV, 'Fech. Ordem'+DMServ.TOrd.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, Date(), '', DMServ.TOrd.FieldByName('TOTPROD').AsCurrency+XVLRDESP, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, '', '', 0, '', '', 'ORDEM', IntToStr(XCodOrdem))=True
                               Then  ////informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True
                               Else//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                           End;
                           If CBPagamento.Text = 'Cartão'
                           Then Begin
                               If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCOD_CONTA,'(Produtos) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMServ.TOrd.FieldByName('TOTPROD').AsCurrency+XVLRDESP, 'TOTPROD',StrToInt(CodPedido), 'ORDSERV',StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                               Then  Begin////informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                                   exit;
                               End;
                               If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCOD_CONTA,'(Serviços) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, 'TOTSERV',StrToInt(CodPedido), 'ORDSERV',StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                               Then  Begin////informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                               End;
                           End;
                           If (CBPagamento.Text <> 'Cheque') and (CBPagamento.Text <> 'Cartão')
                           Then Begin
                               //REALIZA LANÇAMENTOS EM CAIXA REFERENTE A PRODUTOS
                               If LanCaixa(-1, DateToStr(Date()), XCOD_CONTA, '(Produtos) Fech. Ordem Serv. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString,  DMServ.TOrd.FieldByName('TOTPROD').Value+XVLRDESP, 'ORDSERV', StrToInt(CodPedido), CBPagamento.Text, 'E', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1')=True
                               Then Begin//informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True;
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                               End;
                               //REALIZA LANÇAMENTOS EM CAIXA REFERENTE A SERVIÇOS
                               If LanCaixa(-1, DateToStr(Date()), XCOD_CONTASERV, '(Serviços) Fech. Ordem Serv. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString,  DMServ.TOrd.FieldByName('TOTSERV').Value+XVLRDESP, 'ORDSERV', StrToInt(CodPedido), CBPagamento.Text, 'E', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1')=True
                               Then Begin//informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True;
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                               End;
                           End;
                       End
                       Else Begin//Não é à vista
                           If LancConta('ORDEM', StrToInt(CodPedido), DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, DMServ.TOrd.FieldByName('TOTPROD').Value+XVLRDESP, DMServ.TOrd.FieldByName('TOTSERV').Value+XVLRDESP, XCOD_CONTA, XCOD_CONTASERV, -1, 'Fech. Ordem de Serviço '+DMServ.TOrd.FieldByName('NUMERO').AsString, XCodFormPag, DMServ.TOrd.FieldByName('NUMERO').AsString, 'O', Date(), 0, EdDtFech.Text, DMServ.TOrd.FieldByName('numfiscal').AsString)=True
                           Then Begin
                               ATUFINANC:=True;
                           End
                           Else Begin
                               ATUFINANC:=False;
                           End;
                       End;
                   //End
                   //Else Begin // não encontrou moeda padrão
                   //	ATUFINANC:=False;
                   //End;
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
               DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger:=XCodFormPag;
               DMServ.TOrd.FieldByName('DTENTREGA').AsString:=DBDATAENTREGA.Text;
               DMServ.TOrd.FieldByName('TIPOPAG').AsString:=CBPagamento.Text;
               DMServ.TOrd.FieldByName('DTFECH').AsString:=EdDtFech.Text;
               DMServ.TOrd.FieldByName('TIPOPAG').AsString:=CBPagamento.Text;
               DMServ.TOrd.FieldByName('HRENTREGA').AsString:=DBHORAENTREGA.Text;
               DMServ.TOrd.FieldByName('COMISSAO').AsCurrency:=0;
               DMServ.TOrd.Post;
               DMServ.TOrd.ApplyUpdates;

               //EFETUA TRANSAÇÕES
               DMServ.IBT.CommitRetaining;
               DMBANCO.IBT.CommitRetaining;
               DMCAIXA.IBT.CommitRetaining;
               MDO.Transac.CommitRetaining;
				Mensagem('INFORMAÇÃO AO USUÁRIO', 'ORDEM DE SERVIÇO FECHADA COM SUCESSO!', '', 1, 1, false, 'a');
               //Função para abrir gaveta
               //ecfOpenGaveta;

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
       End;

   End
   Else Begin //else de filtragem de pedido
       FechaOrd:=false;
   End;
End;

//Filtra Produtos e Servicos
Procedure TFOrdemRetifica.FiltraSlave;
Begin
	Try
   	//CALCULA SUBTOTAL PRODUTOS
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add(' Select sum(itprodord.total) as SUBTOTALPRODUTOS ');
       DMESTOQUE.Alx.SQL.Add(' From itprodord ');
       DMESTOQUE.Alx.SQL.Add(' Where itprodord.cod_ordem = :CODORDEM ');
       DMESTOQUE.Alx.ParamByName('CODORDEM').AsInteger:=XCodOrdem;
       DMESTOQUE.Alx.Open;
       EdSubTotalProdutos.ValueNumeric:=DMESTOQUE.Alx.FieldByName('SUBTOTALPRODUTOS').AsCurrency;
   	//CALCULA SUBTOTAL MAO DE OBRA
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add(' Select sum(itservord.total) as SUBTOTALSERVICOS ');
       DMESTOQUE.Alx.SQL.Add(' From itservord ');
       DMESTOQUE.Alx.SQL.Add(' Where itservord.cod_ordem = :CODORDEM ');
       DMESTOQUE.Alx.ParamByName('CODORDEM').AsInteger:=XCodOrdem;
       DMESTOQUE.Alx.Open;
       EdSubTotalMaodeObra.ValueNumeric:=DMESTOQUE.Alx.FieldByName('SUBTOTALSERVICOS').AsCurrency;

   	//SELECIONA TODOS OS PRODUTOS
       DMESTOQUE.TSlave.Close;
       DMESTOQUE.TSlave.SQL.Clear;
       DMESTOQUE.TSlave.SQL.Add('Select itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.descnf as DESCONTONF,  itprodord.qtd, itprodord.total, ');
       DMESTOQUE.TSlave.SQL.Add('itprodord.vlrunit, subproduto.descricao ');
       DMESTOQUE.TSlave.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
       DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
       DMESTOQUE.TSlave.SQL.Add('Where itprodord.cod_ordem = :CODORDEM ');
       DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger:=XCodOrdem;
       DMESTOQUE.TSlave.SQL.Add('order by itprodord.cod_itprodord desc');
       DMESTOQUE.TSlave.Open;
       //SELECIONA TODOS OS SERVIÇOS
       DMESTOQUE.TSlaveServ.Close;
       DMESTOQUE.TSlaveServ.SQL.Clear;
       DMESTOQUE.TSlaveServ.SQL.Add('select itservord.cod_itservord, itservord.cod_ordem, itservord.cod_servico, ');
       DMESTOQUE.TSlaveServ.SQL.Add('itservord.qtd, itservord.Data, itservord.total, itservord.vlrunit, subservico.descricao ');
       DMESTOQUE.TSlaveServ.SQL.Add('from itservord left join subservico ON itservord.cod_servico = subservico.cod_subservico ');
       DMESTOQUE.TSlaveServ.SQL.Add('left join unidade ON subservico.cod_unidade=unidade.cod_unidade ');
       DMESTOQUE.TSlaveServ.SQL.Add('Where itservord.cod_ordem = :CODORDEM ');
       DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsInteger := XCodOrdem;
       DMESTOQUE.TSlaveServ.SQL.Add('order by itservord.cod_itservord desc');
       DMESTOQUE.TSlaveServ.SQL.Text;
       DMESTOQUE.TSlaveServ.Open;
       //Repassa os descontos aplicados
       AplicaDescProdBasePercento;
       AplicaDescServBasePercento;
   Except

   End;

End;

//Limpa os edits de Serviços
Procedure TFOrdemRetifica.LimpaLabelsSERV;
Begin
   XCOD_SERVICO:=-1;
   XCodTmpServico:='';
   LServicos.Caption:='';
   EdQuantServ.ValueNumeric:=0;
   EdVlrUnitServ.ValueNumeric:=0;
   EdVlrTotServ.ValueNumeric:=0;
   PListaServico.Visible:=False;
End;

//Limpa os edits de produtos
Procedure TFOrdemRetifica.LimpaLabelsPROD;
Begin
   XCOD_ESTOQUE:=-1;
   XCodTmpEstoque:='';
   LProduto.Caption:='';
   EdQuantProd.ValueNumeric:=0;
   EdVlrUnitProd.ValueNumeric:=0;
   EdVlrTotProd.ValueNumeric:=0;
   PListaProdutos.Visible:=False;
End;

//17/06/2011: Função para retornar dados de Ordem em dmserv.wordemdesp de acordo com o filtro
Procedure TFOrdemRetifica.FiltraOrdem(XSql: String);
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
       If CBFILTRO.Text='EXECUTANDO' Then
           XFiltro:=' Where (vwordem.STATUS='+#39+'EXECUTANDO'+#39+')';


       //Verifica Ordenação
   	If CBORDEM.Text='+ RECENTE' Then
           XOrdem:=' order by vwordem.status, vwordem.cod_ordem DESC, vwordem.cliente ';
   	If CBORDEM.Text='NUMERO' Then
           XOrdem:=' order by vwordem.status, vwordem.numero, vwordem.cliente, vwordem.cod_ordem desc';
   	If CBORDEM.Text='CLIENTE' Then
           XOrdem:=' order by vwordem.status, vwordem.CLIENTE, vwordem.numero, vwordem.cod_ordem desc ';
   	If CBORDEM.Text='DATA' Then
           XOrdem:=' order by vwordem.status, vwordem.dtabert, vwordem.numero, vwordem.cliente, vwordem.cod_ordem desc ';
       if XSql<>''then
           XAux:='and'
       else
           XAux:='';

       if (CBFILTRO.Text='TODAS') and (XSql<>'') then
          XAux:='where';

       dmserv.WOrdemDesp.Close;
       DMServ.WOrdemDesp.SQL.Clear;
       DMServ.WOrdemDesp.SQL.Add('  select vwordem.cod_cliente,vwordem.cod_funcionario, vwordem.status,vwordem.cod_ordem, vwordem.numero, vwordem.numfiscal, equipamento.descricao, ');
       DMServ.WOrdemDesp.SQL.Add('   equipamento.modelo, vwordem.cliente, vwordem.formapag, vwordem.dtabert, ');
       DMServ.WOrdemDesp.SQL.Add('  vwordem.dtprev, vwordem.dtfech, vwordem.total');
       DMServ.WOrdemDesp.SQL.Add('   from vwordem ');
       DMServ.WOrdemDesp.SQL.Add('   Left join vwcliente on vwordem.cod_cliente = vwcliente.cod_cliente ');
       DMServ.WOrdemDesp.SQL.Add('   left join cliente on vwordem.cod_vendedor = cliente.cod_cliente ');
       DMServ.WOrdemDesp.SQL.Add('   left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
       DMServ.WOrdemDesp.SQL.Add('   left join equipamento on vwordem.cod_equipamento = equipamento.cod_equipamento ');
       DMServ.WOrdemDesp.SQL.Add('  '+XFiltro+' '+XAux+' '+XSql+ ' '+ XOrdem);
       DMServ.WOrdemDesp.Open;
       DBGridConsulta.DataSource:=DMServ.DWOrdemDesp;
   Except
   End;
End;

//Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
Procedure TFOrdemRetifica.EscreveLabelsPROD;
Begin
	//Filtra tabela de subproduto de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '')=False Then
		Exit;
   //Filtra tabela de estoque de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString, '')=False Then
   	Exit;
   //Filtra tabela de CST
	If FiltraTabela(DMEstoque.TCST, 'CST', 'COD_CST', DMEstoque.TSubProd.FieldByName('COD_CST').AsString, '')=False Then
   	Exit;
   // por questao de garantia o codigo de estoque do produto selecionado esta sendo atribuido á variavel pois jah que ela naum eh usada em nenhum outro momento, nao tem a possibilidade de ter seu valor alterado
   XCOD_ESTOQUE := DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
   // nao está selecionando apenas valores á prazo
   If DMMACS.TLoja.FieldByName('tipovenda').AsString = '0'
   Then Begin
       If (EdQuantProd.ValueNumeric>=DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) And (DMEstoque.TSubProd.FieldByName('QTDATC').AsString<>'')
       Then Begin//caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
           If FrmFormaPagamento.EdDescricao.Text = 'À VISTA'
           Then Begin //A venda esta sendo a vista então o preço de venda deve ser no atacado a vista
               EdVlrUnitProd.ValueNumeric:= DMEstoque.TEstoque.FieldByName('vendatav').AsCurrency;
           End
           Else Begin
               EdVlrUnitProd.ValueNumeric:=DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency;
           End;
       End
       Else Begin
           If FrmFormaPagamento.EdDescricao.Text = 'À VISTA'
           Then Begin
               EdVlrUnitProd.ValueNumeric := DMEstoque.WSimilar.FieldByName('VENDVARV').AsCurrency;
           End
           Else Begin
               EdVlrUnitProd.ValueNumeric := DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency;
           End;
       End;
   End
   // forçando venda a prazo
   Else Begin
       If (EdQuantProd.ValueNumeric>=DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) And (DMEstoque.TSubProd.FieldByName('QTDATC').AsString<>'')
       Then Begin//caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
           EdVlrUnitProd.ValueNumeric := DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency;
       End
       Else Begin
           EdVlrUnitProd.ValueNumeric := DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency;
       End;
   End;

	//Passa os valores do produto selecionado para as labels
   LProduto.Caption:=DMEstoque.TSubProd.FieldByName('DESCRICAO').AsString;
   If  DMEstoque.TSubProd.FieldByName('Marca').asstring<>'' Then
       LProduto.Caption:=LProduto.Caption+'     Marca: '+dMEstoque.TSubProd.FieldByName('Marca').asstring;
End;

//Filtra as tabelas e escreve em edits e labels as informações dos serviços selecionado
Procedure TFOrdemRetifica.EscreveLabelsSERV;
Begin
   // por questao de garantia o codigo de estoque do produto selecionado esta sendo atribuido á variavel pois jah que ela naum eh usada em nenhum outro momento, nao tem a possibilidade de ter seu valor alterado
   //XCOD_SERVICO := DMServ.WSubServ.FieldByName('COD_SERVICO').AsInteger;
   EdVlrUnitServ.ValueNumeric:= DMServ.WSubServ.FieldByName('VLRTOTSUBSERV').AsCurrency;
	//Passa os valores do produto selecionado para as labels
   LServicos.Caption:=DMServ.WSubServ.FieldByName('DESCRICAO').AsString;
End;

//seleciona forma de pagamento e vendedor de acordo com o cliente
Procedure TFOrdemRetifica.SelecionaFormaPagamento;
Begin
   //Insere forma de pagamento para o cliente
   If DMPESSOA.TCliente.FieldByName('COD_FORMPAG').AsInteger<>-1
   Then Begin
       If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMPESSOA.TCliente.FieldByName('COD_FORMPAG').AsString, '')=True
       Then Begin
           XCodFormPag:=DMFINANC.TFormPag.FieldByname('COD_FORMPAG').AsInteger;
           FrmFormaPagamento.EDCodigo.Text:=DMFINANC.TFormPag.FieldByname('COD_INTERNO').AsString;
           FrmFormaPagamento.EdDescricao.Text:=DMFINANC.TFormPag.FieldByname('DESCRICAO').AsString;
       End;
   End;
End;

//Função utilizada para retornar o numero corrente para o pedido e incremantar na empresa
Function TFOrdemRetifica.RetornaNumPed: Integer;
Var
	XFlag: Integer;
   XNumOrdem: String;
Begin
   Result:=-1;
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
      Result:=StrToInt(XNumOrdem);
   Except
      Result:=StrToInt(XNumOrdem);
   End;
End;
//Recebe o proximo codigo de equipamento e incrementa +1 na tabela
Function TFOrdemRetifica.RetornaCodigoEquipamento: Integer;
Var
	XFlag: Integer;
Begin
   Result:=-1;
	Try
   	//Busca o Proximo Codigo
       MDO.QConsulta.close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' select codigo.cod_equipamento from codigo ');
       MDO.QConsulta.Open;
       XCodEquipamento:=MDO.QConsulta.FieldByName('cod_equipamento').AsInteger;
       //Verifica se este codigo jah esta sendo usado
       XFlag:=1;
       While XFlag=1 do
       Begin
           MDO.QConsulta.Close;
           MDO.QConsulta.SQL.Clear;
           MDO.QConsulta.SQL.Add(' Select equipamento.cod_equipamento from equipamento where equipamento.cod_equipamento=:codigo ');
           MDO.QConsulta.ParamByName('codigo').AsInteger:=XCodEquipamento;
           MDO.QConsulta.Open;
           If not MDO.QConsulta.IsEmpty
           Then Begin
               XCodEquipamento:=XCodEquipamento+1;
           End
           Else Begin
               XFlag:=0;
           End;
       End;
       //retornba codigo correto
       Result:=XCodEquipamento;
       //Grava incrementando o codigo
       DMMACS.TCodigo.Edit;
       DMMACS.TCodigo.FieldByName('cod_equipamento').AsInteger:=XCodEquipamento+1;
       DMMACS.TCodigo.Post;
       DMMACS.Transaction.CommitRetaining;
   Except
   End;
End;

//Grava ou Insere novo Equipamento a Ordem
Function TFOrdemRetifica.GeraGravaEquipamento: Boolean;
Begin
   Result:=True;
   Try
   	//Verifica se a OS possui Equipamento
       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add(' Select equipamento.cod_equipamento from equipamento Where equipamento.cod_equipamento=:Codigo ');
       DMServ.TAlx1.ParamByName('codigo').AsInteger:=XCodEquipamento;
       DMServ.TAlx1.Open;
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       If DMServ.TAlx1.IsEmpty
       Then Begin
       	//INSERÇÃO DE EQUIPAMENTO
           XCodEquipamento:=RetornaCodigoEquipamento;
           MDO.Query.SQL.Add(' insert into equipamento(equipamento.cod_equipamento, equipamento.cod_cliente, equipamento.marca, ');
           MDO.Query.SQL.Add('                         equipamento.modelo, equipamento.ano, equipamento.descricao, equipamento.cor, ');
           MDO.Query.SQL.Add('                         equipamento.chassimotor, equipamento.concessionaria, equipamento.motor, equipamento.num_frota, equipamento.placa ) ');
           MDO.Query.SQL.Add('             values(:cod_equipamento, :cod_cliente, :marca, :modelo, :ano, :descricao, :cor, ');
           MDO.Query.SQL.Add('                    :chassimotor, :concessionaria, :motor, :num_frota, :placa)');
       	MDO.Query.ParamByName('cod_equipamento').AsInteger:=XCodEquipamento
       End
       Else Begin
       	//EDIÇÃO  DEEQUIPAMENTO
           MDO.Query.SQL.Add(' update equipamento set equipamento.cod_cliente=:cod_cliente, equipamento.marca=:marca, equipamento.modelo=:modelo, ');
           MDO.Query.SQL.Add('                        equipamento.ano=:ano, equipamento.descricao=:descricao, equipamento.cor=:cor, ');
           MDO.Query.SQL.Add('                         equipamento.chassimotor=:chassimotor, equipamento.concessionaria=:concessionaria, ');
           MDO.Query.SQL.Add('                         equipamento.motor=:motor, equipamento.num_frota=:num_frota, equipamento.placa = :placa ');
           MDO.Query.SQL.Add(' where equipamento.cod_equipamento=:cod_equipamento');
           MDO.Query.ParamByName('cod_equipamento').AsInteger:=XCodEquipamento
       End;
       //PASSAGEM PARAMETRO
       MDO.Query.ParamByName('cod_cliente').AsInteger:=XCodCliente;
       MDO.Query.ParamByName('marca').AsString:=EdMarca.Text;
       MDO.Query.ParamByName('modelo').AsString:=EdModelo.Text;
       MDO.Query.ParamByName('ano').AsString:=EdAno.Text;
       MDO.Query.ParamByName('descricao').AsString:=EdCilibdro.Text;
       MDO.Query.ParamByName('cor').AsString:=EdModeloCilindro.Text;
       MDO.Query.ParamByName('chassimotor').AsString:=EdMancal.Text;
       MDO.Query.ParamByName('concessionaria').AsString:=EdBiela.Text;
       MDO.Query.ParamByName('motor').AsString:=EdComando.Text;
       MDO.Query.ParamByName('placa').AsString:=EdPlaca.Text;       
       If DbDiesel.Checked=True Then
       	MDO.Query.ParamByName('num_frota').AsString:='Diesel';
       If CbGasolina.Checked=True Then
       	MDO.Query.ParamByName('num_frota').AsString:='Gasolina';
       If CbAlcool.Checked=True Then
       	MDO.Query.ParamByName('num_frota').AsString:='Alcool';
       If CBFlex.Checked=True Then
       	MDO.Query.ParamByName('num_frota').AsString:='Flex';
       MDO.Query.ExecSQL;
   Except
       Result:=False;
   End;
End;

//Grava Ordem
Function TFOrdemRetifica.GravaOrdem: Boolean;
Var
	XNumero: Integer;
Begin
	Result:=True;
   Try
   	//INSERE OU GRAVA EQUIPAMENTO
       GeraGravaEquipamento;

   	//insere em banco de dados a ordem preliminar
   	MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' update ordem set ordem.box=:box, ordem.cod_cliente=:cod_cliente, ordem.cod_equipamento=:cod_equipamento, ');
       MDO.Query.SQL.Add('         ordem.cod_formpag=:cod_formpag, ordem.cod_funcionario=:cod_funcionario, ordem.cod_loja=:cod_loja, ');
       MDO.Query.SQL.Add('         ordem.cod_usuario=:cod_usuario, ordem.cod_vendedor=:cod_vendedor,  ordem.dtabert=:dtabert, ');
       MDO.Query.SQL.Add('         ordem.desconto=:desconto, ordem.descprod=:descprod, ordem.descserv=:descserv, ');
       MDO.Query.SQL.Add('         ordem.EDIT=:EDIT, ordem.numero=:numero, ordem.observacao=:observacao, ordem.status=:status, ');
       MDO.Query.SQL.Add('         ordem.totord=:totord, ordem.totprod=:totprod, ordem.totserv=:totserv ');
       MDO.Query.SQL.Add('         Where ordem.cod_ordem=:codigo ');
       MDO.Query.ParamByName('codigo').AsInteger:=XCodOrdem;
       MDO.Query.ParamByName('cod_cliente').AsInteger:=XCodCliente;
       MDO.Query.ParamByName('cod_formpag').AsInteger:=XCodFormPag;
       MDO.Query.ParamByName('cod_funcionario').AsInteger:=XCodResponsavel;
       MDO.Query.ParamByName('cod_equipamento').AsInteger:=XCodEquipamento;
       MDO.Query.ParamByName('cod_loja').AsString:=FMenu.LCODLOJA.Caption;
       MDO.Query.ParamByName('cod_usuario').AsString:=FMenu.LCODUSUARIO.Caption;
       MDO.Query.ParamByName('cod_vendedor').AsInteger:=XCodVendedor;
       MDO.Query.ParamByName('EDIT').AsString:='0';
       MDO.Query.ParamByName('numero').AsString:=EdNumero.Text;
       MDO.Query.ParamByName('observacao').AsString:=MObs.Text;
       MDO.Query.ParamByName('status').AsString:='ABERTO';
       MDO.Query.ParamByName('dtabert').AsString:=EdData.Text;
       MDO.Query.ParamByName('descprod').AsCurrency:=EdDescProdutos.ValueNumeric;
       MDO.Query.ParamByName('descserv').AsCurrency:=EdDescMaoObra.ValueNumeric;
       MDO.Query.ParamByName('dtabert').AsString:=EdData.Text;
       MDO.Query.ParamByName('totord').AsCurrency:=EdValorOrd2.ValueNumeric;
       MDO.Query.ParamByName('totprod').AsCurrency:=EdValorProdutos.ValueNumeric;
       MDO.Query.ParamByName('totserv').AsCurrency:=EdValorMaoObra.ValueNumeric;
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
       DMServ.IBT.CommitRetaining;
   Except
       MDO.Transac.RollbackRetaining;
       Result:=False;
   End;
End;

//Marca desmarca o chekbox de combustivel
Function TFOrdemRetifica.MarcaDesmarcaCombustivel(Tipo: Integer): Boolean;
Begin
	Try
   	If Tipo=1
       Then Begin
           CbGasolina.Checked:=False;
           CbAlcool.Checked:=False;
           CBFlex.Checked:=False;
       End
       Else Begin
           If Tipo=2
           Then Begin
               DbDiesel.Checked:=False;
               CbAlcool.Checked:=False;
               CBFlex.Checked:=False;
           End
           Else Begin
               If Tipo=3
               Then Begin
                   DbDiesel.Checked:=False;
                   CbGasolina.Checked:=False;
                   CBFlex.Checked:=False;
               End
               Else Begin
                   If Tipo=4
                   Then Begin
                       DbDiesel.Checked:=False;
                       CbAlcool.Checked:=False;
                       CbGasolina.Checked:=False;
                   End
                   Else Begin
                       If Tipo=-1
                       Then Begin
                           DbDiesel.Checked:=False;
                           CbAlcool.Checked:=False;
                           CbGasolina.Checked:=False;
                           CBFlex.Checked:=False;
                       End;
                   End;
               End;
           End;
       End;
   Except

   End;
End;

//Gera Nova Ordem
Function TFOrdemRetifica.AbreNovaOrdem: Boolean;
Var
	XNumero: Integer;
Begin
	Result:=True;
   Try
   	//Retorna numero do proximo generator
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('   select gen_id(gen_ordem_id, 0) as codigo from rdb$database ');
       MDO.QConsulta.Open;
       XCodOrdem:=MDO.QConsulta.FieldByName('codigo').AsInteger+1;
		XCodEquipamento:=-1;//INICIALIZA NULO
   	//insere em banco de dados a ordem preliminar
   	MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' insert into ordem(ordem.box, ordem.cod_cliente, ordem.cod_formpag, ordem.cod_funcionario, ordem.cod_loja, ordem.cod_usuario, ');
       MDO.Query.SQL.Add('             ordem.cod_vendedor, ordem.numero, ordem.status, ordem.dtabert) ');
       MDO.Query.SQL.Add('             values(:BOX, :COD_CLIENTE, :cod_formpag, :cod_funcionario, :cod_loja, :cod_usuario, ');
       MDO.Query.SQL.Add('             :cod_vendedor, :numero, :status, :DtAbertura) ');
       MDO.Query.ParamByName('BOX').AsString:='99';
       MDO.Query.ParamByName('COD_CLIENTE').AsString:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString;
       MDO.Query.ParamByName('cod_formpag').AsString:=DMFINANC.TFormPag.FieldByName('cod_formpag').AsString;
       MDO.Query.ParamByName('cod_funcionario').AsString:=DMPESSOA.VWFuncionario.FieldByName('cod_func').AsString;
       MDO.Query.ParamByName('cod_loja').AsString:=FMenu.LCODLOJA.Caption;
       MDO.Query.ParamByName('cod_usuario').AsString:=FMenu.LCODUSUARIO.Caption;
       MDO.Query.ParamByName('cod_vendedor').AsString:=DMPESSOA.VWFuncionario.FieldByName('cod_func').AsString;
       XNumero:=RetornaNumPed;
       MDO.Query.ParamByName('numero').AsInteger:=XNumero;
       MDO.Query.ParamByName('status').AsString:='ABERTO';
       MDO.Query.ParamByName('DtAbertura').AsDateTime:=Date();
       MDO.Query.ExecSQL;
       EdNumero.Text:=IntToStr(XNumero);
       MDO.Transac.CommitRetaining;
       FiltraSlave;
   Except
       MDO.Transac.RollbackRetaining;
   	Result:=False;
   End;
End;

//Função Responsável por aplicar Descontos nos produtos tendo como base o campo em percentual
Function TFOrdemRetifica.AplicaDescProdBasePercento: Boolean;
Begin
	Try
   	If (EdSubTotalProdutos.ValueNumeric>0) and (EdDescProdutos.ValueNumeric>0) Then
       	EdValorProdutos.ValueNumeric:=EdSubTotalProdutos.ValueNumeric-((EdSubTotalProdutos.ValueNumeric*EdDescProdutos.ValueNumeric) /100)
       Else
           EdValorProdutos.ValueNumeric:=EdSubTotalProdutos.ValueNumeric;

       //Repassa somatorio para edits de totais de ordem
       EdValorOrd.ValueNumeric:=EdValorProdutos.ValueNumeric+EdValorMaoObra.ValueNumeric;
       EdValorOrd2.ValueNumeric:=EdValorProdutos.ValueNumeric+EdValorMaoObra.ValueNumeric;
   Except
       EdValorProdutos.ValueNumeric:=0;
   End;
End;
//Função Responsável por aplicar Descontos nos produtos tendo como base o valor retornando o percentual
Function TFOrdemRetifica.AplicaDescProdBaseValor: Boolean;
Begin
	Try
   	If (EdSubTotalProdutos.ValueNumeric<>EdValorProdutos.ValueNumeric) Then
       	EdDescProdutos.ValueNumeric:=100-((EdValorProdutos.ValueNumeric*100)/EdSubTotalProdutos.ValueNumeric)
       Else
           EdDescProdutos.ValueNumeric:=0;

       //Repassa somatorio para edits de totais de ordem
       EdValorOrd.ValueNumeric:=EdValorProdutos.ValueNumeric+EdValorMaoObra.ValueNumeric;
       EdValorOrd2.ValueNumeric:=EdValorProdutos.ValueNumeric+EdValorMaoObra.ValueNumeric;
   Except
       EdDescProdutos.ValueNumeric:=0;
   End;
End;

//Função Responsável por aplicar Descontos nos servicos tendo como base o valor retornando o percentual
Function TFOrdemRetifica.AplicaDescServBaseValor: Boolean;
Begin
	Try
   	If (EdSubTotalMaodeObra.ValueNumeric<>EdValorMaoObra.ValueNumeric) Then
       	EdDescMaoObra.ValueNumeric:=100-((EdValorMaoObra.ValueNumeric*100)/EdSubTotalMaodeObra.ValueNumeric)
       Else
           EdDescMaoObra.ValueNumeric:=0;

       //Repassa somatorio para edits de totais de ordem
       EdValorOrd.ValueNumeric:=EdValorProdutos.ValueNumeric+EdValorMaoObra.ValueNumeric;
       EdValorOrd2.ValueNumeric:=EdValorProdutos.ValueNumeric+EdValorMaoObra.ValueNumeric;
   Except
       EdDescProdutos.ValueNumeric:=0;
   End;
End;

//Função Responsável por aplicar Descontos nos Serviços tendo como base o campo em percentual
Function TFOrdemRetifica.AplicaDescServBasePercento: Boolean;
Begin
	Try
   	If (EdSubTotalMaodeObra.ValueNumeric>0) and (EdDescMaoObra.ValueNumeric>0) Then
       	EdValorMaoObra.ValueNumeric:=EdSubTotalMaodeObra.ValueNumeric-((EdSubTotalMaodeObra.ValueNumeric*EdDescMaoObra.ValueNumeric) /100)
       Else
           EdValorMaoObra.ValueNumeric:=EdSubTotalMaodeObra.ValueNumeric;

       //Repassa somatorio para edits de totais de ordem
       EdValorOrd.ValueNumeric:=EdValorProdutos.ValueNumeric+EdValorMaoObra.ValueNumeric;
       EdValorOrd2.ValueNumeric:=EdValorProdutos.ValueNumeric+EdValorMaoObra.ValueNumeric;           
   Except
       EdValorMaoObra.ValueNumeric:=0;
   End;
End;

//Busca/Consulta dados de cabeçalho da Ordem
Function TFOrdemRetifica.ConsultaOrdem: Boolean;
Begin
	Try
   	Result:=True;
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' select ordem.cod_ordem, Ordem.Edit, ordem.status, ordem.cod_cliente, ordem.cod_formpag, ordem.cod_vendedor, ordem.cod_funcionario, ');
       MDO.QConsulta.SQL.Add(' ordem.observacao, ordem.numero,  ordem.descserv, ordem.descprod, ordem.dtabert, ordem.totord, ordem.totprod, ordem.totserv, ');
       MDO.QConsulta.SQL.Add(' vwcliente.nome, formpag.cod_interno as CIFormPag, formpag.descricao as Formpag, ');
       MDO.QConsulta.SQL.Add(' vwfuncionario.cod_interno as CIVendedor, vwfuncionario.nome as vendedor, equipamento.cod_equipamento, equipamento.marca, ');
       MDO.QConsulta.SQL.Add(' equipamento.modelo, equipamento.ano, equipamento.placa, equipamento.descricao as Cilindro, equipamento.cor as MCilindro, ');
       MDO.QConsulta.SQL.Add(' equipamento.chassimotor as Mancal, equipamento.concessionaria as Biela, equipamento.motor as Comando, ');
       MDO.QConsulta.SQL.Add(' equipamento.num_frota as Combustivel ');
       MDO.QConsulta.SQL.Add(' from ordem ');
       MDO.QConsulta.SQL.Add(' left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente ');
       MDO.QConsulta.SQL.Add(' left join equipamento ON ordem.cod_equipamento = equipamento.cod_equipamento ');
       MDO.QConsulta.SQL.Add(' left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
       MDO.QConsulta.SQL.Add(' left join vwfuncionario on ordem.cod_vendedor = vwfuncionario.cod_func ');
       MDO.QConsulta.SQL.Add(' where ordem.cod_ordem=:codigo ');
       MDO.QConsulta.ParamByName('codigo').AsInteger:=DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
       MDO.QConsulta.Open;
       If not MDO.QConsulta.IsEmpty
       Then Begin
       	//VERIFICA SE A OS ESTA EM EDIÇÃO POR OUTRO TERMINAL
           // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
           If MDO.QConsulta.FieldByName('EDIT').AsString = '1'
           Then Begin
               Mensagem('    A T E N Ç Ã O   ','A Ordem de Serviços selecionada está sendo usada por outro terminal.'+#13+'Se ela não estiver sendo usada em outro terminal, é possível desbloqueá-la usao as teclas ctrl+D','',1,1,false,'I');
               Result:=False;
               Exit;
           End;
           If MDO.QConsulta.FieldByName('STATUS').AsString = 'FECHADO'
           Then Begin
               Mensagem('    A T E N Ç Ã O   ','A Ordem de Serviços selecionada está Fechada e não pode ser consultada.','',1,1,false,'I');
               Result:=False;
               Exit;
           End;
       	//Repassa as chaves estrangeiras
           XCodOrdem:=MDO.QConsulta.FieldByName('cod_ordem').AsInteger;
           XCodCliente:=MDO.QConsulta.FieldByName('cod_cliente').AsInteger;
           XCodEquipamento:=MDO.QConsulta.FieldByName('cod_equipamento').AsInteger;
           XCodFormPag:=MDO.QConsulta.FieldByName('cod_formpag').AsInteger;
           XCodVendedor:=MDO.QConsulta.FieldByName('cod_vendedor').AsInteger;
           XCodResponsavel:=MDO.QConsulta.FieldByName('cod_funcionario').AsInteger;
           //Repassa os textos para os edits
           If FiltraTabela(DMMACS.TALX, 'vwfuncionario', 'cod_func', IntToStr(XCodResponsavel), '')
           Then Begin
               FrmResponsavel.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('cod_interno').AsString;
               FrmResponsavel.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('nome').AsString;
           End;
           If FiltraTabela(DMMACS.TALX, 'cliente', 'cod_cliente', IntToStr(XCodCliente), '') Then
               EdObsFinanceira.Text:=DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString;

			If MDO.QConsulta.FieldByName('Combustivel').AsString='Diesel' Then
               DbDiesel.Checked:=True;
			If MDO.QConsulta.FieldByName('Combustivel').AsString='Gasolina' Then
               CbGasolina.Checked:=True;
			If MDO.QConsulta.FieldByName('Combustivel').AsString='Alcool' Then
               CbAlcool.Checked:=True;
			If MDO.QConsulta.FieldByName('Combustivel').AsString='Flex' Then
               CBFlex.Checked:=True;
           FrmCliente.EdDescricao.Text:=MDO.QConsulta.FieldByName('nome').AsString;
           MObs.Text:=MDO.QConsulta.FieldByName('observacao').AsString;
           EdData.Text:=MDO.QConsulta.FieldByName('dtabert').AsString;
           EdNumero.Text:=MDO.QConsulta.FieldByName('numero').AsString;
			EdMarca.Text:=MDO.QConsulta.FieldByName('marca').AsString;
			EdModelo.Text:=MDO.QConsulta.FieldByName('modelo').AsString;
			EdPlaca.Text:=MDO.QConsulta.FieldByName('placa').AsString;
			EdAno.Text:=MDO.QConsulta.FieldByName('ano').AsString;
			EdCilibdro.Text:=MDO.QConsulta.FieldByName('cilindro').AsString;
			EdModeloCilindro.Text:=MDO.QConsulta.FieldByName('MCilindro').AsString;
			EdMancal.Text:=MDO.QConsulta.FieldByName('mancal').AsString;
			EdBiela.Text:=MDO.QConsulta.FieldByName('biela').AsString;
			EdComando.Text:=MDO.QConsulta.FieldByName('comando').AsString;
           FrmFormaPagamento.EDCodigo.Text:=MDO.QConsulta.FieldByName('CIFormPag').AsString;
           FrmFormaPagamento.EdDescricao.Text:=MDO.QConsulta.FieldByName('Formpag').AsString;
           FrmVendedor.EDCodigo.Text:=MDO.QConsulta.FieldByName('CIVendedor').AsString;
           FrmVendedor.EdDescricao.Text:=MDO.QConsulta.FieldByName('vendedor').AsString;
           EdDescProdutos.ValueNumeric:=MDO.QConsulta.FieldByName('descprod').AsCurrency;
           EdDescMaoObra.ValueNumeric:=MDO.QConsulta.FieldByName('descserv').AsCurrency;
           EdVlrTotProd.ValueNumeric:=MDO.QConsulta.FieldByName('totprod').AsCurrency;
           EdVlrTotServ.ValueNumeric:=MDO.QConsulta.FieldByName('totserv').AsCurrency;
           EdValorOrd.ValueNumeric:=MDO.QConsulta.FieldByName('totord').AsCurrency;
           EdValorOrd2.ValueNumeric:=MDO.QConsulta.FieldByName('totord').AsCurrency;
           FiltraSlave;
           LimpaLabelsPROD;
           LimpaLabelsSERV;
           Try
               //Altera na OS a função de EDIT que marca a OS como sendo usada
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' update ordem set ordem.EDIT=''1'' where ordem.cod_ordem=:codigo ');
               MDO.Query.ParamByName('codigo').AsInteger:=XCodOrdem;
               MDO.Query.ExecSQL;
               MDO.Transac.CommitRetaining;
           Except
           End;
       End
       Else Begin
			MessageDlg('Esta Ordem de Serviços já foi apagada!', mtWarning, [mbOK], 0);
           Result:=False;
       End;
   Except

   End;
End;

//Inicializa as variaveis e componentes
Function TFOrdemRetifica.LimpaCamposOrdem: Boolean;
Begin
	Result:=True;
   Try
       //Preprara componentes Principais
       PListaClientes.Visible:=False;
       FrmCliente.EDCodigo.Text:='';
       FrmCliente.EdDescricao.Text:='';
       //componentes da caixa azul
       EdMarca.Text:='';
       EdCilibdro.Text:='';
       EdModelo.Text:='';
       EdMancal.Text:='';
       EdBiela.Text:='';
       EdComando.Text:='';
       EdAno.Text:='';
       DbDiesel.Checked:=False;
       CbGasolina.Checked:=False;
       CbAlcool.Checked:=False;
       CBFlex.Checked:=False;
       MObs.Text:='';
       EdModelo.Text:='';
       EdModeloCilindro.Text:='';
       //componentes de seleção
       FrmFormaPagamento.EDCodigo.Text:='';
       FrmFormaPagamento.EdDescricao.Text:='';
       FrmVendedor.EDCodigo.Text:='';
       FrmVendedor.EdDescricao.Text:='';
       FrmResponsavel.EDCodigo.Text:='';
       FrmResponsavel.EdDescricao.Text:='';
       //componentes de totalizadores de valores
       EdSubTotalProdutos.ValueNumeric:=0;
       EdSubTotalMaodeObra.ValueNumeric:=0;
       EdDescProdutos.ValueNumeric:=0;
       EdDescMaoObra.ValueNumeric:=0;
       EdValorProdutos.ValueNumeric:=0;
       EdValorMaoObra.ValueNumeric:=0;
       EdValorOrd.ValueNumeric:=0;
       EdData.Text:=DateToStr(date());
       //variáveis de controle de chave primaria
       XCodCliente:=-1;
   Except
   	Result:=False;
   End;
End;

procedure TFOrdemRetifica.BtnNovoClick(Sender: TObject);
begin
  inherited;
   PCadastro.BringToFront;
   LimpaCamposOrdem;
   LimpaLabelsSERV;
   AbreNovaOrdem;
   PCadastro.Visible:=True;
   PCadastro.BringToFront;
   FrmCliente.EdDescricao.SetFocus;
end;

procedure TFOrdemRetifica.FormActivate(Sender: TObject);
begin
  inherited;
   PCadastro.Visible:=False;
   PConsulta.Visible:=True;
   PConsulta.BringToFront;
   PListaClientes.Top:=146;
   PListaClientes.Left:=14;
   If FileExists('C:\MZR\Arquivos\LayoutGrid\Ordem.lgm') Then
       DBGridConsulta.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\Ordem.lgm');
   FiltraOrdem('');
end;

procedure TFOrdemRetifica.FrmClienteEdDescricaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	If (PListaClientes.Visible=False) and (key<>Vk_F2)  and (key<>Vk_F3)
   Then Begin
   	If FrmCliente.EdDescricao.Text<>''
       Then Begin
           PListaClientes.Visible:=True;
           PListaClientes.BringToFront;
           DMPESSOA.WCliente.Close;
           DMPESSOA.WCliente.SQL.Clear;
           DMPESSOA.WCliente.SQL.Add(' Select * from vwcliente order by vwcliente.nome ');
           DMPESSOA.WCliente.Open;
   	End;
   End;
end;

procedure TFOrdemRetifica.FrmClienteEdDescricaoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   If Key=VK_UP Then
       DMPESSOA.WCliente.Prior;
   If Key=VK_DOWN Then
       DMPESSOA.WCliente.Next;
   If Key=VK_RETURN
   Then Begin
       SelecionaClienteLista;
   End;
   If Key=VK_ESCAPE
   Then Begin
   	//Se Pressionado Esc, retorna a busca anterior
       If XCodCliente=-1
       Then Begin
           //Se codigo cliente não definido zera dados dos clientes
           FrmCliente.EdDescricao.Text:='';
           LComplementoCliente.Caption:='';
       End
       Else Begin
       	//Se existe um codigo de cliente definido, retorna a estas informações
       	If FiltraTabela(DMPESSOA.TALX, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCodCliente), '')=True
           Then Begin
               FrmCliente.EdDescricao.Text:=DMPESSOA.TALX.FieldByName('nome').AsString;
               LComplementoCliente.Caption:=DMPESSOA.TALX.FieldByName('cidade').AsString+' - '+DMPESSOA.TALX.FieldByName('endereco').AsString;
           End;
       End;
       PListaClientes.Visible:=False;
   End;
	If (Key<>VK_UP) and (Key<>VK_DOWN)  and (Key<>VK_RETURN)  and (Key<>VK_ESCAPE) Then
		DMPESSOA.WCliente.Locate('nome', FrmCliente.EdDescricao.Text, [loPartialKey,loCaseInsensitive]);
end;

procedure TFOrdemRetifica.FrmFormaPagamentoBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
       XCodFormPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       FrmFormaPagamento.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
       FrmFormaPagamento.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   	FrmFormaPagamento.Repaint;
   End
   Else Begin
       XCodFormPag:=-1;
       FrmFormaPagamento.EDCodigo.Text:='';
       FrmFormaPagamento.EdDescricao.Text:='';
   End;
end;

procedure TFOrdemRetifica.FrmVendedorBTNOPENClick(Sender: TObject);
begin
  inherited;
    If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
    Then Begin
       XCodVendedor:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
    	FrmVendedor.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
    	FrmVendedor.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
    End
    Else Begin
       XCodVendedor:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;    
    	FrmVendedor.EDCodigo.Text:='';
    	FrmVendedor.EdDescricao.Text:='';
    End
end;

procedure TFOrdemRetifica.FrmResponsavelBTNOPENClick(Sender: TObject);
begin
  inherited;
    If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
    Then Begin
     	XCodResponsavel:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
    	FrmResponsavel.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
    	FrmResponsavel.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
    End
    Else Begin
       XCodResponsavel:=-1;
    	FrmResponsavel.EDCodigo.Text:='';
    	FrmResponsavel.EdDescricao.Text:='';
    End;
end;

procedure TFOrdemRetifica.FrmClienteBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFCliente, FCliente, 1)='Selected'
   Then Begin
   	If DMPESSOA.WCliente.FieldByName('ATUALIZAR').AsString='1' Then
       	MessageDlg('AS INFORMAÇÕES DO CLIENTE NECESSITAM SER ATUALIZADAS', mtWarning, [mbOK], 0);
       XCodCliente:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
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

 	    SelecionaFormaPagamento;
   End
   Else Begin
       XCodCliente:=-1;
       FrmCliente.EDCodigo.Text:='';
       FrmCliente.EDCodigo.Hint := '';
       FrmCliente.EdDescricao.Text:='';
       EdObsFinanceira.Text:='';
   End;
end;
procedure TFOrdemRetifica.FrmClienteExit(Sender: TObject);
begin
  inherited;
//	PListaClientes.Visible:=False;
end;
procedure TFOrdemRetifica.FrmFormaPagamentoEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN
   Then Begin
       if FrmFormaPagamento.EDCodigo.Text<>''
       Then Begin
       	//seleciona a forma de pagamento
           If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_INTERNO', FrmFormaPagamento.EDCodigo.Text, '')
           Then Begin
               XCodFormPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
              	FrmFormaPagamento.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
               FrmFormaPagamento.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
           End
           Else Begin
              XCodFormPag:=-1;
              FrmFormaPagamento.EDCodigo.Text:='';
              FrmFormaPagamento.EdDescricao.Text:='';
           End;
       End;
   End; 
end;

procedure TFOrdemRetifica.FrmVendedorEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin//se enter
   	If FrmVendedor.EDCodigo.Text<>''
       Then Begin
	        If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', FrmVendedor.EDCodigo.Text, '')=True
           Then Begin
	            XCodVendedor:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
	            FrmVendedor.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
	            FrmVendedor.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
           End
           Else Begin
               XCodVendedor:=-1;
	            FrmVendedor.EDCodigo.Text:='';
	            FrmVendedor.EdDescricao.Text:='';
           End;
       End;
   End;
end;

procedure TFOrdemRetifica.FrmResponsavelEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
      	If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', Trim(FrmResponsavel.EDCodigo.Text), '')=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
        	XCodResponsavel:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
           FrmResponsavel.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
	        FrmResponsavel.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
        	XCodResponsavel:=-1;
           FrmResponsavel.EdDescricao.Text:='';
	        FrmResponsavel.EDCodigo.Text:='';
       End;
   End;
end;

procedure TFOrdemRetifica.BtnGravarClick(Sender: TObject);
begin
  inherited;
   PCadastro.Visible:=False;
   PConsulta.Visible:=True;
   PConsulta.BringToFront;
   GravaOrdem;
   FiltraOrdem('');
end;

procedure TFOrdemRetifica.BtnCancelarClick(Sender: TObject);
begin
  inherited;
   Try
   	//insere em banco de dados a ordem preliminar
   	MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' update ordem set ordem.EDIT=:EDIT ');
       MDO.Query.SQL.Add('         Where ordem.cod_ordem=:codigo ');
       MDO.Query.ParamByName('codigo').AsInteger:=XCodOrdem;
       MDO.Query.ParamByName('EDIT').AsString:='0';
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
       DMServ.IBT.CommitRetaining;
   Except
       MDO.Transac.RollbackRetaining;
   End;
	// se nao possui servico e nem produtos eh exibido a mensagem - SEGUNDO SOLICITAÇÃO É OBRIGATORIO PODER GRAVAR SEM SERVICO
   If (DMESTOQUE.TSlave.IsEmpty) and (DMESTOQUE.TSlaveServ.IsEmpty)
   Then Begin
   	If Mensagem('   A T E N Ç Ã O   ','A Ordem de Serviço atual não possui produtos e serviços inclusos. Deseja apagá-la ?','',2,3,false,'A')=2
       Then Begin
	    	//Apaga ORDEM
			FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCodOrdem), '');
			Registra('ORDEM', 'APAGAR/CANCELAR', DMServ.TOrd.FieldByName('DTABERT').AsString, 'Nº '+DMServ.TOrd.FieldByName('NUMERO').AsString, 'Valor: '+DMServ.TOrd.FieldByName('TOTORD').AsString);
			DMServ.TOrd.Delete;

          	//Confirma Transação
          	DMSERV.IBT.CommitRetaining;
          	//atualiza vew
           FiltraOrdem('');
           PCadastro.Visible:=False;
           PConsulta.Visible:=true;
           PConsulta.BringToFront;
           //EdNome.SetFocus;
           //habilita o botão "X" de fechar para que o usuário possa fechar a tela
           BtnFecha.Visible:=True;
           Exit;
		End;
   End;
   PCadastro.Visible:=False;
   PConsulta.Visible:=True;
   PConsulta.BringToFront;
end;

procedure TFOrdemRetifica.EdBuscaProdutoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	If PListaProdutos.Visible=False
   Then Begin
   	If EdBuscaProduto.Text<>''
       Then Begin
           PListaProdutos.Visible:=True;
           PListaProdutos.BringToFront;
           DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add(' SELECT * FROM VWSIMILAR order by vwsimilar.descricao ');
           DMESTOQUE.WSimilar.Open;
       End;
   End;
   If Key=Vk_ESCAPE
   Then Begin
       PListaProdutos.Visible:=False;
       LimpaLabelsPROD;
   End;
   If Key<>Vk_Return
   Then Begin
   	If (Key=VK_down) or (Key=VK_Up)
       Then Begin
       	If (Key=VK_down) Then
               DMESTOQUE.WSimilar.Next;
       	If (Key=VK_Up) Then
               DMESTOQUE.WSimilar.Prior;
       End
       Else Begin
           If DMESTOQUE.WSimilar.Locate('descricao', UpperCase(EdBuscaProduto.Text),[loPartialKey])=false
           Then Begin
               If DMESTOQUE.WSimilar.Locate('contrint', UpperCase(EdBuscaProduto.Text),[loPartialKey])=false
               Then Begin
                   XCodTmpEstoque:=DBGListaProdutos.Columns[0].Field.Text;
               End;
           End
           Else Begin
               XCodTmpEstoque:=DBGListaProdutos.Columns[0].Field.Text;
           End;
       End;
   End
   Else Begin
   	If EdBuscaProduto.Text<>''
       Then Begin
           XCodTmpEstoque:=DBGListaProdutos.Columns[0].Field.Text;
           If XCodTmpEstoque<>''
           Then Begin
               DMESTOQUE.WSimilar.Close;
               DMESTOQUE.WSimilar.SQL.Clear;
               DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR where vwsimilar.cod_estoque=:codigo');
               DMESTOQUE.WSimilar.ParamByName('codigo').AsString:=XCodTmpEstoque;
               DMESTOQUE.WSimilar.Open;
               If not DMESTOQUE.WSimilar.IsEmpty
               Then Begin
                   XCOD_ESTOQUE:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
                   EscreveLabelsPROD;
                   PListaProdutos.Visible:=False;
                   If EdQuantProd.ValueNumeric=0 Then
                       EdQuantProd.ValueNumeric:=1;
                   If XCOD_ESTOQUE>0 Then
                       EdQuantProd.SetFocus;
               End
               Else Begin
                   XCOD_ESTOQUE:=-1;
                   LimpaLabelsPROD;
               End;
           End;
       End;
   End;
end;

procedure TFOrdemRetifica.EdDataExit(Sender: TObject);
begin
  inherited;
   FrmFormaPagamento.EDCodigo.SetFocus;
end;

procedure TFOrdemRetifica.BtnConsultarClick(Sender: TObject);
begin
  inherited;
   If ConsultaOrdem=True
   Then Begin
   	//Se a OS foi devidamente encontrada ativa o painel de cadastro/alteração
   	PCadastro.Visible:=True;
	   	PCadastro.BringToFront;
   	FrmCliente.EdDescricao.SetFocus;
   End
   Else Begin
   	//Se a OS não foi devidamente encontrada desativa o painel de cadastro/alteração
   	PCadastro.Visible:=False;
       PConsulta.Visible:=True;
	   	PConsulta.BringToFront;
       EdNum.SetFocus;
   End;
end;

procedure TFOrdemRetifica.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If PCadastro.Visible=True
   Then Begin
   	If Key=VK_F5 Then
           BtnGravar.Click;
       If Key=VK_F7 Then
           BtnCancelar.Click;
       If Key=VK_F2	Then
           EdBuscaProduto.SetFocus;
       If Key=VK_F3 Then
           EdBuscaServicos.SetFocus;
   End
   Else Begin
   	If Key=VK_F4 Then
           BtnNovo.Click;
   	If Key=VK_F6 Then
           BtnConsultar.Click;
       If Key=VK_DOWN Then
           DMServ.WOrdemDesp.Next;
       If Key=VK_UP Then
           DMServ.WOrdemDesp.Prior;
       If Key=VK_F2 Then
           EDNum.SetFocus;
   End;
   // CTRL + D -> eh o comando para desbloquear a ordem de servico caso tenha ocorrido algum problema
   // qdo estava sendo consultada e caiu energia, ou foi pressionado F4 (por exemplo) e nao passou pelo
   // botão GRAVAR ou CANCELAR que liberar a ordem
   If (shift=[ssCtrl]) and (key = 68)
   Then Begin
       // faz o filtro na tabela para verificar se ela esta realmente bloqueada
       FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',DMServ.WOrdemDesp.FieldByname('cod_ordem').AsString,'');

       // se ela nao estiver bloqueada eh exibida a msg e finalizada a operação
       If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
       Then Begin
           If Mensagem('   A T E N Ç Ã O   ','Deseja desbloquear a Ordem nº ' + DMServ.WOrdemDesp.FieldByName('numero').AsString + ' ?','',2,3,false,'A')=2
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
end;

procedure TFOrdemRetifica.CBFILTROClick(Sender: TObject);
begin
  inherited;
   FiltraOrdem('');
end;

procedure TFOrdemRetifica.CBFILTROExit(Sender: TObject);
begin
  inherited;
   FiltraOrdem('');
end;

procedure TFOrdemRetifica.CBORDEMClick(Sender: TObject);
begin
  inherited;
   FiltraOrdem('');
end;

procedure TFOrdemRetifica.EDNumEnter(Sender: TObject);
begin
  inherited;
	If EDNum.Text = 'Número' then
   	EDNum.Text := ''
   Else
   	EDNum.SelectAll;
   EDNum.Font.Color := clBlack;
end;

procedure TFOrdemRetifica.EDNumExit(Sender: TObject);
begin
  inherited;
   if Trim(EdNum.Text) = '' then
        EDNum.Text := 'Número';
   EDNum.Font.Color := clGray;
end;

procedure TFOrdemRetifica.EDNumKeyPress(Sender: TObject; var Key: Char);
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

procedure TFOrdemRetifica.EDCliente1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
     If Key=#13
     Then Begin
         If (EDCliente1.Text<>'') and (EDCliente1.Text<>'Cliente')
         Then Begin
             FiltraOrdem('(vwordem.cliente like upper('+#39+'%'+EDCliente1.Text+'%'+#39+'))');
         End;
     End;
     If Key=#27
     Then Begin
         FiltraOrdem('');
     End;
end;

procedure TFOrdemRetifica.EDCliente1Enter(Sender: TObject);
begin
  inherited;
     if EDCliente1.Text = 'Cliente' then
         EDCliente1.Text := ''
     Else
     	  EDCliente1.SelectAll;
     EDCliente1.Font.Color := clBlack;
end;

procedure TFOrdemRetifica.EDCliente1Exit(Sender: TObject);
begin
  inherited;
   If Trim(EDCliente1.Text) = '' then
        EDCliente1.Text := 'Cliente';
   EDCliente1.Font.Color := clGray;
end;

procedure TFOrdemRetifica.BtnInsertProdClick(Sender: TObject);
begin
  inherited;
  	//VALIDAÇÕES
	If XCOD_ESTOQUE=-1
   Then Begin
   	MessageDlg('Por favor, selecione novamente o produto a ser inserido.', mtInformation, [mbOK], 0);
       Exit;
   End;
	If EdVlrTotProd.ValueNumeric<=0 Then
   	MessageDlg('Por favor, verifique o valor total do produto. O produto esta sendo inserido com valor zero.', mtInformation, [mbOK], 0);

   //INSERE O ITEM A LISTA
   Try

       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add('insert into itprodord');
       MDO.Query.SQL.Add('(COD_ESTOQUE, COD_ORDEM, QTD, VLRUNIT, DESCONTO, TOTAL,');
       MDO.Query.SQL.Add('DATA, COD_FUNCIONARIO, COD_CST, VALCUSTO, COEFDIV, VALCOMP, LUCMOE, LUCPER, VALREP,');

       MDO.Query.SQL.Add('NUMREQ, QTDRET, COMISSAO, VLRVENDBD, LUCREL, OPERACAO, ALIQICMS, BASEICMS,');
       MDO.Query.SQL.Add('VLRICMS, BASEICMSSUBS, VLRIPI, ALIQIPI, REDUCBASEICMS, VLRICMSSUBS,DATA_GARANTIA,KMGARANTIA)');
       MDO.Query.SQL.Add('values');
       MDO.Query.SQL.Add('(:COD_ESTOQUE, :COD_ORDEM, :QTD, :VLRUNIT, :DESCONTO,');
       MDO.Query.SQL.Add(':TOTAL, :DATA, :COD_FUNCIONARIO, :COD_CST, :VALCUSTO, :COEFDIV, :VALCOMP, :LUCMOE,');
       MDO.Query.SQL.Add(':LUCPER, :VALREP, :NUMREQ, :QTDRET, :COMISSAO, :VLRVENDBD, :LUCREL,');
       MDO.Query.SQL.Add(':OPERACAO, :ALIQICMS, :BASEICMS, :VLRICMS, :BASEICMSSUBS, :VLRIPI, :ALIQIPI,');
       MDO.Query.SQL.Add(':REDUCBASEICMS, :VLRICMSSUBS, :DATA_GARANTIA, :KMGARANTIA)');
       CalcLuc(EdVlrTotProd.ValueNumeric, 0, EdQuantProd.ValueNumeric);
       MDO.Query.ParamByName('ALIQICMS').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency;
       MDO.Query.ParamByName('ALIQIPI').AsCurrency := 0;
       MDO.Query.ParamByName('BASEICMS').AsCurrency := EdVlrTotProd.ValueNumeric;
       MDO.Query.ParamByName('BASEICMSSUBS').AsCurrency := 0;
       MDO.Query.ParamByName('COD_ESTOQUE').AsInteger := XCOD_ESTOQUE;
       MDO.Query.ParamByName('COD_FUNCIONARIO').AsInteger := XCOD_VENDEDOR;
       MDO.Query.ParamByName('COD_CST').AsString := DMEstoque.TSubProd.FieldByName('COD_CST').AsString;
       MDO.Query.ParamByName('COD_ORDEM').AsInteger := XCodOrdem;
       MDO.Query.ParamByName('COEFDIV').AsCurrency := DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency;

       If DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency <> 0
       Then Begin
       	MDO.Query.ParamByName('LUCMOE').AsCurrency := (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency/DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency);
           If (EdVlrTotProd.ValueNumeric <> 0)
           Then Begin
       		MDO.Query.ParamByName('LUCMOE').AsCurrency := EdVlrTotProd.ValueNumeric - (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency);
       		MDO.Query.ParamByName('LUCPER').AsCurrency := ((EdVlrTotProd.ValueNumeric - (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency)) * 100) / EdVlrTotProd.ValueNumeric;
           End;
       End
       Else Begin
       	MDO.Query.ParamByName('LUCMOE').AsCurrency := 0;
       End;

       MDO.Query.ParamByName('DATA').AsString := EdData.Text;
       MDO.Query.ParamByName('OPERACAO').AsString := 'VND';
       MDO.Query.ParamByName('QTD').AsCurrency := EdQuantProd.ValueNumeric;
       MDO.Query.ParamByName('TOTAL').AsCurrency := EdVlrTotProd.ValueNumeric;
       MDO.Query.ParamByName('VALCOMP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').AsCurrency * EdQuantProd.ValueNumeric;
       MDO.Query.ParamByName('VALCUSTO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency;
       MDO.Query.ParamByName('VALREP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency;
       MDO.Query.ParamByName('VLRICMS').AsCurrency := (EdVlrTotProd.ValueNumeric * DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency) / 100;
       MDO.Query.ParamByName('VLRICMSSUBS').AsCurrency := 0;
       MDO.Query.ParamByName('VLRIPI').AsCurrency := 0;
       MDO.Query.ParamByName('VLRUNIT').AsCurrency := EdVlrUnitProd.ValueNumeric;
       Try
       	MDO.Query.ExecSQL;
           mdo.Transac.CommitRetaining;
           FiltraSlave;
           Try
       		//Atualiza Estoque
       		DMEstoque.TEstoque.edit;
       		DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency-EdQuantProd.ValueNumeric;
               DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
               DMESTOQUE.TEstoque.Post;
               DMESTOQUE.TransacEstoque.CommitRetaining;
           Except
               DMESTOQUE.TransacEstoque.RollbackRetaining;
               MessageDlg('O ESTOQUE NÃO FOI ATUALIZADO', mtWarning, [mbOK], 0);
           End;
       Except
           mdo.Transac.CommitRetaining;
           MessageDlg('O ITEM NÃO FOI INSERIDO A LISTA', mtWarning, [mbOK], 0);
       End;
       XCOD_ESTOQUE:=-1;
       EdBuscaProduto.Text:='';
       EdQuantProd.Text:='';
       EdVlrUnitProd.Text:='';
       EdVlrTotProd.Text:='';
       LProduto.Caption:='';
       EdBuscaProduto.SetFocus;
   Except
   End;
end;

procedure TFOrdemRetifica.DBGridConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
   if (DMServ.WOrdemDesp.FieldByName('STATUS').AsString='ABERTO')
   Then Begin
       DBGridConsulta.Canvas.Font.Color := clRed;
       DBGridConsulta.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
end;

procedure TFOrdemRetifica.FrmResponsavelExit(Sender: TObject);
begin
  inherited;
   EdBuscaProduto.SetFocus;

end;

procedure TFOrdemRetifica.EdQuantProdExit(Sender: TObject);
begin
  inherited;
	EdVlrTotProd.ValueNumeric:=EdVlrUnitProd.ValueNumeric*EdQuantProd.ValueNumeric;
end;

procedure TFOrdemRetifica.BtnDeleteProdClick(Sender: TObject);
begin
  inherited;
	If Mensagem('   A T E N Ç Ã O   ','Deseja realmente remover o produto ' + Copy(DMESTOQUE.TSlave.FieldByname('descricao').AsString,0,20) + '. ?','',2,3,false,'I')=2
   Then Begin
       //Buscamos o estoque para retornar quantidade
       If FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '')
       Then Begin
       	//Buscamos o Item de produto
           If FiltraTabela(DMServ.TPOrd, 'itprodord', 'cod_itprodord', DMESTOQUE.TSlave.FieldByName('cod_itprodord').AsString, '')
           Then Begin
               DMESTOQUE.TEstoque.Edit;
               DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency+DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
               DMESTOQUE.TEstoque.Post;
               //Escreve texto nos componentes
               LProduto.Caption:=DMESTOQUE.TSlave.FieldByName('DESCRICAO').AsString;
               EdQuantProd.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
               EdVlrUnitProd.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency;
               EdVlrTotProd.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
               DMServ.TPOrd.Delete;
               DMServ.IBT.CommitRetaining;
               DMESTOQUE.TransacEstoque.CommitRetaining;
               FiltraSlave;
           End;
       End;
   End;
end;

procedure TFOrdemRetifica.EdBuscaServicosKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	If PListaServico.Visible=False
   Then Begin
   	If EdBuscaServicos.Text<>''
       Then Begin
           PListaServico.Visible:=True;
           PListaServico.BringToFront;
           DMServ.WSubServ.Close;
           DMServ.WSubServ.SQL.Clear;
           DMServ.WSubServ.SQL.Add(' Select * from vwsubservico  order by vwsubservico.descricao');
           DMServ.WSubServ.Open;
       End;
   End;
   If Key=Vk_ESCAPE
   Then Begin
       PListaServico.Visible:=False;
       LimpaLabelsSERV;
   End;
   If Key<>Vk_Return
   Then Begin
   	If (Key=VK_down) or (Key=VK_Up)
       Then Begin
       	If (Key=VK_down) Then
               DMServ.WSubServ.Next;
       	If (Key=VK_Up) Then
               DMServ.WSubServ.Prior;
       End
       Else Begin
           If DMServ.WSubServ.Locate('descricao', EdBuscaServicos.Text,[loPartialKey])=false
           Then Begin
               If DMServ.WSubServ.Locate('cod_interno', EdBuscaServicos.Text,[loPartialKey])=false
               Then Begin
                   XCodTmpServico:=DBGListaServicos.Columns[2].Field.Text;
               End;
           End
           Else Begin
               XCodTmpServico:=DBGListaServicos.Columns[2].Field.Text;
           End;
       End;
   End
   Else Begin
	   	If EdBuscaServicos.Text<>''
       Then Begin
           XCodTmpServico:=DBGListaServicos.Columns[3].Field.Text;
           If XCodTmpServico<>''
           Then Begin
               DMServ.WSubServ.Close;
               DMServ.WSubServ.SQL.Clear;
               DMServ.WSubServ.SQL.Add('SELECT * FROM vwsubservico where vwsubservico.cod_subservico=:codigo');
               DMServ.WSubServ.ParamByName('codigo').AsString:=XCodTmpServico;
               DMServ.WSubServ.Open;
               If not DMServ.WSubServ.IsEmpty
               Then Begin
                   XCOD_SERVICO:=DMServ.WSubServ.FieldByName('cod_subservico').AsInteger;
                   EscreveLabelsSERV;
                   PListaServico.Visible:=False;
                   If EdQuantServ.ValueNumeric=0 Then
                       EdQuantServ.ValueNumeric:=1;
                   If LServicos.Caption<>'' Then
                       EdQuantServ.SetFocus;
               End
               Else Begin
                   XCOD_SERVICO:=-1;
                   LimpaLabelsSERV;
               End;
           End;
       End;
   End;
end;

procedure TFOrdemRetifica.EdQuantServExit(Sender: TObject);
begin
  inherited;
	EdVlrTotServ.ValueNumeric:=EdVlrUnitServ.ValueNumeric*EdQuantServ.ValueNumeric;
end;

procedure TFOrdemRetifica.BitBtn1Click(Sender: TObject);
begin
  inherited;
  	//VALIDAÇÕES
	If XCOD_SERVICO=-1
   Then Begin
   	MessageDlg('Por favor, selecione novamente o serviço a ser inserido.', mtInformation, [mbOK], 0);
       Exit;
   End;
	If EdVlrTotServ.ValueNumeric<=0 Then
   	MessageDlg('Por favor, verifique o valor total do serviço. O Serviço esta sendo inserido com valor zero.', mtInformation, [mbOK], 0);

   //INSERE O ITEM A LISTA
   Try
       //Insere serviço a lista de serviços
       DMMACS.Transaction.CommitRetaining;
       XCOD_ITEMSERVICO:=InserReg(DMServ.TSOrd, 'itservord', 'cod_itservord');
       DMSERV.TSOrd.FieldByName('COD_ITSERVORD').AsInteger:=XCOD_ITEMSERVICO;
       DMSERV.TSOrd.FieldByName('COD_ORDEM').AsInteger:=XCodOrdem;
       DMSERV.TSOrd.FieldByName('COD_SERVICO').AsInteger:= XCOD_SERVICO;
       DMSERV.TSOrd.FieldByName('QTD').AsCurrency:=EdQuantServ.ValueNumeric;
       //DMSERV.TPOrd.ParamByName('COD_CST').AsInteger := DMServ.TAlx1.FieldByName('COD_CST').AsInteger;       
       DMSERV.TSOrd.FieldByName('VLRUNIT').AsCurrency:=EdVlrUnitServ.ValueNumeric;
       DMSERV.TSOrd.FieldByName('VLRUNITCUSTO').AsCurrency:=DMSERV.TSubserv.FieldByName('VLRUNIT').AsCurrency;
       DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency:=EdVlrTotServ.ValueNumeric;
       DMSERV.TSOrd.FieldByName('DATA').AsString:=EdData.Text;
       DMSERV.TSOrd.Post;
       DMSERV.IBT.CommitRetaining;
       FiltraSlave;
       EdBuscaServicos.Text:='';
       EdQuantServ.Text:='';
       EdVlrUnitServ.Text:='';
       EdVlrTotServ.Text:='';
       LServicos.Caption:='';
       EdBuscaServicos.SetFocus;
   Except
   End;

end;

procedure TFOrdemRetifica.EdBuscaProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If (Key=Vk_f2) and (key<>Vk_F3)
   Then Begin
       If AbrirForm(TFProduto, FProduto, 1)='Selected'
       Then Begin
       	If EdQuantProd.Text<>''
           Then Begin
               XCOD_ESTOQUE:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
               EscreveLabelsPROD;
               PListaProdutos.Visible:=False;
               If EdQuantProd.ValueNumeric=0 Then
                   EdQuantProd.ValueNumeric:=1;
               EdQuantProd.SetFocus;
           End;
       End;
   End;
end;

procedure TFOrdemRetifica.EdBuscaServicosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If (Key = Vk_f3) and (key<>Vk_F2)
   Then Begin
       If AbrirForm(TFServico, FServico, 1)='Selected'
       Then Begin
       	If EdQuantServ.Text<>''
           Then Begin
               XCOD_SERVICO:=DMServ.WSubServ.FieldByName('COD_SUBSERVICO').AsInteger;
               EscreveLabelsSERV;
               PListaServico.Visible:=False;
               If EdQuantServ.ValueNumeric=0 Then
                   EdQuantServ.ValueNumeric:=1;
               EdQuantServ.SetFocus;
           End;
       End;
   End;
end;

procedure TFOrdemRetifica.EdDescProdutosExit(Sender: TObject);
begin
  inherited;
   AplicaDescProdBasePercento;
end;

procedure TFOrdemRetifica.EdDescMaoObraExit(Sender: TObject);
begin
  inherited;
   AplicaDescServBasePercento;
end;

procedure TFOrdemRetifica.EdValorProdutosExit(Sender: TObject);
begin
  inherited;
   AplicaDescProdBaseValor;
end;

procedure TFOrdemRetifica.EdValorMaoObraExit(Sender: TObject);
begin
  inherited;
   AplicaDescServBaseValor;
end;

procedure TFOrdemRetifica.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
  PmRelatorio.Popup(Left+PConsulta.left+PBotoesConsulta.left+ BtnRelatorio.Left, top+PConsulta.Top+PBotoesConsulta.top+BtnRelatorio.Top+BtnRelatorio.Height);
end;

procedure TFOrdemRetifica.CompdeAbertura1Click(Sender: TObject);
Var
	ContParc, Cod_Tmp: Integer;
   Xdesc1, Xdesc2, Xdesc3: String;
begin
  inherited;
  // FSDSRel.DataSet := DMESTOQUE.TSlave;
  // FSRel.Dataset := FSDSRel;

  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RELABERTORD', 'M')=False Then
  		Exit;

   //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
   If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '')=False Then
   	Exit;

   //FILTRA DADOS PARA CABEÇALHO DA ORDEM
   DMServ.Alx.Close;
   DMServ.Alx.SQL.Clear;
   DMServ.Alx.SQL.Add(' Select ordem.cod_ordem, pessoa.nome, pessoaj.razao_social, pessoa.cpfcnpj, vwcidade.nome as cidade, ');
   DMServ.Alx.SQL.Add(' vwcidade.uf AS UF_ESTADO, pessoa.CEP, pessoa.bairro, pessoa.telrel, pessoa.endereco, pessoa.endnumero ');
   DMServ.Alx.SQL.Add(' from ordem ');
   DMServ.Alx.SQL.Add(' Left Join cliente on ordem.cod_cliente = cliente.cod_cliente ');
   DMServ.Alx.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
   DMServ.Alx.SQL.Add(' left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa ');
   DMServ.Alx.SQL.Add(' left join vwcidade on pessoa.cod_cidade = vwcidade.cod_cidade where ordem.cod_ordem=:codigo ');
   DMServ.Alx.ParamByName('codigo').AsInteger:=DMSERV.WOrdemDesp.FieldByNAme('COD_ORDEM').AsInteger;
   DMServ.Alx.Open;
   //FILTRA CLIENTE PARA ENCONTRAR PESSOA
   If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMSERV.WOrdemDesp.FieldByNAme('COD_CLIENTE').AsString, '')=False
   Then Begin
   	MessageDlg('Verifique o cliente para a ordem', mtWarning, [mbOK], 0);
		Exit;
   End;

   //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
   If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '')=False
   Then Begin
   	MessageDlg('Por favor, cadastre novamente o cliente', mtWarning, [mbOK], 0);
   	Exit;
   End;
   //FILTRA PESSOA JURIDICA CASO EXISTA UMA PARA IMPRESSÃO DE CLIENTE
   FiltraTabela(DMPESSOA.TPessoaj, 'PESSOAJ', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');


   //FILTRA CIDADE DO CLIENTE
   FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMPESSOA.TPessoa.FieldByNAme('COD_CIDADE').AsString, '');

   //FILTRA ESTADO DO CLIENTE
   FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '');

   //FILTRA TELEFONE PARA IMPRESSÃO DE CLIENTE
   FiltraTabela(DMPESSOA.TALX, 'TELEFONE', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');

   //FILTRA ORDEM PARA IMPRESSÃO
   If FiltraTabela(DMSERV.TOrd, 'ORDEM', 'COD_ORDEM', DMSERV.WOrdemDesp.FieldByNAme('COD_ORDEM').AsString, '')=False Then
   	Exit;

   //FILTRA EQUIPAMENTO PARA IMPRESSÃO
   If DMSERV.TOrd.FieldByNAme('COD_EQUIPAMENTO').AsString<>'' Then
      FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', DMSERV.TOrd.FieldByNAme('COD_EQUIPAMENTO').AsString, '');


   //FILTRA FORMA DE PAGAMENTO
   FiltraTabela(DMFINANC.TFormPag , 'FORMPAG', 'COD_FORMPAG', DMSERV.TOrd.FieldByNAme('COD_FORMPAG').AsString, '');

   //FILTRA FUNCIONARIO RESPONSAVEL
   FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', IntToStr(DMSERV.WOrdemDesp.FieldByNAme('COD_FUNCIONARIO').AsInteger) , '');

   XCodOrdem:=DMSERV.WOrdemDesp.fieldbyname('COD_ORDEM').AsInteger;

   //FILTRA PRODUTOS, SERVIÇOS E DESPESAS
	FiltraSlave;


   // se a atividade for EQUIPE, eh selecionado as despesas
   If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE') and (DMMACS.TLoja.FieldByName('MODELOORDEM').AsString='6')
   Then Begin
       DMESTOQUE.Alx4.Close;
       DMESTOQUE.Alx4.SQL.Clear;
       DMESTOQUE.Alx4.SQL.Add('select despadic.cod_gerador, despadic.despesa, equipe.cod_equipe, equipe.descricao from despadic');
       DMESTOQUE.Alx4.SQL.Add('left join equipe on despadic.cod_equipe = equipe.cod_equipe');
       DMESTOQUE.Alx4.SQL.Add('where despadic.cod_gerador = :codigo');
       DMESTOQUE.Alx4.ParamByName('codigo').AsInteger := XCodOrdem;
       DMESTOQUE.Alx4.Open;
   End;


   //a situação financeira será gerado na tabela tmp para ser impressa
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add(' delete from tmp ');
   DMMACS.TMP.ExecSQL;
   DMMACS.Transaction.CommitRetaining;
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add(' SELECT * FROM TMP ');
   DMMACS.TMP.Open;

   Cod_Tmp:=1;
   If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
   Then Begin
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=Cod_Tmp;
       DMMACS.TMP.FieldByName('DESC1').AsString:='À Vista';
       if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger <> 10 then
       begin
           DMMACS.TMP.FieldByName('DESC2').AsString:=DMServ.TOrd.FieldByName('TIPOPAG').AsString;
           DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMServ.TOrd.FieldByName('totord').AsCurrency;
       end
       else begin
           DMMACS.TMP.FieldByName('OBS').AsString:=DMServ.TOrd.FieldByName('TIPOPAG').AsString;
           DMMACS.TMP.FieldByName('DESC3').AsString:=FormatFloat('#,###0.00', DMServ.TOrd.FieldByName('totord').AsCurrency);
       end;
       DMMACS.TMP.Post;
       Cod_Tmp:=Cod_Tmp+1;
	End
   Else Begin
       //insere sql necessária para filtrar parcelas da conta
       DMMacs.TALX.Close;
       DMMacs.TALX.sql.Clear;
       DMMacs.TALX.SQL.Add('SELECT parcelacr.dtvenc, parcelacr.cobranca, parcelacr.valor FROM parcelacr left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
       DMMacs.TALX.SQL.Add(' Where (ctareceber.tipogerador='+#39+'ORD'+#39+') And (ctareceber.cod_gerador=:CODGERADOR) ');
       DMMacs.TALX.ParamByName('CODGERADOR').AsInteger:= XCodOrdem;
       DMMacs.TALX.Open;

       //Assume parcelas em campo blob de loja para após ser passado em relatóri
       Xdesc1:='';
       Xdesc2:='';
       Xdesc3:='';

       DMMACS.TALX.First;
       ContParc:=0;
       while not DMMACS.TALX.Eof do
       Begin
           //Paulo 28/06/2011: Para armazenar as parcelas somente p/ o modelo 10
           if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 10 then
           begin
               Xdesc1:=Xdesc1+DMMacs.TALX.FieldByName('dtvenc').AsString+#13;
               Xdesc2:=Xdesc2+DMMacs.TALX.FieldByName('cobranca').AsString+#13;
               Xdesc3:=Xdesc3+FormatFloat('#,###0.00', DMMacs.TALX.FieldByName('valor').AsCurrency)+#13;
           end
           else begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=Cod_Tmp;
               DMMACS.TMP.FieldByName('DESC1').AsString:=DMMacs.TALX.FieldByName('dtvenc').AsString;
               DMMACS.TMP.FieldByName('DESC2').AsString:=DMMacs.TALX.FieldByName('cobranca').AsString;
               DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMMacs.TALX.FieldByName('valor').AsCurrency;
               DMMACS.TMP.Post;
               Cod_Tmp:=Cod_Tmp+1;
           end;
           DMMACS.TALX.Next;
           ContParc:=ContParc+1;
       End;
       //Paulo 28/06/2011: Para armazenar as parcelas somente p/ o modelo 10
       if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 10 then
       begin
             DMMACS.TMP.Insert;
             DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=Cod_Tmp;
             DMMACS.TMP.FieldByName('DESC1').AsString:=Xdesc1;
             DMMACS.TMP.FieldByName('OBS').AsString:=Xdesc2;
             DMMACS.TMP.FieldByName('DESC3').AsString:=Xdesc3;
             DMMACS.TMP.Post;
       end;
   End;
   DMMACS.Transaction.CommitRetaining;
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add(' SELECT * FROM TMP ');
   DMMACS.TMP.Open;
   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertRetifica.frf');
   FSRel.ShowReport;
end;

procedure TFOrdemRetifica.BtnFechaPedClick(Sender: TObject);
begin
  inherited;
  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('FECHORD', 'M')=False Then
  		Exit;

   // repassando valor do cidgo da ordem para variavel
   XCodOrdem := DMServ.WOrdemDesp.FieldByname('cod_ordem').AsInteger;

   // BUSCANDO DADOS DA ORDEM
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCodOrdem),'');

   // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
   If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
   Then Begin
       Mensagem('    A T E N Ç Ã O   ','A ORDEM ESTÁ SENDO USADA NO MOMENTO.'+#13+'Use Ctrl+D para destravar','',1,1,false,'I');
       Exit;
   End;

   If DMServ.TOrd.FieldByName('STATUS').AsString <> 'ABERTO'
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



           //LIMPA VALORES ANTIGOS
	   	   	FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '');
           If ControlAccess('GERAFINANC', '')=True Then
               CBGeraFinanceiro.Visible:=true;

      		//FORMA DE PAGAMENTO
      		XCodCliente:=DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger;
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

           XCOD_CONTA:=-1;
           FrmConta.EdDescricao.Text:='';
           FrmConta.EDCodigo.Text:='';
           XCOD_CONTASERV:=-1;
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
                   FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                   FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               End
               Else Begin
                   XCOD_CONTA:=-1;
                   FrmConta.EDCodigo.Text:='';
                   FrmConta.EdDescricao.Text:='';
       	End;
           //SERVIÇO
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
           End
           Else Begin//Busca conta para À Prazo
               //PRODUTO
               If DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsString<>''
               Then Begin//se existir uma conta padrao configurada
                   XCOD_CONTA:=DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger;
                   FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCod_Conta), '');
                   FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                   FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               End
               Else Begin
                   XCOD_CONTA:=-1;
                   FrmConta.EDCodigo.Text:='';
                   FrmConta.EdDescricao.Text:='';
               End;
               //SERVIÇO
               If DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsString<>''
               Then Begin//se existir uma conta padrao configurada
                   XCOD_CONTASERV:=DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger;
                   FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCOD_CONTASERV), '');
                   FrmContaServ.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                   FrmContaServ.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               End
               Else Begin
                   XCOD_CONTASERV:=-1;
                   FrmContaServ.EDCodigo.Text:='';
                   FrmContaServ.EdDescricao.Text:='';
               End;
           End;
           FrmFormPag.EDCodigo.SetFocus;

           FrmFormPag.Refresh;
          	FrmConta.EDCodigo.SetFocus;
          	FrmContaServ.EDCodigo.SetFocus;
         	CBPagamento.SetFocus;
          	FPFinanceiro.Refresh;
       End; 
	End;
end;

procedure TFOrdemRetifica.DBGridConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridConsulta.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\Ordem.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFOrdemRetifica.BtnMoedaCancelarClick(Sender: TObject);
begin
  inherited;
   PFinanceiro.Visible:=False;
   PCadastro.Visible:=False;
   PConsulta.Visible:=true;
   PConsulta.BringToFront;

   // BUSCANDO DADOS DA ORDEM
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString,'');

   // EDITANDO ORDEM DE SERVICO PARA LIBERAR SEU USO CASO SEJA NECESSARIO
   DMServ.TOrd.Edit;
   DMServ.TOrd.FieldByName('EDIT').AsString := '0';
   DMServ.TOrd.Post;
   DMServ.IBT.CommitRetaining;
end;

procedure TFOrdemRetifica.FrmFormPagBTNOPENClick(Sender: TObject);
begin
  inherited;
   If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
		XCodFormPag:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       FrmFormPag.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
       FrmFormPag.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   End;
end;

procedure TFOrdemRetifica.FrmContaBTNOPENClick(Sender: TObject);
Var
	Oper: Char;
begin
  inherited;
   Oper:='C';

   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   XTIPO_CONTA := 'C';

	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XCOD_CONTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
   FrmConta.Refresh;
end;

procedure TFOrdemRetifica.FrmContaServBTNOPENClick(Sender: TObject);
   Var
	Oper: Char;
begin
  inherited;
   Oper:='C';
   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   XTIPO_CONTA := 'C';

	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XCOD_CONTASERV:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmContaServ.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmContaServ.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
   FrmConta.Repaint;
   FrmConta.Refresh;
end;

procedure TFOrdemRetifica.FrmContaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCOD_CONTA:=-1;
   FrmConta.EDCodigo.Text:='';
   FrmConta.EdDescricao.Text:='';
   FrmConta.Refresh;
end;

procedure TFOrdemRetifica.BtnMoedaOKClick(Sender: TObject);
var
   XCodPedidoGerador :Integer; // - 16/03/2009: guarda codigo do pedido
   XFlag : Boolean; // - 13/03/2009: verifica se deve imprimir NF depois do cupom conforme configurado em caixa
   XNumAuxECF:String; // - 16/03/2009: armazena numero auxiliar cupom
begin
  inherited;
   //valida quanto a forma de pagamento
	If CBPagamento.Text=''
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
	If XCOD_CONTA=-1
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma conta para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmConta.EDCodigo.SetFocus;
       Exit;
   End;

   //Valida Quanto a conta
   If Not FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', '', '', 'Where (COD_FILIAL='+FMenu.LCODEMPRESA.Caption+') And (CLASSIFICACAO='+FrmConta.EDCodigo.Text+')')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma conta válida para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmConta.EDCodigo.SetFocus;
       Exit;
   End;

   //valida quanto a forma de pagamento
	If XCodFormPag=-1
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma forma de pagamento para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmFormPag.EDCodigo.SetFocus;
       Exit;
   End;

   //Paulo 14/03/2011: Verifica se gera financeiro ou não(para controle de fatura)
   if CBGeraFinanceiro.Checked = True then
   begin
       XFatOrd:=True;
   end
   else begin
       XFatOrd:=False;
   end;

   XCodPedidoGerador := DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsInteger;
	XCodOrdem:=DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsInteger;
   FechaOrd(DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString, EdDtFech.Text);
   XFlag := True; // - 13/03/2009: deixar como true caso não for ECF poderá ser emitido NF igual

   // - 13/03/2009: add para impressoa de cupom fiscal
   If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='ECF'
   Then Begin
       // - 13/03/2009: se em caixa estiver configurado para emitir NF apos ECF
       If DMCAIXA.TCaixa.FieldByName('EMITNF').AsString='1'
       Then Begin
         If Mensagem('A T E N Ç Ã O', 'Deseja Imprimir Nota Fiscal para o pedido'+#13+'Nº '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 3
         Then Begin
                XFlag := False;
         End;
       End;
   End;

   // - 13/03/2009: verificação p/ imprimir NF
   If ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe') or((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='ECF') And (XFlag)))
   Then Begin
       //Atualiza o Valor da NF
       FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');

       FMenu.TIPOREL := 'NF';
       //Imprime NOTA Fiscal
		If Mensagem('C O N F I R M A Ç Ã O', 'A Impressora esta pronta?'  , '', 2, 3, False, 'c')= 2
       Then Begin
       	FiltraTabela(DMServ.WOrdemDesp, 'VWORDEM', 'COD_ORDEM', IntToStr(XCodOrdem), '');
           AbreFiscal;
           //REGISTRA COMANDO DO USUARIO
           Registra('ORDEM DE SERVIÇO', 'NF', DMServ.WOrdemDesp.FieldByName('dtabert').AsString, 'Nº '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString, 'Valor: '+DMServ.WOrdemDesp.FieldByName('total').AsString);
       End;
   End;
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
   PCadastro.Visible:=False;
   PConsulta.Visible:=true;
   PConsulta.BringToFront;

   //Paulo 10/08/2011: Para imprimir o Comp da OS
   FiltraTabela(DMServ.WOrdemDesp,'VWORDEM','COD_ORDEM',IntToStr(XCodOrdem),'');
   CompdeAbertura1Click(Sender);

end;

procedure TFOrdemRetifica.BitBtn2Click(Sender: TObject);
begin
  inherited;
	If Mensagem('   A T E N Ç Ã O   ','Deseja realmente remover a Mão de Obra ' + Copy(DMESTOQUE.TSlaveServ.FieldByname('descricao').AsString,0,20) + '. ?','',2,3,false,'I')=2
   Then Begin
       	//Buscamos o Item de produto
           If FiltraTabela(DMServ.TSOrd, 'itservord', 'cod_itservord', DMESTOQUE.TSlaveServ.FieldByName('cod_itservord').AsString, '')
           Then Begin
               //Escreve texto nos componentes
               LServicos.Caption:=DMESTOQUE.TSlaveServ.FieldByName('DESCRICAO').AsString;
               EdQuantServ.ValueNumeric:=DMESTOQUE.TSlaveServ.FieldByName('QTD').AsCurrency;
               EdVlrUnitServ.ValueNumeric:=DMESTOQUE.TSlaveServ.FieldByName('VLRUNIT').AsCurrency;
               EdVlrTotServ.ValueNumeric:=DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency;
               DMServ.TSOrd.Delete;
               DMServ.IBT.CommitRetaining;
               FiltraSlave;
           End;
   End;
end;

procedure TFOrdemRetifica.FrmClienteEdDescricaoExit(Sender: TObject);
begin
  inherited;
//	PListaClientes.Visible:=False;
end;

procedure TFOrdemRetifica.DBGListaClienteDblClick(Sender: TObject);
begin
  inherited;
   SelecionaClienteLista;
end;

procedure TFOrdemRetifica.DBGListaClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN Then
       SelecionaClienteLista;
end;

procedure TFOrdemRetifica.BtnCancelamentosClick(Sender: TObject);
Var
	XCodPedidoTroca: String;
begin                                                               
 // inherited;
   FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '');

	{If (DMServ.WOrdemDesp.FieldByName('numfiscal').AsString<>'0') AND (DMServ.WOrdemDesp.FieldByName('numfiscal').AsString<>'')
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO','Esta O.S. Passou por uma impressão fiscal e não pode mais ter seu fechamento cancelado.', '', 1, 1, False, 'a');
       Exit;
   End; }

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
			If DMServ.WOrdemDesp.FieldByName('TIPOPAG').AsString='Multiplo'
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

procedure TFOrdemRetifica.DbDieselClick(Sender: TObject);
begin
  inherited;
  	If DbDiesel.Checked= true Then
   	MarcaDesmarcaCombustivel(1)
   Else
   	MarcaDesmarcaCombustivel(-1)
end;

procedure TFOrdemRetifica.CbGasolinaClick(Sender: TObject);
begin
  inherited;
  	If CbGasolina.Checked=True Then
   	MarcaDesmarcaCombustivel(2)
   Else
   	MarcaDesmarcaCombustivel(-1);
end;

procedure TFOrdemRetifica.CbAlcoolClick(Sender: TObject);
begin
  inherited;
	If CbAlcool.Checked=True Then
   	MarcaDesmarcaCombustivel(3)
   Else
       MarcaDesmarcaCombustivel(-1);
end;

procedure TFOrdemRetifica.CBFlexClick(Sender: TObject);
begin
  inherited;
  	If CBFlex.Checked=True Then
   	MarcaDesmarcaCombustivel(4)
   Else
       MarcaDesmarcaCombustivel(-1);
end;

procedure TFOrdemRetifica.EdMarcaEnter(Sender: TObject);
begin
  inherited;
	PListaClientes.Visible:=False;
end;

procedure TFOrdemRetifica.MObsEnter(Sender: TObject);
begin
  inherited;
	PListaClientes.Visible:=False;
end;

procedure TFOrdemRetifica.Panel2Enter(Sender: TObject);
begin
  inherited;
	PListaClientes.Visible:=False;
end;

procedure TFOrdemRetifica.EdQuantProdEnter(Sender: TObject);
begin
  inherited;
   PListaProdutos.Visible:=False;
end;

procedure TFOrdemRetifica.DBGListaProdutosDblClick(Sender: TObject);
begin
  inherited;
    XCOD_ESTOQUE:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
    EscreveLabelsPROD;
    PListaProdutos.Visible:=False;
    If EdQuantProd.ValueNumeric=0 Then
       EdQuantProd.ValueNumeric:=1;
    If XCOD_ESTOQUE>0 Then
       EdQuantProd.SetFocus;
end;

procedure TFOrdemRetifica.DBGListaProdutosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
       XCOD_ESTOQUE:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
       EscreveLabelsPROD;
       PListaProdutos.Visible:=False;
       If EdQuantProd.ValueNumeric=0 Then
           EdQuantProd.ValueNumeric:=1;
       If XCOD_ESTOQUE>0 Then
           EdQuantProd.SetFocus;
   End;
end;

procedure TFOrdemRetifica.EdQuantServEnter(Sender: TObject);
begin
  inherited;
	PListaServico.Visible:=False;
end;

procedure TFOrdemRetifica.DBGListaServicosDblClick(Sender: TObject);
begin
  inherited;
    XCOD_SERVICO:=DMServ.WSubServ.FieldByName('cod_subservico').AsInteger;
    EscreveLabelsSERV;
    PListaServico.Visible:=False;
    If EdQuantServ.ValueNumeric=0 Then
       EdQuantServ.ValueNumeric:=1;
    If LServicos.Caption<>'' Then
       EdQuantServ.SetFocus;
end;

procedure TFOrdemRetifica.DBGListaServicosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  	 If key=#13
    Then begin
        XCOD_SERVICO:=DMServ.WSubServ.FieldByName('cod_subservico').AsInteger;
        EscreveLabelsSERV;
        PListaServico.Visible:=False;
        If EdQuantServ.ValueNumeric=0 Then
           EdQuantServ.ValueNumeric:=1;
        If LServicos.Caption<>'' Then
           EdQuantServ.SetFocus;
    End;
end;

procedure TFOrdemRetifica.RecuperarDados1Click(Sender: TObject);
Var
	XChaveNfe: String;
begin
  inherited;
	If FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_ordem', DMServ.WOrdemDesp.FieldByName('cod_ordem').AsString, '')=True
   Then Begin
   	If DMServ.TFiscOrd.FieldByName('nfestatus').AsInteger=2
       Then Begin
       	If Mensagem('Confirmação do usuário', 'Deseja realmente Retornar os dados para a Ordem de Número '+DMServ.WOrdemDesp.FieldByName('numero').AsString+'?', '', 2, 3, False, 'c')=2
       	Then Begin
           	If InputQuery('Chave de Acesso','Informe a Chave de Acesso da NFe para recuperar os Dados', XChaveNfe)=True
               Then Begin
				    FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
					FMzrNfe.SetInFiscal(XChaveNfe, DMServ.WOrdemDesp.FieldByName('cod_ordem').AsInteger, DMServ.WOrdemDesp.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'RETORNADADOS', 1, '', '', '', 0, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    				FMzrNfe.ShowModal;
               End;
           End;

       End
       Else Begin
       	MessageDlg('Os dados não podem ser recuperados devido ao fato que a OS esta marcada como NFe enviada e homologada'+#13+#10+'NFeStatus = 1 ou 3', mtWarning, [mbOK], 0);
       End;
   End;
end;

procedure TFOrdemRetifica.VisualizarDanfe1Click(Sender: TObject);
begin
  inherited;
   //Filtra se o pedido tem serviço cadastrado
   IF(FiltraTabela(DMSAIDA.TAlx,'DESPADIC','COD_GERADOR',IntToStr(DMServ.WOrdemDesp.FieldByName('cod_ordem').AsInteger),''))=True
   then begin
      If DMMACS.TLoja.FieldByName('SERVNFE').AsString<>'1' then
          XServicoOp:=True;

   end;
	FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
   FMzrNfe.SetInFiscal('', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger, 0, 'ORDEM', '', 1, '', '', '', 0,0, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
   FMzrNfe.DanfeVisualizar;
   FMzrNfe := NIL;
end;

procedure TFOrdemRetifica.ConsultarStatusNFe1Click(Sender: TObject);
begin
  inherited;
	 FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
    FMzrNfe.SetInFiscal('', DMServ.WOrdemDesp.FieldByName('cod_ordem').AsInteger, DMServ.WOrdemDesp.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'CONSULTAR', 1, '', '', '', DMServ.WOrdemDesp.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    FMzrNfe.ShowModal;
end;

procedure TFOrdemRetifica.VerificarServidorSefaz1Click(Sender: TObject);
begin
  inherited;
		FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
       FMzrNfe.SetInFiscal('', 0, 0, 'ORDEM', 'STATUSSERV', 1, '', '', '', 0, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
       FMzrNfe.ShowModal;
end;

procedure TFOrdemRetifica.ListaNfe1Click(Sender: TObject);
begin
  inherited;
	AbrirForm(TFListaNfe, FListaNfe, 0);
end;

procedure TFOrdemRetifica.InutilizarNumerao1Click(Sender: TObject);
begin
  inherited;
    If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente Inutilizar Numeração de Nota Fiscal Eletrônica ?'  , '', 2, 3, False, 'c')= 2
    Then Begin
       FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
       FMzrNfe.SetInFiscal('', DMServ.WOrdemDesp.FieldByName('cod_ordem').AsInteger, DMServ.WOrdemDesp.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'INUTILIZAR', 1, '', '', '', 0, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
       FMzrNfe.ShowModal;
    End;
end;

procedure TFOrdemRetifica.SalvarXMLDistribuio1Click(Sender: TObject);
var
   Xcfop:String;
begin
  inherited;
       XSafeXmlDist:=True;    
       //Paulo 13/01/2011: Gera Nfe distribuição base no pedido selecionado
       //Seta os dados para chamar a função
       FiltraTabela(DMMACS.TPeriodoFiscal,'PERIODOFISCAL','FECHADO','N','');
       FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger),'');
       FiltraTabela(DMServ.Alx,'DOCFISORD','COD_ORDEM',IntToStr(DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger),'');
       FiltraTabela(DMESTOQUE.Alx,'CFOP','COD_CFOP',IntToStr(DMServ.Alx.FieldByName('COD_CFOP').AsInteger),'');
       FiltraTabela(DMESTOQUE.Alx1,'CFOP','COD_CFOP',IntToStr(DMServ.Alx.FieldByName('COD_CFOP1').AsInteger),'');
       FiltraTabela(DMESTOQUE.Alx2,'CFOP','COD_CFOP',IntToStr(DMServ.Alx.FieldByName('COD_CFOP2').AsInteger),'');
       FiltraTabela(DMESTOQUE.Alx3,'VWCLIENTE','COD_CLIENTE',IntToStr(DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger),'');
       FiltraTabela(DMESTOQUE.Alx4,'CIDADE','COD_CIDADE',IntToStr(DMESTOQUE.Alx3.FieldByName('COD_CIDADE').AsInteger),'');
       FiltraTabela(DMESTOQUE.Alx5,'ESTADO','COD_ESTADO',IntToStr(DMESTOQUE.Alx4.FieldByName('COD_ESTADO').AsInteger),'');

       Xcfop:= DMESTOQUE.Alx.FieldByName('CFOP').AsString +'/'+ DMESTOQUE.Alx1.FieldByName('CFOP').AsString +'/'+ DMESTOQUE.Alx2.FieldByName('CFOP').AsString;
       XXmlNfe:= DMServ.Alx.FieldByName('NFEXML').AsString;
       XNfeRecibo:= DMServ.Alx.FieldByName('NFERECIBO').AsString;
       XNfeTipoAmbiente:= DMServ.Alx.FieldByName('NFEAMBIENTE').AsInteger;
       XUfLocal:= 'PR';
       XNfeChave:= DMServ.Alx.FieldByName('NFECHAVE').AsString;
       XSetInPeriodoFiscal:=DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;

       FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
       FMzrNfe.SetInFiscal(XSetInPeriodoFiscal, DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger, DMServ.WOrdemDesp.FieldByName('COD_CLIENTE').AsInteger, 'ORDEM', 'EMITIR', 1, Xcfop,
                           DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString, DMServ.WOrdemDesp.FieldByName('FORMAPAG').AsString, StrToInt(DMServ.Alx.FieldByName('NUMDOCFIS').AsString),
                           DMServ.WOrdemDesp.FieldByName('DTABERT').AsDateTime, IntToStr(DMESTOQUE.Alx4.FieldByName('COD_IBGE').AsInteger), DMESTOQUE.Alx4.FieldByName('NOME').AsString,
                           DMESTOQUE.Alx5.FieldByName('UF_ESTADO').AsString, DMServ.Alx.FieldByName('BASEICMS').AsFloat, DMServ.Alx.FieldByName('VLRICMS').AsFloat,
                           DMServ.Alx.FieldByName('VLRTOTIPI').AsFloat, DMServ.Alx.FieldByName('BASCALSUBS').AsFloat, DMServ.Alx.FieldByName('VLRICMSUBS').AsFloat,
                           DMServ.Alx.FieldByName('VLRTOTPROD').AsFloat, DMServ.Alx.FieldByName('VLRFRETE').AsFloat, DMServ.Alx.FieldByName('VLRSEG').AsFloat,
                           DMServ.Alx.FieldByName('VLRDESCONTO').AsFloat, DMServ.Alx.FieldByName('VLROUTRASDESP').AsFloat, DMServ.Alx.FieldByName('VLRTOTDOCNF').AsFloat, DMServ.Alx.FieldByName('valortotaltributa').AsFloat);
       FMzrNfe.ShowModal;
end;

procedure TFOrdemRetifica.CancelarNFe1Click(Sender: TObject);
begin
  inherited;
		If DMServ.WOrdemDesp.FieldByName('STATUS').AsString='CANCELADO'
   	Then Begin
			MessageDlg('NFe já cancelada', mtWarning, [mbOK], 0);
   	End
   	Else Begin
       	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente cancelar a Nota Fiscal Eletrônica Nº '+DMServ.WOrdemDesp.FieldByName('numfiscal').AsString+'?'  , '', 2, 3, False, 'c')= 2
       	Then Begin
           	FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
           	FMzrNfe.SetInFiscal('', DMServ.WOrdemDesp.FieldByName('cod_ordem').AsInteger, DMServ.WOrdemDesp.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'CANCELAR', 1, '', '', '', DMServ.WOrdemDesp.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
           	FMzrNfe.ShowModal;
       	End;
   	End;
end;

//Função Utilizada para gerar a tela do fiscal a partir da tela de consulta
Function TFOrdemRetifica.AbreFiscal: Boolean;
Begin
	Result:=True;
   Try
       If FiltraTabela(DMServ.WOrdem, 'vwordem', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '')=True
       Then Begin
		    DMServ.WOrdemDesp.FieldByName('COD_CLIENTE').AsInteger;
		    AbrirForm(TFFiscalOrdem, FFiscalOrdem, 0);
       End
       Else Begin
           MessageDlg('O View da ordem retifica não foi encontrado', mtWarning, [mbOK], 0);
       End;
   Except
      Result:=False;
   End
End;

procedure TFOrdemRetifica.ReeimprimirNF1Click(Sender: TObject);
begin
  inherited;
    //repassa resultado da tela de autenticação de senha para as variáveis de controle
    XAlxResult:=True;
    If XAlxResult=True
    Then Begin
       If DMServ.WOrdemDesp.FieldByName('STATUS').AsString='ABERTO'
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'PARA EFETUAR A IMPRESSÃO FISCAL O PEDIDO DEVE ESTAR FECHADO.'+#13+'Antes de fechar confira todas as informações do pedido.', '', 1, 1, False, 'a');
           Exit;
       End;
       If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '')=True
       Then Begin
           If Mensagem('A T E N Ç Ã O', 'DESEJA IMPRIMIR O DOCUMENTO FISCAL PARA O PEDIDO:'+#13+'Nº '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
           Then Begin
           	FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');

               If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NF')  or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NFe')
               Then Begin
                   DMServ.TFiscOrd.Close;
                   DMServ.TFiscOrd.SQL.Clear;
                   DMServ.TFiscOrd.SQL.Add(' Select * from docfisord where docfisord.cod_ordem=:Codigo ' );
                   DMServ.TFiscOrd.ParamByName('Codigo').AsInteger:=DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
                   DMServ.TFiscOrd.Open;
                   If not DMServ.TFiscOrd.IsEmpty
                   Then Begin
                       If (DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger=1) or (DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger=3)
                       Then Begin
                           //Se Documento Fiscal Enviado ou Cancelado
                           MessageDlg('Esta O.S já gerou uma Nota Fiscal Eletrônica enviada e recebida pelo sefaz. Sendo assim não pode mais ser transmitida.', mtWarning, [mbOK], 0);
                           Exit;
                       End;
                   End;

                  //REIMPRIME NOTA FISCAL
                   FMenu.TIPOREL:='RNF';
                   If MessageDlg('Impressora NF Pronta?', mtConfirmation, [mbYes, mbNo], 0)=mryes
                   Then Begin
                       FMenu.TIPOREL := 'NF';
                       AbreFiscal;
                   	Registra('ORDEM DE SERVIÇO', 'NF', DMServ.WOrdemDesp.FieldByName('dtabert').AsString, 'Nº '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString, 'Valor: '+DMServ.WOrdemDesp.FieldByName('total').AsString);
					End;
               End;
           End;
       End;
    End;  
end;

procedure TFOrdemRetifica.EdFiscalEnter(Sender: TObject);
begin
  inherited;
   if EdFiscal.Text = 'Nº Fiscal' then
        EdFiscal.Text := ''
   else
    EdFiscal.SelectAll;

   EdFiscal.Font.Color := clBlack;
end;

procedure TFOrdemRetifica.EdFiscalExit(Sender: TObject);
begin
  inherited;
   if Trim(EdNum.Text) = '' then
        EDNum.Text := 'Nº Fiscal';
   EDNum.Font.Color := clGray;
end;

procedure TFOrdemRetifica.EdFiscalKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   If Key=#13
   Then Begin
       If (EdFiscal.Text<>'') and (EdFiscal.Text<>'Nº Fiscal')
       Then Begin
           FiltraOrdem('(vwordem.numfiscal like '+#39+'%'+EdFiscal.Text+#39+')');
       End;
   End;
   If Key=#27
   Then Begin
       FiltraOrdem('');
   End;
end;

procedure TFOrdemRetifica.EdPlacaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (EdPlaca.SelLength > 0) And NOT (KEY = 8) and not (KEY = 13) and not (KEY = 27) then
   begin
       EdPlaca.Text := '';
   end;

   if (Length(EdPlaca.Text)= 3) AND NOT (KEY = 8) then BEGIN
       EdPlaca.Text := EdPlaca.Text+'-';
       EdPlaca.SelStart := 4;
   END;
end;

End.












