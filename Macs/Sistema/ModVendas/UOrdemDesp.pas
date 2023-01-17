unit UOrdemDesp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, ExtCtrls, StdCtrls, TFlatEditUnit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxControls, cxContainer, cxEdit, cxGroupBox,
  Grids, DBGrids, ComCtrls, DBCtrls, DBColorEdit, FashionPanel,
  TFlatTabControlUnit, UFrmBusca, ColorMaskEdit, EditFloat, ColorEditFloat,
  Mask, FR_DSet, FR_DBSet, FR_Class, Menus;

type
  TFOrdemDesp = class(TFPadrao)
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
    EdPlaca: TFlatEdit;
    EDNum: TFlatEdit;
    EDCliente: TFlatEdit;
    EdRenavam: TFlatEdit;
    PCadastro: TPanel;
    Panel4: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    Shape12: TShape;
    BtnGravar: TBitBtn;
    BtnCancelar: TBitBtn;
    FrmCliente: TFrmBusca;
    FBEquipPlaca: TFrmBusca;
    EdObsFinanceira: TEdit;
    FrmFormPag1: TFrmBusca;
    Label24: TLabel;
    EdContatoCliente: TDBEdit;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    RGSituacao: TRadioGroup;
    lbDiaSemanaPrev: TLabel;
    DBDTPREV: TColorMaskEdit;
    Label25: TLabel;
    lbDiaSemanaAbert: TLabel;
    DBDTABERT: TColorMaskEdit;
    LTextoBusca: TLabel;
    BtnProcServ: TBitBtn;
    Label27: TLabel;
    EdCodInternoServ: TColorEditFloat;
    Label9: TLabel;
    EDQtdServ: TColorEditFloat;
    Label12: TLabel;
    EDVlrUnitServ: TColorEditFloat;
    Label13: TLabel;
    EdDescServ: TColorEditFloat;
    Label14: TLabel;
    EdVlrtotalServ: TColorEditFloat;
    Label22: TLabel;
    BtnInsertServ: TBitBtn;
    BtnDeleteServ: TBitBtn;
    Shape2: TShape;
    LServico: TLabel;
    EdValorTotal: TColorEditFloat;
    EdNumero: TColorEditFloat;
    MObs: TMemo;
    LQTDSERV: TLabel;
    Label1: TLabel;
    EdVlrCustoServ: TColorEditFloat;
    EdAtendente: TEdit;
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
    FrmVendedor: TFrmBusca;
    FSRel: TfrReport;
    FSDSRel: TfrDBDataSet;
    BitBtn1: TBitBtn;
    PMServicos: TPopupMenu;
    CancelarFatura1: TMenuItem;
    EdVlrAdiantamento: TColorEditFloat;
    BtBaixaAdiantamento: TBitBtn;
    BtCancelaBaixaAdiantamento: TBitBtn;
    Label5: TLabel;
    Label7: TLabel;
    lbSaldo: TLabel;
    FSDSfinam: TfrDBDataSet;
    EdSacado: TFlatEdit;
    PMRel: TPopupMenu;
    CompAbertura1: TMenuItem;
    RelOSDespachante1: TMenuItem;
    DBGridResumoOS: TDBGrid;
    RelSintticoOS1: TMenuItem;
    CtasReceberporSacado1: TMenuItem;
    BtnSelecionar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure EDNumEnter(Sender: TObject);
    procedure EdRenavamEnter(Sender: TObject);
    procedure EdPlacaEnter(Sender: TObject);
    procedure EDClienteEnter(Sender: TObject);
    procedure CBFILTROPropertiesEditValueChanged(Sender: TObject);
    procedure EDNumKeyPress(Sender: TObject; var Key: Char);
    procedure EDNumExit(Sender: TObject);
    procedure EdRenavamExit(Sender: TObject);
    procedure EdPlacaExit(Sender: TObject);
    procedure EDClienteExit(Sender: TObject);
    procedure DBGridConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ColorMaskEdit1Exit(Sender: TObject);
    procedure DBDTPREVExit(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure FrmClienteEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmClienteBTNOPENClick(Sender: TObject);
    procedure FBEquipPlacaEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FBEquipPlacaEDCodigoExit(Sender: TObject);
    procedure FBEquipPlacaBTNOPENClick(Sender: TObject);
    procedure FrmFormPag1EDCodigoExit(Sender: TObject);
    procedure FrmFormPag1BTNOPENClick(Sender: TObject);
    procedure FrmFormPag1BTNMINUSClick(Sender: TObject);
    procedure FrmFormPag1EDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnInsertServClick(Sender: TObject);
    procedure BtnProcServClick(Sender: TObject);
    procedure EDQtdServExit(Sender: TObject);
    procedure EdVlrtotalServExit(Sender: TObject);
    procedure EdDescServChange(Sender: TObject);
    procedure BtnFechaPedClick(Sender: TObject);
    procedure BtnMoedaCancelarClick(Sender: TObject);
    procedure BtnMoedaOKClick(Sender: TObject);
    procedure FrmContaServBTNMINUSClick(Sender: TObject);
    procedure FrmContaServBTNOPENClick(Sender: TObject);
    procedure DBGridConsultaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BtnCancelamentosClick(Sender: TObject);
    procedure FrmVendedorBTNOPENClick(Sender: TObject);
    procedure FrmVendedorEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdRenavamKeyPress(Sender: TObject; var Key: Char);
    procedure EdPlacaKeyPress(Sender: TObject; var Key: Char);
    procedure EDClienteKeyPress(Sender: TObject; var Key: Char);
    procedure BtnDeleteServClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CancelarFatura1Click(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtBaixaAdiantamentoClick(Sender: TObject);
    procedure BtCancelaBaixaAdiantamentoClick(Sender: TObject);
    procedure EdSacadoKeyPress(Sender: TObject; var Key: Char);
    procedure EdSacadoExit(Sender: TObject);
    procedure EdSacadoEnter(Sender: TObject);
    procedure CompAbertura1Click(Sender: TObject);
    procedure RelOSDespachante1Click(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure DBGridConsultaCellClick(Column: TColumn);
    procedure DBGridResumoOSDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure RelSintticoOS1Click(Sender: TObject);
    procedure CtasReceberporSacado1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSelecionarClick(Sender: TObject);
  private
    { Private declarations }

    //FILTRA OS REGISTROS DE SERVIÇOS PERTENCENTES A ORDEM
    Procedure FiltraSlave;
    //Função para retornar dados de Ordem em dmserv.wordemdesp de acordo com o filtro
    Procedure FiltraOrdem(XSql: String);
    // retorna dia da semana
    function DiaSemana(Data: string): string;
    //seleciona forma de pagamento e vendedor de acordo com o cliente
    Procedure SelectFormPag_Vendedor;
    //pesquisa codigo equipamento
    procedure PesquisaCodigoEquipamento(codigo:String; cliente:boolean);
    //pesquisa pelo codigo da forma de pagamento
    Procedure PesquisaCodigoPagamento(codigo:String);
    //Função utilizada para retornar o numero corrente para o pedido e incremantar na empresa
    Function RetornaNumPed: String;
    //Limpa os Componentes
    Procedure LimpaEdits;
    //Limpa Campos de Serviço
    procedure LimpaCamposServ;
    //Filtra as tabelas e escreve em edits e labels as informações dos serviços selecionado
    Procedure EscreveLabelsSERV;
    // travar paines principais
    procedure TravarPaines(oi:boolean);
    //Fecha Ordem(joga no financeiro)
    Function FechaOrd(CODPEDIDO: String; DTFECH: String) : Boolean;
    //Fecha Fatura de custos de serviços
    Function FechaFaturaServicos(CODPEDIDO: String) : Boolean;
    //Função utilizada para cancelar/estornar todos os lançamentos emitidos por uma determinada OS
    Function CancelLanOrd(CodPedido: String):Boolean;
  public
    { Public declarations }
  end;

var
  FOrdemDesp: TFOrdemDesp;
  XTipoRelDesp,XEstado, XNumOrdem, XDATA: STRING;
  //Variaveis para controle de chave primaria
  XCOD_ORDEM, XCOD_CONTASERV, XCOD_VENDEDOR, XCod_Cliente, XCod_Equipamento, XCod_FormPag, XCOD_SERVICO, XCOD_ITSERV: Integer;
  XVLRADIANT,XVLRTSERV: Real;
  XdataGrid, XfechGrid: String;
  XFatOrd:Boolean;
  XCampo: String; //Nome do campo Principal da tabela padrão para se trabalhar no Cadastro Padrão
  xcod_chequerec: String;

implementation

uses UDMMacs, UDmBanco, UMenu, UDmServ, UDMFinanc, UDMCaixa, UDMConta,
  UDMPessoa, UDMEstoque, UCliente, UCadEquipamento, UFormPag, USenha,
  UServico, UConsPlncta, UDMEntrada, UDMSaida, Alxor32, Alxorprn,
  AlxMessage, UDMGEOGRAFIA, DB, URelLancContas, UMDO, URelCtaPR;


{$R *.dfm}

//Função utilizada para cancelar/estornar todos os lançamentos emitidos por uma determinada OS
Function TFOrdemDesp.CancelLanOrd(CodPedido: String):Boolean;
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
                     if DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Carteira'
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

//Fecha Fatura de custos de serviços
Function TFOrdemDesp.FechaFaturaServicos(CODPEDIDO: String) : Boolean;
Begin
   Result:=True;
	Try
       DMBANCO.TAlx.Close;
       DMBANCO.TALX.SQL.Clear;
       DMBANCO.TALX.SQL.Add(' select  vwordem.numero AS NUMOS, vwordem.cliente, subservico.tipofatura, subservico.cod_conta, subservico.cod_formpag, ');
       //DMBANCO.TALX.SQL.Add(' subservico.descricao, subservico.vlrunit as total from itservord ');
       DMBANCO.TALX.SQL.Add(' subservico.descricao, itservord.vlrunitcusto,itservord.qtd from itservord ');
       DMBANCO.TALX.SQL.Add(' Left join subservico on itservord.cod_servico = subservico.cod_subservico ');
       DMBANCO.TALX.SQL.Add(' left Join vwordem on itservord.cod_ordem = vwordem.cod_ordem ');
       DMBANCO.TALX.SQL.Add(' where ((subservico.tipofatura<>'+#39+'N'+#39+') OR (subservico.tipofatura is not null))');
       DMBANCO.TALX.SQL.Add('       and (itservord.cod_ordem=:codigo) and ((itservord.cofins<>1) or (itservord.cofins is null)) ');
		DMBANCO.TALX.ParamByName('codigo').AsString:=CODPEDIDO;
       DMBANCO.TALX.Open;
       If not DMBANCO.TALX.IsEmpty
       Then Begin
       	//Se encontrou itens de serviço para terem as despesas lançadas
           DMBANCO.TALX.First;
           While not DMBANCO.TALX.Eof Do
           Begin
           	If DMBANCO.TALX.FieldByName('tipofatura').AsString='V'
               Then Begin
               	//Fatura Custo Serviços A VISTA
                   LanCaixa(-1, DateToStr(Date()), DMBANCO.TALX.FieldByName('cod_conta').AsInteger, 'O.S. '+  DMBANCO.TALX.FieldByName('NUMOS').AsString+' Desp. Serv. '+DMBANCO.TALX.FieldByName('descricao').AsString+' Cli.:'+DMBANCO.TALX.FieldByName('Cliente').AsString,  DMBANCO.TALX.FieldByName('vlrunitcusto').AsCurrency * DMBANCO.TALX.FieldByName('qtd').AsCurrency, 'FATURA', StrToInt(CodPedido), CBPagamento.Text, 'S', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1');
               End
               Else Begin
                   If DMBANCO.TALX.FieldByName('tipofatura').AsString='P'
                   Then Begin
               		//Fatura Custo Serviços A PRAZO
                   	LancConta('FATURA', StrToInt(CODPEDIDO), -1, 'Carteira', 0, DMBANCO.TALX.FieldByName('vlrunitcusto').AsCurrency *DMBANCO.TALX.FieldByName('qtd').AsCurrency , DMBANCO.TALX.FieldByName('cod_conta').AsInteger, -1, -1, 'O.S. '+  DMBANCO.TALX.FieldByName('NUMOS').AsString+' Desp. Serv. '+DMBANCO.TALX.FieldByName('descricao').AsString+' Cli.:'+DMBANCO.TALX.FieldByName('Cliente').AsString, DMBANCO.TALX.FieldByName('cod_formpag').AsInteger, DMServ.TOrd.FieldByName('NUMERO').AsString, '', Date(), 0, EdDtFech.Text, DMServ.TOrd.FieldByName('numfiscal').AsString);
                   End;
               End;
               DMBANCO.TALX.Next;
           End;
       End;
   Except
   	Result:=False;
   End;
End;
//Fecha Ordem(joga no financeiro)
Function TFOrdemDesp.FechaOrd(CODPEDIDO: String; DTFECH: String) : Boolean;
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
       If (CBGeraFinanceiro.Checked=False) AND ((DMServ.TOrd.FieldByName('TOTORD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency)>0)
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
				If FecConta('ORDEM', XCOD_ORDEM, (DMServ.TOrd.FieldByName('TOTORD').AsCurrency - DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency), DMServ.TOrd.FieldByName('TOTPROD').AsCurrency, (DMServ.TOrd.FieldByName('TOTSERV').AsCurrency - DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency), XCOD_CONTASERV, XCOD_CONTASERV, StrToDate(EdDtFech.Text))=True
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
                       	If LancChEnt(-1, XCOD_CONTASERV, 'Fech. Ordem'+DMServ.TOrd.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, Date(), '', DMServ.TOrd.FieldByName('TOTPROD').AsCurrency+XVLRDESP, (DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP)-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, '', '', 0, '', '', 'ORDEM', IntToStr(XCOD_ORDEM))=True
                           Then  ////informa que a atualização do financeiro foi efetivada
                           	ATUFINANC:=True
                           Else//informa que a finalização do financeiro falhou
                           	ATUFINANC:=False;
                       End;
                       If CBPagamento.Text = 'Cartão'
                       Then Begin
                           If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger, XCOD_CONTASERV ,'Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, (DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP)- DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, 'TOTSERV',(XCOD_ORDEM), 'ORDSERV',StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                           Then  Begin////informa que a atualização do financeiro foi efetivada
                           	ATUFINANC:=True
                           End
                           Else Begin//informa que a finalização do financeiro falhou
                           	ATUFINANC:=False;
                           End;
                       End;
                       If (CBPagamento.Text <> 'Cheque') and (CBPagamento.Text <> 'Cartão')
                       Then Begin
                           //REALIZA LANÇAMENTOS EM CAIXA REFERENTE A SERVIÇOS
                           If LanCaixa(-1, DateToStr(Date()), XCOD_CONTASERV, '(Serviços) Fech. Ordem Serv. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString,  (DMServ.TOrd.FieldByName('TOTSERV').Value+XVLRDESP)-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, 'ORDSERV', (XCOD_ORDEM), CBPagamento.Text, 'E', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1')=True
                           Then Begin//informa que a atualização do financeiro foi efetivada
                           	ATUFINANC:=True;
                           End
                           Else Begin//informa que a finalização do financeiro falhou
                           	ATUFINANC:=False;
                           End;
                       End;
                   End
                   Else Begin//Não é à vista
                   	If LancConta('ORDEM', (XCOD_ORDEM), DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, DMServ.TOrd.FieldByName('TOTPROD').Value+XVLRDESP, (DMServ.TOrd.FieldByName('TOTSERV').Value)-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, XCOD_CONTASERV, XCOD_CONTASERV, -1, 'Fech. Ordem de Serviço '+DMServ.TOrd.FieldByName('NUMERO').AsString, XCOD_FORMPAG, DMServ.TOrd.FieldByName('NUMERO').AsString, 'O', Date(), 0, EdDtFech.Text, DMServ.TOrd.FieldByName('numfiscal').AsString)=True
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
               DMServ.TOrd.Post;
               DMServ.TOrd.ApplyUpdates;

               FechaFaturaServicos(IntToStr(XCOD_ORDEM));
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
       End; 
   End
   Else Begin //else de filtragem de pedido
       FechaOrd:=false;
   End;
End;

// travar paines principais
procedure TFOrdemDesp.TravarPaines(oi:boolean);
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
//Filtra as tabelas e escreve em edits e labels as informações dos serviços selecionado
Procedure TFOrdemDesp.EscreveLabelsSERV;
Begin
	//Filtra tabela de subservicos de acordo com o servico selecionada em fservico
   If FiltraTabela(DMSERV.TAlx3, 'TMP', 'DESC2', FMenu.XCod_Ordem, '') Then
   begin
    DMServ.TAlx3.First;

    while not DMServ.TAlx3.Eof do
    begin
    FiltraTabela(DMSERV.TSubserv, 'SUBSERVICO', 'COD_SUBSERVICO', DMServ.TAlx3.FieldByName('DESC1').AsString, '');

    // por questao de garantia o codigo de servico do produto selecionado esta sendo atribuido á variavel pois jah que ela naum eh usada em nenhum outro momento, nao tem a possibilidade de ter seu valor alterado
    XCOD_SERVICO := DMSERV.TSubserv.FieldByName('COD_SUBSERVICO').AsInteger;

	  //Passa os valores do produto selecionado para as labels
    //LServico.Caption:=DMSERV.WSubServ.FieldByName('DESCRICAO').AsString;
    EDQtdServ.Text:=DMSERV.TSubserv.FieldByName('TEMPSERV').AsString;
    EdVlrCustoServ.ValueNumeric:=DMSERV.TSubserv.FieldByName('vlrunit').AsCurrency;
    EDVlrUnitServ.ValueNumeric:=DMSERV.TSubserv.FieldByName('VLRFINAL').AsCurrency;
    EdVlrtotalServ.ValueNumeric:=DMSERV.TSubserv.FieldByName('VLRFINAL').AsCurrency;
    BtnInsertServClick(nil);
    DMServ.TAlx3.Next;
    end;

    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('DELETE FROM TMP WHERE TMP.DESC2 ='+QuotedStr(FMenu.XCod_Ordem));
    DMServ.TAlx1.ExecSQL;

    TRY
      DMServ.IBT.CommitRetaining;
    EXCEPT
      DMServ.IBT.RollbackRetaining;
    END;
   end
   else
   begin
    //Filtra tabela de subservicos de acordo com o servico selecionada em fservico
    If FiltraTabela(DMSERV.TSubserv, 'SUBSERVICO', 'COD_SUBSERVICO', DMSERV.WSubServ.FieldByName('COD_SUBSERVICO').AsString, '')=False Then
		  Exit;

    // por questao de garantia o codigo de servico do produto selecionado esta sendo atribuido á variavel pois jah que ela naum eh usada em nenhum outro momento, nao tem a possibilidade de ter seu valor alterado
    XCOD_SERVICO := DMSERV.WSubServ.FieldByName('COD_SUBSERVICO').AsInteger;

	  //Passa os valores do produto selecionado para as labels
    LServico.Caption:=DMSERV.WSubServ.FieldByName('DESCRICAO').AsString;
    EDQtdServ.Text:=DMSERV.TSubserv.FieldByName('TEMPSERV').AsString;
    EdVlrCustoServ.ValueNumeric:=DMSERV.TSubserv.FieldByName('vlrunit').AsCurrency;
    EDVlrUnitServ.ValueNumeric:=DMSERV.TSubserv.FieldByName('VLRFINAL').AsCurrency;
    EdVlrtotalServ.ValueNumeric:=DMSERV.TSubserv.FieldByName('VLRFINAL').AsCurrency;
   end;
End;

//Limpa Campos de Serviço
procedure TFOrdemDesp.LimpaCamposServ;
begin
   EdCodInternoServ.Text:='';
   EDQtdServ.Text:='';
   EDVlrUnitServ.ValueNumeric:=0;
   EdDescServ.ValueNumeric:=0;
   EdVlrtotalServ.ValueNumeric:=0;
   LServico.Caption:='Selecione o Serviço';
end;

//FILTRA OS REGISTROS DE SERVIÇOS PERTENCENTES A ORDEM
Procedure TFOrdemDesp.FiltraSlave;
Begin
   FrmCliente.Repaint;
   FBEquipPlaca.Repaint;
   FrmFormPag1.Repaint;
	//TRABALHA COM SERVIÇOS DA ORDEM
   //CALCULA TOTAL E QUANTIDADE
	DMESTOQUE.TSlaveServ.Close;
	DMESTOQUE.TSlaveServ.SQL.Clear;
	DMESTOQUE.TSlaveServ.SQL.Add('Select Sum(ITSERVORD.total) as TOTAL, count(ITSERVORD.qtd) as QTDCOL From ITSERVORD');
	DMESTOQUE.TSlaveServ.SQL.Add('Where ITSERVORD.COD_ORDEM = :CODORDEM ');
	DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsInteger:=XCOD_ORDEM;
	DMESTOQUE.TSlaveServ.Open;

   //informa total de serviços
   XVLRTSERV:=DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency;

   // - 16/02/2009:   INFORMA QTD DE serviços
   If DMESTOQUE.TSlaveServ.FieldByName('QTDCOL').AsInteger = 0 Then
		LQTDSERV.Caption := 'Qtd L: 0 '
   Else
   	LQTDSERV.Caption := 'Qtd L: '+DMESTOQUE.TSlaveServ.FieldByName('QTDCOL').AsString;

   //passa valor total ao a edit
   EdValorTotal.ValueNumeric:=XVLRTSERV;
   //lbSaldo.Caption:=EdValorTotal.Text;

  	//INSERE COMANDOS PARA FILTRAR
   DMESTOQUE.TSlaveServ.Close;
   DMESTOQUE.TSlaveServ.SQL.Clear;
   DMESTOQUE.TSlaveServ.SQL.Add(' select itservord.cod_itservord, itservord.cod_servico, itservord.cod_ordem, ');
   DMESTOQUE.TSlaveServ.SQL.Add('        subservico.descricao, itservord.vlrunit, itservord.qtd, itservord.total, ');
   DMESTOQUE.TSlaveServ.SQL.Add('        vwfuncionario.nome, itservord.data, itservord.COFINS  ');
   DMESTOQUE.TSlaveServ.SQL.Add(' from itservord ');
   DMESTOQUE.TSlaveServ.SQL.Add(' left join subservico on itservord.cod_servico=subservico.cod_subservico ');
   DMESTOQUE.TSlaveServ.SQL.Add(' left join vwfuncionario on itservord.cod_funcionario = vwfuncionario.cod_func ');
   DMESTOQUE.TSlaveServ.SQL.Add('Where itservord.cod_ordem = :CODORDEM ');
   DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsInteger := XCOD_ORDEM;
   DMESTOQUE.TSlaveServ.SQL.Add('order by itservord.cod_itservord desc');
   DMESTOQUE.TSlaveServ.SQL.Text;
   DMESTOQUE.TSlaveServ.Open;
End;

//Função utilizada para retornar o numero corrente para o pedido e incremantar na empresa
Function TFOrdemDesp.RetornaNumPed: String;
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


//Limpa os Componentes
Procedure TFOrdemDesp.LimpaEdits;
Begin
   FrmCliente.EDCodigo.Text:='';
   FrmCliente.EdDescricao.Text:='';

   FrmVendedor.EDCodigo.Text:='';
   FrmVendedor.EdDescricao.Text:='';

   FBEquipPlaca.EDCodigo.Text:='';
   FBEquipPlaca.EdDescricao.Text:='';

   FrmFormPag1.EDCodigo.Text:='';
   FrmFormPag1.EdDescricao.Text:='';

   EdContatoCliente.Text:='';
   EdObsFinanceira.Text:='';
	DBDTABERT.Clear;
   DBDTPREV.Clear;
   MObs.Lines.Clear;
   RGSituacao.ItemIndex:=0;
   EdVlrAdiantamento.Text:='0,00';
   lbSaldo.Caption:='0,00';
   EdVlrAdiantamento.ReadOnly:=False;

   DBDTABERT.Text:=DateToStr(Date());
End;

//pesquisa pelo codigo da forma de pagamento
Procedure TFOrdemDesp.PesquisaCodigoPagamento(codigo:String);
begin
   // letras maiusculas
   codigo:= Trim(UpperCase(codigo));

   If codigo <> ''
   Then Begin
     //seleciona a forma de pagamento
       If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_INTERNO', codigo, '')=true
       Then Begin
          XCOD_FORMPAG:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
          FrmFormPag1.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
          FrmFormPag1.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
       End
       Else Begin
          XCOD_FORMPAG:=-1;
          FrmFormPag1.EDCodigo.Text:='';
          FrmFormPag1.EdDescricao.Text:='';
       End;
       FrmCliente.Repaint;
       FBEquipPlaca.Repaint;
       FrmFormPag1.Repaint;
   end;
end;

//pesquisa codigo equipamento
procedure TFOrdemDesp.PesquisaCodigoEquipamento(codigo:String; cliente:boolean);
begin
   // letras maiusculas
   codigo:= Trim(UpperCase(codigo));

   If codigo <> ''
   Then Begin
       DMESTOQUE.Alx.close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('select * from equipamento');
       DMESTOQUE.Alx.SQL.Add('where upper(equipamento.num_frota) like upper ('+#39+codigo+#39+')  AND (EQUIPAMEnTO.ATIVO='+#39+'1'+#39+')');
       DMESTOQUE.Alx.Open;
       DMESTOQUE.Alx.first;

       if not DMESTOQUE.alx.IsEmpty
       then begin
           XCOD_EQUIPAMENTO:=DMESTOQUE.Alx.FieldByName('COD_EQUIPAMENTO').AsInteger;
           FBEquipPlaca.EdDescricao.Text:=DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString;
           if cliente
           then begin
               // busca o cliente q esta atrelado ao equipamento
               FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_CLIENTE',DMESTOQUE.Alx.FieldByname('cod_cliente').AsString,'');

               If Not DMPESSOA.WCliente.IsEmpty
               Then Begin
                 If DMPESSOA.WCliente.FieldByName('ATUALIZAR').AsString='1' Then
                     MessageDlg('AS INFORMAÇÕES DO CLIENTE NECESSITAM SER ATUALIZADAS', mtWarning, [mbOK], 0);

                  XCOD_CLIENTE := DMPESSOA.WCliente.FieldByname('COD_CLIENTE').AsInteger;
                  FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByname('cod_interno').AsString;
                  FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByname('nome').AsString;
                  If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '')=True Then
                     EdObsFinanceira.Text:=DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString
                  Else
                     EdObsFinanceira.Text:='';
               End
               Else Begin
                  XCOD_CLIENTE := -1;
                  FrmCliente.EdDescricao.Text := '';
                  FrmCliente.EDCodigo.Text := '';
                  EdObsFinanceira.Text:='';
               End;
           end;
           FrmFormPag1.EDCodigo.SetFocus;
       end
       Else Begin
          XCOD_EQUIPAMENTO := -1;
          FBEquipPlaca.EdDescricao.Text := '';
          FBEquipPlaca.EDCodigo.SelectAll;
       End;
   End;
   FrmCliente.Repaint;
   FBEquipPlaca.Repaint;
   FrmFormPag1.Repaint;
end;

//seleciona forma de pagamento e vendedor de acordo com o cliente
Procedure TFOrdemDesp.SelectFormPag_Vendedor;
Begin
     //Insere forma de pagamento para o cliente
     If DMPESSOA.TCliente.FieldByName('COD_FORMPAG').AsInteger<>-1
     Then Begin
         If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMPESSOA.TCliente.FieldByName('COD_FORMPAG').AsString, '')=True
         Then Begin
             XCOD_FORMPAG:=DMFINANC.TFormPag.FieldByname('COD_FORMPAG').AsInteger;
             FrmFormPag1.EDCodigo.Text:=DMFINANC.TFormPag.FieldByname('COD_FORMPAG').AsString;
             FrmFormPag1.EdDescricao.Text:=DMFINANC.TFormPag.FieldByname('DESCRICAO').AsString;
         End
         Else Begin
             XCOD_FORMPAG:=-1;
             FrmFormPag1.EDCodigo.Text:='';
             FrmFormPag1.EdDescricao.Text:='';
         End;
     End
     Else Begin
         XCOD_FORMPAG:=-1;
         FrmFormPag1.EDCodigo.Text:='';
         FrmFormPag1.EdDescricao.Text:='';
     End;
End;

// retorna dia da semana
function TFOrdemDesp.DiaSemana(Data: string): string;
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

//Função para retornar dados de Ordem em dmserv.wordemdesp de acordo com o filtro
Procedure TFOrdemDesp.FiltraOrdem(XSql: String);
Var
	XFiltro, XOrdem: String;
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
   	If CBFILTRO.Text='EXECUTANDO' Then
           XFiltro:=' Where (vwordem.STATUS='+#39+'EXECUTANDO'+#39+')';

       //Verifica Ordenação
   	If CBORDEM.Text='+ RECENTE' Then
           XOrdem:=' order by vwordem.cod_ordem DESC, vwordem.cliente ';
   	If CBORDEM.Text='NUMERO' Then
           XOrdem:=' order by vwordem.numero, vwordem.cliente, vwordem.cod_ordem desc';
   	If CBORDEM.Text='CLIENTE' Then
           XOrdem:=' order by vwordem.CLIENTE, vwordem.numero, vwordem.cod_ordem desc ';
   	If CBORDEM.Text='DATA' Then
           XOrdem:=' order by vwordem.dtabert, vwordem.numero, vwordem.cliente, vwordem.cod_ordem desc ';
   	If CBORDEM.Text='PLACA' Then
           XOrdem:=' order by vwordem.placa, vwordem.numero, vwordem.cliente, vwordem.cod_ordem desc ';
       If (XSql<>'')
       Then Begin
           XSql:=' Where '+XSql;
           XFiltro:='';//se utilizar filtro não respeitar o status da ordem
       End;

       dmserv.WOrdemDesp.Close;
       DMServ.WOrdemDesp.SQL.Clear;
       DMServ.WOrdemDesp.SQL.Add('  select vwordem.COD_ORDEM, vwordem.COD_CLIENTE, vwordem.COD_VENDEDOR, vwordem.status, vwordem.numero, equipamento.cod_equipamento, ');
       DMServ.WOrdemDesp.SQL.Add('   equipamento.placa, equipamento.descricao, equipamento.num_frota as RENAVAM, vwordem.cliente, vwordem.formapag, ');
       DMServ.WOrdemDesp.SQL.Add('   vwordem.dtabert, vwordem.dtprev, vwordem.dtfech, vwordem.total, pessoa.nome as SACADO ');
       DMServ.WOrdemDesp.SQL.Add('   from vwordem ');
       DMServ.WOrdemDesp.SQL.Add('   Left join vwcliente on vwordem.cod_cliente = vwcliente.cod_cliente ');
       DMServ.WOrdemDesp.SQL.Add('   left join cliente on vwordem.cod_vendedor = cliente.cod_cliente ');
       DMServ.WOrdemDesp.SQL.Add('   left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
       DMServ.WOrdemDesp.SQL.Add('   left join equipamento on vwordem.cod_equipamento = equipamento.cod_equipamento ');
       DMServ.WOrdemDesp.SQL.Add(XFiltro+ ' ' +XSql+ ' '+ XOrdem);
       DMServ.WOrdemDesp.Open;
   Except
   End;
End;

procedure TFOrdemDesp.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Ordem de Serviço' ;  
   DMServ.Alx.Close;
   DMServ.Alx.SQL.Clear;
   DMServ.Alx.SQL.Add('select vlr1 as valor, int1 as cod_gerador, desc1 as tipogerador,');
   DMServ.Alx.SQL.Add('data1 as dtvenc, desc2 as fech, data2 as dtlanc from tmp');
   DMServ.Alx.Open;
   XTipoRelDesp:='';
	PConsulta.Visible := True;
   PConsulta.BringToFront;
   DBGridResumoOS.Visible:=False;
   //SETA DBS
   FiltraOrdem('');
   DBGridConsulta.DataSource:=DMSERV.DWOrdemDesp;

   //Verifica Atendente
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select * from usuario ');
   DMMACS.TALX.SQL.Add('  left join vwfuncionario ON usuario.cod_funcionario = vwfuncionario.cod_func ');
   DMMACS.TALX.SQL.Add(' Where usuario.codusuario=:codigo');
   DMMACS.TALX.ParamByName('codigo').AsString:=FMenu.LCODUSUARIO.Caption;
   If DMMACS.TALX.IsEmpty
   Then Begin
   	If FMenu.LCODUSUARIO.Caption='111522'
       Then Begin
           XCOD_VENDEDOR:=111522;
           EdAtendente.Text:='Atendente: SYSTEM LORD';
       End
       Else Begin
           XCOD_VENDEDOR:=-1;
           EdAtendente.Text:='Atendente: Não Identificado';
       End;
   End
   Else Begin
       XCOD_VENDEDOR:=DMMACS.TALX.FieldByName('COD_VENDEDOR').AsInteger;
       EdAtendente.Text:='Atendente: '+DMMACS.TALX.FieldByName('NOME').AsString;
   End;
   If FileExists('C:\MZR\Arquivos\LayoutGrid\Ordemdesp.lgm') Then
       DBGridConsulta.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\Ordemdesp.lgm');

   FMenu.XCodOrdemVinculo := -1;
   FMenu.SelectedForm:=False;//inicia com false para dizer que o botão selecionar não foi pressionado
   //Edmar - 19/08/2015 - verifica o tipo do formulário para posicionar
   //a grid corretamente e mostrar ou não o botão para seleção
 	if Tag = 20 then//form de seleção
       BtnSelecionar.Visible := True
   else//form de cadastro
       BtnSelecionar.Visible := False;
end;

procedure TFOrdemDesp.EDNumEnter(Sender: TObject);
begin
  inherited;
	if EDNum.Text = 'Número' then
   	EDNum.Text := '';
end;

procedure TFOrdemDesp.EdRenavamEnter(Sender: TObject);
begin
  inherited;
	if EdRenavam.Text = 'Renavam' then
   	EdRenavam.Text := '';
end;

procedure TFOrdemDesp.EdPlacaEnter(Sender: TObject);
begin
  inherited;
	if EdPlaca.Text = 'PLACA' then
   	EDPlaca.Text := '';
end;

procedure TFOrdemDesp.EDClienteEnter(Sender: TObject);
begin
  inherited;
	if EdCliente.Text = 'CLIENTE' then
   	EdCliente.Text := '';
end;

procedure TFOrdemDesp.CBFILTROPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
   FiltraOrdem('');
end;

procedure TFOrdemDesp.EDNumKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
   	If (EDNum.Text<>'') and (EDNum.Text<>'Número')
       Then Begin
           FiltraOrdem(' (vwordem.numero like '+#39+'%'+EDNum.Text+#39+')');
       End;
   End;
	If Key=#27
   Then Begin
       FiltraOrdem('');
   End;
end;

procedure TFOrdemDesp.EDNumExit(Sender: TObject);
begin
  inherited;
   if Trim(EdNum.Text) = '' then
        EDNum.Text := 'Número';
end;

procedure TFOrdemDesp.EdRenavamExit(Sender: TObject);
begin
  inherited;
   if Trim(EdRenavam.Text) = '' then
        EdRenavam.Text := 'Renavam';
end;

procedure TFOrdemDesp.EdPlacaExit(Sender: TObject);
begin
  inherited;
   if Trim(EdPlaca.Text) = '' then
        EdPlaca.Text := 'Placa';
end;

procedure TFOrdemDesp.EDClienteExit(Sender: TObject);
begin
  inherited;
   if Trim(EDCliente.Text) = '' then
        EDCliente.Text := 'Cliente';
end;

procedure TFOrdemDesp.DBGridConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  	If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridConsulta.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\Ordemdesp.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFOrdemDesp.ColorMaskEdit1Exit(Sender: TObject);
begin
  inherited;
  If (not (DBDTABERT.Text = '  /  /    ') and not (Trim(DBDTABERT.Text) = ''))
   Then Begin
       // retorna dia da semana
       lbDiaSemanaAbert.Caption := DiaSemana(DBDTABERT.Text);

       // se for domingo o dia da semana fica vermelho
       If (StrToInt(XDATA) = 1)
       Then Begin
           lbDiaSemanaAbert.Font.Color := clRed;
       End
       Else Begin
           lbDiaSemanaAbert.Font.Color := cl3DDkShadow;    //clWindowText;
       End;
   End
   Else Begin
        lbDiaSemanaAbert.Caption := '';
   End;

   lbDiaSemanaAbert.Repaint;
end;

procedure TFOrdemDesp.DBDTPREVExit(Sender: TObject);
begin
  inherited;
  If (not (DBDTPREV.Text = '  /  /    ') and not (Trim(DBDTPREV.Text) = ''))
   Then Begin
       // retorna dia da semana
       lbDiaSemanaPrev.Caption := DiaSemana(DBDTPREV.Text);

       // se for domingo o dia da semana fica vermelho
       If (StrToInt(XDATA) = 1)
       Then Begin
           lbDiaSemanaPrev.Font.Color := clRed;
       End
       Else Begin
           lbDiaSemanaPrev.Font.Color := cl3DDkShadow;    //clWindowText;
       End;
   End
   Else Begin
        lbDiaSemanaPrev.Caption := '';
   End;

   lbDiaSemanaPrev.Repaint;
end;

procedure TFOrdemDesp.BtnConsultarClick(Sender: TObject);
begin
  inherited;
   LimpaCamposServ;
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
       Mensagem('    A T E N Ç Ã O   ','A ORDEM ESTÁ SENDO USADA NO MOMENTO.','',1,1,false,'I');
       FiltraOrdem('');
       Exit;
	End;
   If (DMServ.WOrdemDesp.FieldByName('STATUS').AsString<>'FECHADO') //se a ordem ja não estiver fechada
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
      	End
      	Else Begin
           XCOD_CLIENTE:=-1;
           FrmCliente.EDCodigo.Text:='';
           FrmCliente.EdDescricao.Text:='';
      	End;

      	//filtra vendedor para atribuir dados as variáveis e edits
      	If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMServ.WOrdemDesp.FieldByName('COD_VENDEDOR').AsString, '')=True
      	Then Begin
           XCOD_VENDEDOR:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
           FrmVendedor.EDCodigo.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           FrmVendedor.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
      	End
      	Else Begin
           XCOD_VENDEDOR:=-1;
           FrmVendedor.EDCodigo.Text:='';
           FrmVendedor.EdDescricao.Text:='';
      	End;   

          XCOD_FORMPAG:=DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger;
          //filtra forma de pagamento para atribuir valores para variáveis de controle e edits
          If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '')=True
          Then Begin
               XCOD_FORMPAG:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
               FrmFormPag1.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
               FrmFormPag1.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
               XCOD_FORMPAG:=-1;
               FrmFormPag1.EDCodigo.Text:='';
               FrmFormPag1.EdDescricao.Text:='';
          End;
          XCOD_EQUIPAMENTO:= DMServ.TOrd.FieldByName('COD_EQUIPAMENTO').AsInteger;
          // VERIFICA PRIMEIRO SE A ORDEM POSSUI EQUIPAMENTO
          If FiltraTabela(DMPESSOA.TEquip,'EQUIPAMENTO','COD_EQUIPAMENTO',IntToStr(XCOD_EQUIPAMENTO),'')= TRUE
          Then Begin
               FBEquipPlaca.EDCodigo.Text:=DMPESSOA.TEquip.FieldByName('num_frota').AsString;
               FBEquipPlaca.EdDescricao.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
               XCOD_EQUIPAMENTO:= DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
          End
          else begin
              XCOD_EQUIPAMENTO:=-1;
              FBEquipPlaca.EdDescricao.Text := '';
              FBEquipPlaca.EDCodigo.Text := '';
          end;
          //Informa outros valores
          EdNumero.Text:=DMServ.TOrd.FieldByName('NUMERO').AsString;
		   DBDTPREV.Text:=DMServ.TOrd.FieldByName('dtprev').AsString;
		   DBDTABERT.Text:=DMServ.TOrd.FieldByName('dtabert').AsString;
          EdValorTotal.ValueNumeric:=DMServ.TOrd.FieldByName('TOTORD').AsCurrency;
          MObs.Lines.Text:=DMServ.TOrd.FieldByName('observacao').AsString;
          EdContatoCliente.Text:=DMServ.TOrd.FieldByName('CONTATO').AsString;
          //Informa Situação do pedido
          If DMServ.TOrd.FieldByName('STATUS').AsString='ABERTO' Then
          		RGSituacao.ItemIndex:=0;
          If DMServ.TOrd.FieldByName('STATUS').AsString='EXECUTANDO' Then
          		RGSituacao.ItemIndex:=1;
          If DMServ.TOrd.FieldByName('STATUS').AsString='PARADO' Then
          		RGSituacao.ItemIndex:=2;
          If DMServ.TOrd.FieldByName('STATUS').AsString='TERMINADO' Then
          		RGSituacao.ItemIndex:=3;

          //Paulo 11/07/2011: Informa o valor de adiantamento(entrada)
          EdVlrAdiantamento.ValueNumeric:= DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency;
          XVLRADIANT:=DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency;
          lbSaldo.Caption:=FormatFloat('0.00',(DMServ.TOrd.FieldByName('TOTORD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency));
          if DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency = 0 then
          begin
             EdVlrAdiantamento.ReadOnly:=False;
             BtCancelaBaixaAdiantamento.Enabled:=False;
             BtBaixaAdiantamento.Enabled:=True;
          end
          else begin
             EdVlrAdiantamento.ReadOnly:=True;
             BtCancelaBaixaAdiantamento.Enabled:=True;
             BtBaixaAdiantamento.Enabled:=False;
          end;
          
          FiltraSlave;
          PConsulta.Visible := False;
          PCadastro.Visible := True;
          PCadastro.BringToFront;
          FrmCliente.EDCodigo.SetFocus;
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
end;

procedure TFOrdemDesp.FrmClienteEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
       DMPESSOA.WCliente.Close;
       DMPESSOA.WCliente.SQL.Clear;
       DMPESSOA.WCliente.SQL.Add(' Select * from VWCLIENTE where VWCLIENTE.COD_INTERNO ='+#39+Trim(FrmCliente.EDCodigo.Text)+#39);
       DMPESSOA.WCliente.Open;
//       If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'VWCLIENTE.COD_INTERNO', #39+Trim(FrmCliente.EDCodigo.Text)+#39,'')=True
		If not DMPESSOA.WCliente.IsEmpty
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
           XCOD_CLIENTE:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
           FrmCliente.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           FrmCliente.EDCodigo.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           SelectFormPag_Vendedor;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           XCOD_CLIENTE:=-1;
           FrmCliente.EdDescricao.Text:='';
           FrmCliente.EDCodigo.Text:='';
       End;
   End;
   FrmCliente.Repaint;
end;

procedure TFOrdemDesp.FrmClienteBTNOPENClick(Sender: TObject);
begin
  inherited;
	FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   If AbrirForm(TFCliente, FCliente, 1)='Selected'
   Then Begin
   	If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '')=True
       Then Begin
   		//VERIFICA QTO ATUALIZAÇÃO DE INFORMAÇÕES DO CLIENTE
       	If DMPESSOA.TCliente.FieldByName('ATUALIZAR').AsString='1' Then
       		Mensagem('Mzr Sistemas - INFORMAÇÃO', 'As informações deste cliente devem ser atualizadas!', '', 1, 1, false, 'i');
       End;
       XCOD_CLIENTE:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
	    SelectFormPag_Vendedor;
   End
   Else Begin
       XCOD_CLIENTE:=-1;
 		FrmCliente.EDCodigo.Text:='';
       FrmCliente.EdDescricao.Text:='';
   End;
   FrmCliente.Repaint;
end;

procedure TFOrdemDesp.FBEquipPlacaEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if key = 13
   then begin
       If FBEquipPlaca.EDCodigo.Text <> '' then
           PesquisaCodigoEquipamento(FBEquipPlaca.EDCodigo.Text, true);
   end;
end;

procedure TFOrdemDesp.FBEquipPlacaEDCodigoExit(Sender: TObject);
begin
  inherited;
  If FBEquipPlaca.EDCodigo.Text = ''
  then begin
       XCOD_EQUIPAMENTO:=-1;
       FBEquipPlaca.EDCodigo.Text:='';
       FBEquipPlaca.EdDescricao.Text:='';
  end;
end;

procedure TFOrdemDesp.FBEquipPlacaBTNOPENClick(Sender: TObject);
begin
  inherited;
   FBEquipPlaca.BTNOPENClick(Sender);
   //FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', '', ' ORDER BY EQUIPAMENTO.DESCRICAO');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   If AbrirForm(TFCadEquipamento, FCadEquipamento, 1)='Selected'
   Then Begin
       XCOD_EQUIPAMENTO:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
 		FBEquipPlaca.EDCodigo.Text:=DMPESSOA.TEquip.FieldByName('num_frota').AsString;
       FBEquipPlaca.EdDescricao.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
       FrmFormPag1.EDCodigo.SetFocus;

   End
   Else Begin
       if XCOD_EQUIPAMENTO=-1
       then begin
         //XCOD_EQUIPAMENTO:=-1;
         FBEquipPlaca.EDCodigo.Text:='';
         FBEquipPlaca.EdDescricao.Text:='';
         FBEquipPlaca.EDCodigo.SetFocus;
       end;
   End;

   FBEquipPlacaEDCodigoExit(Sender);

   FrmCliente.Repaint;
   FBEquipPlaca.Repaint;
   FrmFormPag1.Repaint;
end;

procedure TFOrdemDesp.FrmFormPag1EDCodigoExit(Sender: TObject);
begin
  inherited;
   if FrmFormPag1.EDCodigo.Text<>''
   Then Begin
       PesquisaCodigoPagamento(FrmFormPag1.EDCodigo.Text);
   End
   else begin
       XCOD_FORMPAG:=-1;
       FrmFormPag1.EDCodigo.Text:='';
       FrmFormPag1.EdDescricao.Text:='';
   end;
end;

procedure TFOrdemDesp.FrmFormPag1BTNOPENClick(Sender: TObject);
begin
  inherited;
  FrmFormPag1.BTNOPENClick(Sender);
  If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
		XCOD_FORMPAG:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       FrmFormPag1.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
       FrmFormPag1.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   	FrmFormPag1.Repaint;
   End
   Else Begin
      if XCOD_FORMPAG=-1
      then begin
        FrmFormPag1.EDCodigo.Text:='';
        FrmFormPag1.EdDescricao.Text:='';
      end;
   End;
end;

procedure TFOrdemDesp.FrmFormPag1BTNMINUSClick(Sender: TObject);
begin
  inherited;
  	FrmFormPag1.BTNMINUSClick(Sender);
   XCOD_FORMPAG:=-1;
   FrmFormPag1.EDCodigo.Text:='';
   FrmFormPag1.EdDescricao.Text:='';
   FrmFormPag1.Repaint;
   end;
procedure TFOrdemDesp.FrmFormPag1EDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_RETURN
     Then Begin
     if FrmFormPag1.EDCodigo.Text<>''
     Then Begin
         PesquisaCodigoPagamento(FrmFormPag1.EDCodigo.Text);
     End;
  end;
end;

procedure TFOrdemDesp.BtnNovoClick(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ABRIRORD', 'M')=False Then
  		Exit;

   // INICIALIZANDO VARIAVEL
   XCOD_ORDEM:=-1;
   XCOD_CLIENTE:=-1;
   XCOD_EQUIPAMENTO:=-1;
   XCOD_FORMPAG:=-1;
   XVLRADIANT:=-1;

   // GERA NUMERO DA ORDEM
   XNumOrdem := RetornaNumPed;
	EdNumero.Text := XNumOrdem;

   Try
       DMServ.TOrd.Insert;
       XCOD_ORDEM:=DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
       DMServ.TOrd.FieldByName('NUMERO').AsString:= XNumOrdem;
       DMServ.TOrd.FieldByName('DTABERT').AsDateTime:=Date();
       DMServ.TOrd.FieldByName('HRABERT').AsDateTime:=Time();
       DMServ.TOrd.FieldByName('STATUS').AsString:='ABERTO';
       DMServ.TOrd.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
       DMServ.TOrd.FieldByName('LOCALAT').AsString:='';
       DMServ.TOrd.FieldByName('EDIT').AsString := '1';
       DMServ.TOrd.Post;
       DMServ.IBT.CommitRetaining;
       XVLRADIANT:=0;
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

   //MOSTRAR PAINEL DE CADASTRO
   PCadastro.Visible := True;
   PCadastro.BringToFront;

   BtCancelaBaixaAdiantamento.Enabled:=False;
   BtBaixaAdiantamento.Enabled:=True;

   FrmCliente.EDCodigo.SetFocus;
   
   FrmCliente.Repaint;
   FBEquipPlaca.Repaint;
   FrmFormPag1.Repaint;

   MDO.Query.Close;
   MDO.Query.SQL.Clear;
   MDO.Query.SQL.Add(' DELETE FROM TMP WHERE TMP.DESC2 ='+QuotedStr(IntToStr(XCOD_ORDEM)));
   MDO.Query.ExecSQL;
   Try
    MDO.Transac.CommitRetaining;
   Except
    MDO.Transac.RollbackRetaining;
   End;

end;

procedure TFOrdemDesp.BtnCancelarClick(Sender: TObject);
Var
	XVazio: Boolean;
begin
	XVazio:=False;
   FiltraSlave;
   If Not DMESTOQUE.TSlaveServ.IsEmpty = True Then
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

procedure TFOrdemDesp.BtnGravarClick(Sender: TObject);
Var
	XFlagControlNumero: Integer;
   XStatus: String;
begin
  inherited;

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

   //Paulo 11/07/2011: Verifica se não tem nenhum lançamento de adiantamento;
   FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');

   // se nao possui servico e nem produtos eh exibido a mensagem - SEGUNDO SOLICITAÇÃO É OBRIGATORIO PODER GRAVAR SEM SERVICO
   If (DMESTOQUE.TSlaveServ.IsEmpty)and(DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency = 0)
   Then Begin
       If Mensagem('   A T E N Ç Ã O   ','A Ordem de Serviço atual não possui serviços inclusos. Deseja apagá-la ?','',2,3,false,'A')=2
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

           XEstado:='';

           Exit;
       End;
   End;

   //VALIDA CAMPOS NECESSÁRIOS
   If (XCOD_CLIENTE=-1) or (FrmCliente.EDCodigo.Text = '')
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe um Cliente para Ordem de Serviço', '', 1, 1, False, 'a');
       FrmCliente.EDCodigo.SetFocus;
       Exit;
   End;

   If (XCOD_VENDEDOR=-1) or (FrmVendedor.EDCodigo.Text = '')
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe o Sacado para Ordem de Serviço', '', 1, 1, False, 'a');
       FrmVendedor.EDCodigo.SetFocus;
       Exit;
   End;


   If XCOD_CLIENTE=DMMACS.TLoja.FieldByName('COD_CONSUMIDOR').AsInteger
   Then Begin
       If FrmFormPag1.EdDescricao.Text<>'À VISTA'
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'Este cliente não se encontra cadastrado em Banco de Dados ou seja suas informações pessoais não estão cadastradas. Por isso este pedido não pode ser realizado à prazo!', '', 1, 1, False, 'i');
           FrmFormPag1.BTNOPEN.SetFocus;
           Exit;
       End;
   End;

   //Informa Situação do pedido
   Case RGSituacao.ItemIndex of
       0: XStatus:='ABERTO';
       1: XStatus:='EXECUTANDO';
       2: XStatus:='PARADO';
       3: XStatus:='TERMINADO';
   End;

   DMServ.TOrd.Edit;
   DMServ.TOrd.FieldByName('COD_USUARIO').AsInteger:=StrToInt(FMenu.LCODUSUARIO.Caption);
   DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger:=XCOD_CLIENTE;
   DMServ.TOrd.FieldByName('COD_EQUIPAMENTO').AsInteger:=XCOD_EQUIPAMENTO;
   DMServ.TOrd.FieldByName('COD_VENDEDOR').AsInteger:=XCOD_VENDEDOR;
   DMServ.TOrd.FieldByName('COD_FUNCIONARIO').AsInteger:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
   DMServ.TOrd.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
   DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger:=XCOD_FORMPAG;
   DMServ.TOrd.FieldByName('observacao').AsString:=MObs.Lines.Text;
   DMServ.TOrd.FieldByName('CONTATO').AsString:=EdContatoCliente.Text;
   DMServ.TOrd.FieldByName('EDIT').AsString:='';
   If DBDTABERT.Text<>'  /  /    ' Then
   	DMServ.TOrd.FieldByName('dtabert').AsString:=DBDTABERT.Text;
   If DBDTPREV.Text<>'  /  /    ' Then
   	DMServ.TOrd.FieldByName('dtprev').AsString:=DBDTPREV.Text;
   DMServ.TOrd.FieldByName('TOTORD').AsCurrency:=EdValorTotal.ValueNumeric;
   DMServ.TOrd.FieldByName('TOTPROD').AsCurrency:=0;
   DMServ.TOrd.FieldByName('TOTSERV').AsCurrency:=EdValorTotal.ValueNumeric;
   DMServ.TOrd.FieldByName('TOTDESP').AsCurrency:=0;
   DMServ.TOrd.FieldByName('DESCONTO').AsCurrency:=XVLRTSERV-EdValorTotal.ValueNumeric;
   DMServ.TOrd.FieldByName('DESCPROD').AsCurrency:=0;
   DMServ.TOrd.FieldByName('DESCSERV').AsCurrency:=XVLRTSERV-EdValorTotal.ValueNumeric;
   DMServ.TOrd.FieldByName('NUMERO').AsString:=EdNumero.Text;
	DMServ.TOrd.FieldByName('STATUS').AsString:=XStatus;
   DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency:= EdVlrAdiantamento.ValueNumeric;

   Try
   	DMServ.TOrd.Post;
   Except
   	MessageDlg('Não foi possível gravar, as informações serão retornadas.', mtWarning, [mbOK], 0);
       DMServ.TOrd.Cancel;
   End;
   Try
      DMServ.IBT.CommitRetaining;
   Except
      DMServ.IBT.RollbackRetaining;
   End;

   //Atualiza View da tela de Consulta
   FiltraOrdem('');

   PCadastro.Visible:=False;
   PConsulta.Visible:=true;
   PConsulta.BringToFront;
   XEstado:='';
end;

procedure TFOrdemDesp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
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

procedure TFOrdemDesp.DBGrid2KeyDown(Sender: TObject; var Key: Word;
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
       	DBGridConsulta.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\Ordemdesp.lgm');
       	Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     	Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     	End;
   End;
end;

procedure TFOrdemDesp.BtnInsertServClick(Sender: TObject);
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
		Mensagem('OPÇÃO BLOQUEADA', 'A quantidade do serviço a ser adicionado a lista de items de serviços é igual ou menor que zero.', '', 1, 1, False, 'a');
       EDQtdServ.SetFocus;
       Exit;

   End;
   //Valida quanto ao valor unitario do produto
   If EDVlrUnitServ.ValueNumeric<=0
   Then Begin
		if Mensagem('A T E N Ç Ã O', 'O serviço inserido a lista está com valor unitário igual ou inferiro a 0. Deseja continuar?', '', 2, 3, False, 'a')=3 then
       begin
		    EDVlrUnitServ.SetFocus;
	        Exit;
       end
   End;
   //Valida quanto ao valor total do produto
   If EdVlrtotalServ.ValueNumeric<=0
   Then Begin
		if Mensagem('A T E N Ç Ã O', 'O serviço inserido a lista está com valor total igual ou inferiro a 0. Deseja continuar?', '', 2, 3, False, 'a')=3 then
       begin
		    EdVlrtotalServ.SetFocus;
	        Exit;
       end;    
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
       DMSERV.IBT.RollbackRetaining;
   End;

   FiltraSlave;
   lbSaldo.Caption:=FormatFloat('0.00',(EdValorTotal.ValueNumeric - EdVlrAdiantamento.ValueNumeric));
   LimpaCamposServ;
	BtnProcServ.SetFocus;
end;

procedure TFOrdemDesp.BtnProcServClick(Sender: TObject);
begin
  inherited;
  	//abre formulario de serviço para seleção
  FMenu.XMark := 'MARK';
  FMenu.XCod_Ordem := IntToStr(XCOD_ORDEM);
	If AbrirForm(TFSERVICO, FSERVICO, 1)='Selected'
	Then Begin
   	//Depois de selecionado escreve nas labels o produto
       EscreveLabelsSERV;
   End;
end;

procedure TFOrdemDesp.EDQtdServExit(Sender: TObject);
begin
  inherited;
	If (EDQtdServ.ValueNumeric<>0) And (EDVlrUnitServ.ValueNumeric<>0)
   Then Begin
		CalcPercent(EdDescServ.ValueNumeric, 0, (EDQtdServ.ValueNumeric*EDVlrUnitServ.ValueNumeric), 'D');
	    EdVlrtotalServ.ValueNumeric:=AlxCalculo;
   End;
end;

procedure TFOrdemDesp.EdVlrtotalServExit(Sender: TObject);
begin
  inherited;
   CalcPercent(0, (EDQtdServ.ValueNumeric*EDVlrUnitServ.ValueNumeric)- EdVlrtotalServ.ValueNumeric, (EDQtdServ.ValueNumeric*EDVlrUnitServ.ValueNumeric), 'D');
   EdDescServ.ValueNumeric:=AlxPercento;
end;

procedure TFOrdemDesp.EdDescServChange(Sender: TObject);
begin
  inherited;
   If (EDQtdServ.ValueNumeric<>0) And (EDVlrUnitServ.ValueNumeric<>0)
   Then Begin
		CalcPercent(EdDescServ.ValueNumeric, 0, (EDQtdServ.ValueNumeric*EDVlrUnitServ.ValueNumeric), 'D');
	    EdVlrtotalServ.ValueNumeric:=AlxCalculo;
   End;
end;

procedure TFOrdemDesp.BtnFechaPedClick(Sender: TObject);
begin
  inherited;
  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('FECHORD', 'M')=False Then
  		Exit;

   // repassando valor do cidgo da ordem para variavel
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
           //LIMPA VALORES ANTIGOS
	   	   	FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '');
           If ControlAccess('GERAFINANC', '')=True Then
               CBGeraFinanceiro.Visible:=true;
      		//FORMA DE PAGAMENTO
      		XCOD_FORMPAG:=DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger;
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

procedure TFOrdemDesp.BtnMoedaCancelarClick(Sender: TObject);
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

procedure TFOrdemDesp.BtnMoedaOKClick(Sender: TObject);
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
   //Paulo 14/03/2011: Verifica se gera financeiro ou não(para controle de fatura)
   if CBGeraFinanceiro.Checked = True then
       XFatOrd:=True
   else
       XFatOrd:=False;

   XCodPedidoGerador := DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsInteger;
  	XCOD_ORDEM:=DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsInteger;
   FechaOrd(DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString, EdDtFech.Text);

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

procedure TFOrdemDesp.FrmContaServBTNMINUSClick(Sender: TObject);
begin
  inherited;
   XCOD_CONTASERV:=-1;
   FrmContaServ.EDCodigo.Text:='';
   FrmContaServ.EdDescricao.Text:='';
   FrmContaServ.Refresh;
end;

procedure TFOrdemDesp.FrmContaServBTNOPENClick(Sender: TObject);
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
   FrmContaServ.Repaint;
   FrmContaServ.Refresh;
end;

procedure TFOrdemDesp.DBGridConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
   if (DMServ.WOrdemDesp.FieldByName('STATUS').AsString='ABERTO')
   then begin
       DBGridConsulta.Canvas.Font.Color := clRed;
       DBGridConsulta.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
end;

procedure TFOrdemDesp.BtnCancelamentosClick(Sender: TObject);
Var
	XCodPedidoTroca: String;
begin
   FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '');
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

procedure TFOrdemDesp.FrmVendedorBTNOPENClick(Sender: TObject);
begin
  inherited;
	FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   If AbrirForm(TFCliente, FCliente, 1)='Selected'
   Then Begin
   	If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '')=True
       Then Begin
   		//VERIFICA QTO ATUALIZAÇÃO DE INFORMAÇÕES DO CLIENTE
       	If DMPESSOA.TCliente.FieldByName('ATUALIZAR').AsString='1' Then
       		Mensagem('Mzr Sistemas - INFORMAÇÃO', 'As informações deste vendedor devem ser atualizadas!', '', 1, 1, false, 'i');
       End;
       XCOD_VENDEDOR:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       FrmVendedor.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       FrmVendedor.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
   End
   Else Begin
       XCOD_VENDEDOR:=-1;
 		FrmVendedor.EDCodigo.Text:='';
       FrmVendedor.EdDescricao.Text:='';
   End;
   FrmVendedor.Repaint;
end;

procedure TFOrdemDesp.FrmVendedorEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
       DMPESSOA.WCliente.Close;
       DMPESSOA.WCliente.SQL.Clear;
       DMPESSOA.WCliente.SQL.Add(' Select * from VWCLIENTE where VWCLIENTE.COD_INTERNO ='+#39+Trim(FrmVendedor.EDCodigo.Text)+#39);
       DMPESSOA.WCliente.Open;
		If not DMPESSOA.WCliente.IsEmpty
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
           XCOD_VENDEDOR:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
           FrmVendedor.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           FrmVendedor.EDCodigo.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           XCOD_VENDEDOR:=-1;
           FrmVendedor.EdDescricao.Text:='';
           FrmVendedor.EDCodigo.Text:='';
       End;
   End;
   FrmVendedor.Repaint;
end;

procedure TFOrdemDesp.EdRenavamKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
   	If (EdRenavam.Text<>'') and (EdRenavam.Text<>'Renavam')
       Then Begin
           FiltraOrdem(' (equipamento.num_frota like '+#39+'%'+EdRenavam.Text+#39+')');
       End;
   End;
	If Key=#27
   Then Begin
       FiltraOrdem('');
   End;
end;

procedure TFOrdemDesp.EdPlacaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
   	If (EdPlaca.Text<>'') and (EdPlaca.Text<>'Número')
       Then Begin
           FiltraOrdem(' (equipamento.placa like '+#39+'%'+EdPlaca.Text+#39+')');
       End;
   End;
	If Key=#27
   Then Begin
       FiltraOrdem('');
   End;
end;

procedure TFOrdemDesp.EDClienteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
   	If (EDCliente.Text<>'') and (EDCliente.Text<>'Cliente')
       Then Begin
           FiltraOrdem(' (vwordem.cliente like '+#39+'%'+EDCliente.Text+'%'+#39+')');
       End;
   End;
	If Key=#27
   Then Begin
       FiltraOrdem('');
   End;

end;

procedure TFOrdemDesp.CompAbertura1Click(Sender: TObject);
var
   Cod_Tmp:Integer;
begin
  inherited;
   //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RELABERTORD', 'M')=False Then
  		Exit;

   //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
   If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '')=False Then
   	Exit;

   //FILTRA CLIENTE PARA ENCONTRAR PESSOA
   If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMSERV.WOrdemDesp.FieldByNAme('COD_CLIENTE').AsString, '')=False Then
		Exit;

   //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
   If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '')=False Then
   	Exit;

   //Paulo 13/07/2011: FILTRA SACADO PARA ENCONTRAR PESSOA
   If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMSERV.WOrdemDesp.FieldByNAme('COD_VENDEDOR').AsString, '')=False Then
		Exit;
   
   //FILTRA CIDADE DO CLIENTE
   FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMPESSOA.TPessoa.FieldByNAme('COD_CIDADE').AsString, '');

   //FILTRA ESTADO DO CLIENTE
   FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '');

   //FILTRA TELEFONE PARA IMPRESSÃO DE CLIENTE
   FiltraTabela(DMPESSOA.TALX, 'TELEFONE', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');

   //FILTRA EQUIPAMENTO PARA IMPRESSÃO
   If FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', DMSERV.WOrdemDesp.FieldByNAme('COD_EQUIPAMENTO').AsString, '')=False
   Then Begin
   	MessageDlg('POR FAVOR, SELECIONE UM EQUIPAMENTO PARA O CLIENTE', mtWarning, [mbOK], 0);
		Exit;
   End;

   //FILTRA ORDEM PARA IMPRESSÃO
   If FiltraTabela(DMSERV.TOrd, 'ORDEM', 'COD_ORDEM', DMSERV.WOrdemDesp.FieldByNAme('COD_ORDEM').AsString, '')=False Then
   	Exit;

   //FILTRA FORMA DE PAGAMENTO
   FiltraTabela(DMFINANC.TFormPag , 'FORMPAG', 'COD_FORMPAG', DMSERV.TOrd.FieldByNAme('COD_FORMPAG').AsString, '');

   XCOD_ORDEM:=DMSERV.WOrdemDesp.fieldbyname('COD_ORDEM').AsInteger;

   //Paulo 14/07/2011: a situação financeira será gerado na tabela tmp para ser impressa
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
       DMMACS.TMP.FieldByName('DESC2').AsString:=DMServ.TOrd.FieldByName('TIPOPAG').AsString;
       DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMServ.TOrd.FieldByName('totord').AsCurrency - DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency;
       DMMACS.TMP.Post;
       Cod_Tmp:=Cod_Tmp+1;
	End
   Else Begin
       //insere sql necessária para filtrar parcelas da conta
       DMMacs.TALX.Close;
       DMMacs.TALX.sql.Clear;
       DMMacs.TALX.SQL.Add('SELECT parcelacr.dtvenc, parcelacr.cobranca, parcelacr.valor FROM parcelacr left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
       DMMacs.TALX.SQL.Add(' Where (ctareceber.tipogerador='+#39+'ORD'+#39+') And (ctareceber.cod_gerador=:CODGERADOR) ');
       DMMacs.TALX.ParamByName('CODGERADOR').AsInteger:= XCOD_ORDEM;
       DMMacs.TALX.Open;

       
       DMMACS.TALX.First;
       while not DMMACS.TALX.Eof do
       Begin
           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=Cod_Tmp;
           DMMACS.TMP.FieldByName('DESC1').AsString:=DMMacs.TALX.FieldByName('dtvenc').AsString;
           DMMACS.TMP.FieldByName('DESC2').AsString:=DMMacs.TALX.FieldByName('cobranca').AsString;
           DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMMacs.TALX.FieldByName('valor').AsCurrency;
           DMMACS.TMP.Post;
           Cod_Tmp:=Cod_Tmp+1;
           DMMACS.TALX.Next;

       End;

   End;
   DMMACS.Transaction.CommitRetaining;
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add(' SELECT * FROM TMP ');
   DMMACS.TMP.Open;




   //FILTRA PRODUTOS, SERVIÇOS E DESPESAS
	FiltraSlave;

	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdemDesp.frf');
   FSRel.PrepareReport;
   FSRel.ShowReport;
end;

procedure TFOrdemDesp.BtnDeleteServClick(Sender: TObject);
begin
  inherited;
      CancelarFatura1Click(Sender);
      //Paulo 14/06/2011: Deleta o serviço da grid
      DMServ.TAlx1.Close;
      DMServ.TAlx1.sql.Clear;
      DMServ.TAlx1.SQL.Add('delete from itservord where itservord.cod_itservord= :CODIGO');
      DMServ.TAlx1.ParamByName('CODIGO').AsInteger:=DMESTOQUE.TSlaveServ.FieldByName('cod_itservord').AsInteger;
      DMServ.TAlx1.ExecSQL;
      DMServ.IBT.CommitRetaining;
      FiltraSlave;
      lbSaldo.Caption:=FormatFloat('0.00',(EdValorTotal.ValueNumeric - EdVlrAdiantamento.ValueNumeric));
end;

procedure TFOrdemDesp.BitBtn1Click(Sender: TObject);
begin
  inherited;
	If Mensagem('Confirmação do usuário', 'Deseja Realmente Faturar a Despesa Do Serviço Selecionado ?', '', 2, 3, False, 'c')=2
   Then Begin
   	If FiltraTabela(DMServ.TSOrd, 'itservord', 'cod_itservord', DMESTOQUE.TSlaveServ.FieldByName('cod_itservord').AsString, '')=True
       Then Begin
           If FiltraTabela(DMServ.TSubserv, 'subservico', 'cod_subservico', DMServ.TSOrd.FieldByName('cod_servico').AsString, '')=True
           Then Begin
           	IF DMServ.TSOrd.FieldByName('COFINS').AsInteger=1
               Then Begin
               	MessageDlg('Serviço já faturado.', mtWarning, [mbOK], 0);
               End
               Else Begin
                   If DMServ.TSubserv.FieldByName('tipofatura').AsString='V'
                   Then Begin
                       //Fatura Custo Serviços A VISTA
                       if  LanCaixa(-1, DateToStr(Date()), DMServ.TSubserv.FieldByName('cod_conta').AsInteger, 'O.S. '+  EdNumero.Text+' Desp. Serv. '+DMServ.TSubserv.FieldByName('descricao').AsString+' Cli.:'+FrmCliente.EdDescricao.Text, (DMServ.TSOrd.FieldByName('vlrunitcusto').AsCurrency * DMServ.TSOrd.FieldByName('QTD').AsCurrency) , 'FATURA', DMESTOQUE.TSlaveServ.FieldByName('cod_itservord').AsInteger, 'Carteira', 'S', EdNumero.Text, Date(), '1') = False
                       then begin
                           MessageDlg('Ocorreu erro ao efetuar lançamento, reinicie o sistema e tente novamnente.', mtWarning, [mbOK], 0);
                           DMCAIXA.IBT.RollbackRetaining;
                           MDO.Transac.RollbackRetaining;
                           exit;
                       end;    
                   End
                   Else Begin
                       If DMServ.TSubserv.FieldByName('tipofatura').AsString='P'
                       Then Begin
                           //Fatura Custo Serviços A PRAZO
                           if LancConta('FATURA', DMESTOQUE.TSlaveServ.FieldByName('cod_itservord').AsInteger, -1, 'Carteira', 0, (DMServ.TSOrd.FieldByName('vlrunitcusto').AsCurrency * DMServ.TSOrd.FieldByName('QTD').AsCurrency), DMServ.TSubserv.FieldByName('cod_conta').AsInteger, -1, -1, 'O.S. '+  EdNumero.Text+' Desp. Serv. '+DMServ.TSubserv.FieldByName('descricao').AsString+' Cli.:'+FrmCliente.EdDescricao.Text, DMServ.TSubserv.FieldByName('cod_formpag').AsInteger, EdNumero.Text, '', Date(), 0, DateToStr(Date()), '')=False
                           then begin
                                MessageDlg('Ocorreu erro ao efetuar lançamento, reinicie o sistema e tente novamnente.', mtWarning, [mbOK], 0);
                                exit;
                           end;
                       End;
                   End;
               End;
           End;
           Try
           	DMServ.TSOrd.Edit;
           	DMServ.TSOrd.FieldByName('COFINS').AsInteger:=1;
           	DMServ.TSOrd.Post;
           	DMServ.IBT.CommitRetaining;
               DMCAIXA.IBT.CommitRetaining;
               MDO.Transac.CommitRetaining;
           	FiltraSlave;
           Except
               DMServ.IBT.RollbackRetaining;
               DMCAIXA.IBT.RollbackRetaining;
               MDO.Transac.RollbackRetaining;
               MessageDlg('Ocorreu erro ao efetuar lançamento, reinicie o sistema e tente novamnente.', mtWarning, [mbOK], 0);               
           End;
       End;
   End;
end;

procedure TFOrdemDesp.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
	if DMESTOQUE.TSlaveServ.FieldByName('COFINS').AsString='1'
   then begin
   	DBGrid2.Canvas.Font.Color := clRed;
       DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End
   Else Begin
   	DBGrid2.Canvas.Font.Color := clBlack;
       DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
end;

procedure TFOrdemDesp.CancelarFatura1Click(Sender: TObject);
begin
  inherited;
	If Mensagem('Confirmação do usuário', 'Deseja Realmente Cancelar Faturar da Despesa Do Serviço Selecionado ?', '', 2, 3, False, 'c')=2
   Then Begin
   	If FiltraTabela(DMServ.TSOrd, 'itservord', 'cod_itservord', DMESTOQUE.TSlaveServ.FieldByName('cod_itservord').AsString, '')=True
       Then Begin
           IF DMServ.TSOrd.FieldByName('COFINS').AsInteger=1
           Then Begin
               If FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', '', '', '  where (lancaixa.tipogerador='+#39+'FATURA'+#39+') and (lancaixa.cod_gerador='+DMESTOQUE.TSlaveServ.FieldByName('cod_itservord').AsString+') ' )=True
               Then Begin
                   //Estorna Fatura do Custo Serviços A VISTA
                   If FiltraTabela(DMCAIXA.TAbCaixa, 'ABCAIXA', 'COD_ABCAIXA', DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString, '')=True
                   Then Begin//encontrado referencia em Abcaixa
                       If DMCAIXA.TAbCaixa.FieldByName('FECHADO').AsString='S'
                       Then Begin //se caixa já estiver fechado deve ser realizado um lançamento de correção e não simplesmente apagar
                           MessageDlg('O Caixa já se encontra fechado. Efetue correção manualmente!', mtWarning, [mbOK], 0);
                       End
                       Else Begin
                           DMCAIXA.TAlx.Close;
                           DMCAIXA.TAlx.SQL.Clear;
                           DMCAIXA.TAlx.SQL.Add('delete from lancaixa where lancaixa.tipogerador='+#39+'FATURA'+#39+ 'and lancaixa.cod_gerador='+DMESTOQUE.TSlaveServ.FieldByName('cod_itservord').AsString);
                           DMCAIXA.TAlx.ExecSQL;
                           DMCAIXA.IBT.CommitRetaining;
                           DMCAIXA.TAlx.Open;
                           MessageDlg('Lançamento em Caixa apagado com sucesso!', mtWarning, [mbOK], 0);
                       End;
                   End;
               End
               Else Begin
                   //Apaga contas a pagar referente a fatura
                   DMCONTA.TAlx.Close;
                   DMCONTA.TAlx.SQL.Clear;
                   DMCONTA.TAlx.SQL.Add(' Select parcelacp.cod_parcelacp from parcelacp ');
                   DMCONTA.TAlx.SQL.Add(' left join ctapagar on parcelacp.cod_ctapagar=ctapagar.cod_ctapagar ');
                   DMCONTA.TAlx.SQL.Add(' where (ctapagar.tipogerador='+#39+'FATURA'+#39+') and (ctapagar.cod_gerador=:gerador)');
                   DMCONTA.TAlx.ParamByName('gerador').AsInteger:=DMESTOQUE.TSlaveServ.FieldByName('cod_itservord').AsInteger;
                   DMCONTA.TAlx.Open;
                   If not DMCONTA.TAlx.IsEmpty
                   Then Begin
                       DMCONTA.TAlx.First;
                       While not DMCONTA.TAlx.Eof do
                       Begin
                           If FiltraTabela(DMCONTA.TParcCP, 'parcelacp', 'cod_parcelacp', DMCONTA.TAlx.FieldByName('cod_parcelacp').AsString, '' )=True
                           Then Begin
                               DMCONTA.TParcCP.Delete;
                           End;
                           DMCONTA.TAlx.Next;
                       End;
                       DMCONTA.IBT.CommitRetaining;
                   End;
               End;
               If FiltraTabela(DMServ.TSOrd, 'itservord', 'cod_itservord', DMESTOQUE.TSlaveServ.FieldByName('cod_itservord').AsString, '')=True
               Then Begin
                   DMServ.TSOrd.Edit;
                   DMServ.TSOrd.FieldByName('COFINS').AsInteger:=0;
                   DMServ.TSOrd.Post;
                   DMServ.IBT.CommitRetaining;
                   FiltraSlave;
               End;
           End
           Else Begin
           	MessageDlg('Este Serviço ainda não foi faturado!', mtWarning, [mbOK], 0);
           End;
       End;
   End;
end;

procedure TFOrdemDesp.BtnApagarClick(Sender: TObject);
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
			If (Not DMESTOQUE.TSlaveServ.IsEmpty)or(DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency <> 0)
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

procedure TFOrdemDesp.BtBaixaAdiantamentoClick(Sender: TObject);
var
   ATUFINANC:Boolean;
   Xcod_cta:Integer;
begin
  inherited;
       ATUFINANC:=False;
       ///Paulo 11/07/2011: lança caixa para valor de adiantamento
      // If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '') = True
      // Then Begin
      //Paulo 12/07/2011: valida o campo
      if (EdVlrAdiantamento.ValueNumeric <= 0)then
      begin
          Mensagem('OPÇÃO BLOQUEADA', 'Adiantamento não pode ser efetuado com valores nulos.', ' ', 1, 1, true, 'a');
          Exit;
      end;

      //Paulo 12/07/2011: Verifica se ja tem adiantamento lançado
      if (XVLRADIANT > 0) then
      begin
          Mensagem('OPÇÃO BLOQUEADA', 'Já existe adiantamento para essa ordem.', ' ', 1, 1, true, 'a');
          Exit;
      end;

      //Paulo 13/07/2011: Verifica se o valor do adiantamento é maior do que o valor total
      if (EdVlrAdiantamento.ValueNumeric > EdValorTotal.ValueNumeric) then
      begin
          Mensagem('OPÇÃO BLOQUEADA', 'O valor do adiantamento não pode ser maior que o valor total.', ' ', 1, 1, true, 'a');
          Exit;
      end;

      //Paulo 12/07/2011: verifica se o caixa estah aberto
       If DMCAIXA.VerifAbCaixa = false
       Then Begin
           Mensagem('   A T E N Ç Ã O   ','CAIXA FECHADO. O ADIANTAMENTO NÃO PODE SER EFETUADO.','',1,1,false,'a');
           Exit;
       End;

          
           //Filtra loja
           FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
           //***********************************************
           // INICIO DE PROCESSO PARA CONTROLE FINANCEIRO **
           //***********************************************
           //Filtra cliente
           FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCOD_CLIENTE), '');
           If (CBGeraFinanceiro.Checked=False)
           Then Begin
               Xcod_cta:=DMMACS.TLoja.FieldByName('PLNCTASERV').AsInteger;
               //Paulo 11/07/2011: REALIZA LANÇAMENTOS EM CAIXA REFERENTE A ADIANTAMENTO

               If LanCaixa(-1, DateToStr(Date()), Xcod_cta, 'Adiantamento Ordem Serv. '+EdNumero.Text+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString,  EdVlrAdiantamento.ValueNumeric, 'ADORDSERV', (XCOD_ORDEM), 'Carteira', 'E', EdNumero.Text, Date(), '1')=True
               Then Begin//informa que a atualização do financeiro foi efetivada
                   ATUFINANC:=True;
               End
               Else Begin//informa que a finalização do financeiro falhou
                   ATUFINANC:=False;
               End;

           end;

           //Paulo 11/07/2011: Filtra o forma de pagto
           //FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'DESCRICAO', 'À VISTA', '');


           //Verifica se todas as atualizações foram possíveis
           If ATUFINANC=True
           Then Begin //então tenta-se confirmar operação
               Try
                   //Paulo 11/07/2011: Salva o valor do adiantamento
                   DMServ.TOrd.Edit;
                   DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency:=EdVlrAdiantamento.ValueNumeric;
                   DMServ.TOrd.Post;
                   DMServ.TOrd.ApplyUpdates;
                   XVLRADIANT:=EdVlrAdiantamento.ValueNumeric;
                   EdVlrAdiantamento.ReadOnly:=True;
                   //Paulo 12/07/2011: Calcula o valor do saldo
                   lbSaldo.Caption:=FormatFloat('0.00',(EdValorTotal.ValueNumeric - EdVlrAdiantamento.ValueNumeric));
                   BtBaixaAdiantamento.Enabled:=False;
                   BtCancelaBaixaAdiantamento.Enabled:=True;

                   //EFETUA TRANSAÇÕES
                   DMServ.IBT.CommitRetaining;
                   MDO.Transac.CommitRetaining;
                   //DMCAIXA.IBT.CommitRetaining;
                   Mensagem('INFORMAÇÃO AO USUÁRIO', 'ADIANTAMENTO LANÇADO COM SUCESSO!', '', 1, 1, false, 'i');
                   
               Except
                   Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao lançar adiantamento da ordem de serviço.', 'Ocorreram problemas ao gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
                   //DMCAIXA.IBT.RollbackRetaining;
                   MDO.Transac.RollbackRetaining;
                   DMServ.IBT.RollbackRetaining;
                   
               End;
           End
           Else Begin
               Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao fechar a ordem de serviço, os dados serão mantidos e a ordem aberto.', 'Ocorreram problemas ao gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
               DMCAIXA.IBT.RollbackRetaining;
               DMServ.IBT.RollbackRetaining;
               EdVlrAdiantamento.ReadOnly:=False;
           End;
      // end;

end;

procedure TFOrdemDesp.BtCancelaBaixaAdiantamentoClick(Sender: TObject);
var
   XatAd:Boolean;
begin
  inherited;
       XatAd:=False;
       //Paulo 11/07/2011: Cancela lançamento de adiantamento
       If Mensagem('A T E N Ç Ã O', 'DESEJA EFETUAR O CANCELAMENTO DO ADIANTAMENTO DA ORDEM DE SERVIÇO:'+#13+'Nº '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
       Then Begin
           // verifica se o caixa estah aberto
           If DMCAIXA.VerifAbCaixa = false
           Then Begin
               Mensagem('   A T E N Ç Ã O   ','CAIXA FECHADO. O ADIANTAMENTO NÃO PODE SER CANCELADA.','',1,1,false,'I');
               Exit;
           End;

           //Filtra cliente
           FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCOD_CLIENTE), '');
           //filtra loja para capturar as configurações
           FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');


           //FILTRA LANÇAMENTO EM CAIXA E GERA OUTRO LANÇAMENTO DE ESTORNO EM CX
           DMCAIXA.TLanCaixa.Close;
           DMCAIXA.TLanCaixa.SQL.Clear;
           DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA WHERE (TIPOGERADOR='+#39+'ADORDSERV'+#39+') AND (COD_GERADOR=:CODPEDIDO) AND (VALOR=:VALOR)');
           DMCAIXA.TLanCaixa.ParamByName('CODPEDIDO').AsInteger:=XCOD_ORDEM;
           DMCAIXA.TLanCaixa.ParamByName('VALOR').AsCurrency:= EdVlrAdiantamento.ValueNumeric;
           DMCAIXA.TLanCaixa.Open;
           DMCAIXA.TLanCaixa.First;
           If Not DMCAIXA.TLanCaixa.IsEmpty
           Then Begin//se foi encontrado algum lançamento em caixa deve se realizar outro de estorno
               If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. Adiantamento de O.S. '+EdNumero.Text+' Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TADOS', XCOD_ORDEM, 'Carteira', 'S', 'EST'+EdNumero.Text, Date(), '1')= True Then
               begin
                   //DMCAIXA.IBT.CommitRetaining;
                   MDO.Transac.CommitRetaining;
                   XatAd:=True;
               end
               Else begin
                   MDO.Transac.RollbackRetaining;
                   XatAd:=False;
               end;
           End;
           If XatAd=True
           Then Begin//Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
               DMServ.TOrd.EDIT;
               DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency:=0;
               DMServ.TOrd.Post;
               DMServ.IBT.CommitRetaining;
               EdVlrAdiantamento.Text:='0,00';
               XVLRADIANT:=0;
               lbSaldo.Caption:=EdValorTotal.Text;
               EdVlrAdiantamento.ReadOnly:=False;
               BtBaixaAdiantamento.Enabled:=True;
               BtCancelaBaixaAdiantamento.Enabled:=False;
           End;
       End;
end;




procedure TFOrdemDesp.EdSacadoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
       If Key=#13
       Then Begin
           If (EdSacado.Text<>'') and (EdSacado.Text<>'Sacado')
           Then Begin
               FiltraOrdem(' (pessoa.nome like '+#39+'%'+EdSacado.Text+'%'+#39+')');
           End;
       End;
       If Key=#27
       Then Begin
           FiltraOrdem('');
       End;
end;

procedure TFOrdemDesp.EdSacadoExit(Sender: TObject);
begin
  inherited;
       if Trim(EdSacado.Text) = '' then
           EdSacado.Text := 'Sacado';
end;

procedure TFOrdemDesp.EdSacadoEnter(Sender: TObject);
begin
  inherited;
       if EdSacado.Text = 'SACADO' then
   	    EdSacado.Text := '';
end;



procedure TFOrdemDesp.RelOSDespachante1Click(Sender: TObject);
begin
  inherited;
       FMenu.XTipoRel:='DESPACHANTE';
       XTipoRelDesp:= 'RECIBO';
       //Paulo 09/08/2011: Abre a tela de filtro do relatório
       AbrirForm(TFRelLancContas, FRelLancContas, 1);
end;

procedure TFOrdemDesp.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
       PMRel.Popup(Left+PConsulta.left+PBotoesConsulta.left+ BtnRelatorio.Left, top+PConsulta.Top+PBotoesConsulta.top+BtnRelatorio.Top+BtnRelatorio.Height);
end;

procedure TFOrdemDesp.DBGridConsultaCellClick(Column: TColumn);
var
   xcodtmp:Integer;
begin
  inherited;
       //Paulo 15/08/2011: Verifica se tem lançamentos no ctas a recebe
       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add('select parcelacr.valorpg, ctareceber.valor, ctareceber.cod_gerador, ctareceber.tipogerador,');
       DMServ.TAlx1.SQL.Add('parcelacr.dtvenc, parcelacr.fech, ctareceber.dtlanc from ctareceber');
       DMServ.TAlx1.SQL.Add('left join parcelacr on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber');
       DMServ.TAlx1.SQL.Add('where ctareceber.cod_gerador = :gerador and ctareceber.tipogerador = '+#39+'ORD'+#39+'');
       DMServ.TAlx1.ParamByName('GERADOR').AsInteger:=DMSERV.WOrdemDesp.FieldByNAme('COD_ORDEM').AsInteger;
       DMServ.TAlx1.Open;

       if not(DMServ.TAlx1.IsEmpty) then
       begin
           //Paulo 22/08/2011: Salva os dados na tabela tmp calculando os valores
           DMMACS.TMP.Close;
           DMMACS.TMP.SQL.Clear;
           DMMACS.TMP.SQL.Add('delete from tmp');
           DMMACS.TMP.ExecSQL;
           DMMACS.Transaction.CommitRetaining;
           DMMACS.TMP.Close;
           DMMACS.TMP.SQL.Clear;
           DMMACS.TMP.SQL.Add('select * from tmp');
           DMMACS.TMP.Open;
           xcodtmp:= 1;

           DMServ.TAlx1.First;
           while not DMServ.TAlx1.Eof do
           begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=xcodtmp;
               //Paulo 29/08/2011:se o valor pago for igual ao valor da parcela ele mostra somento o valor
               if(DMServ.TAlx1.FieldByName('valor').AsCurrency = DMServ.TAlx1.FieldByName('valorpg').AsCurrency)then
                   DMMACS.TMP.FieldByName('VLR1').AsCurrency:=(DMServ.TAlx1.FieldByName('valor').AsCurrency)
               else
                   DMMACS.TMP.FieldByName('VLR1').AsCurrency:=(DMServ.TAlx1.FieldByName('valor').AsCurrency - DMServ.TAlx1.FieldByName('valorpg').AsCurrency);

               DMMACS.TMP.FieldByName('INT1').AsInteger:=DMServ.TAlx1.FieldByName('cod_gerador').AsInteger;
               DMMACS.TMP.FieldByName('DESC1').AsString:=DMServ.TAlx1.FieldByName('tipogerador').AsString;
               DMMACS.TMP.FieldByName('DATA1').AsDateTime:= DMServ.TAlx1.FieldByName('dtvenc').AsDateTime;
               DMMACS.TMP.FieldByName('DESC2').AsString:=DMServ.TAlx1.FieldByName('fech').AsString;
               DMMACS.TMP.FieldByName('DATA2').AsDateTime:= DMServ.TAlx1.FieldByName('dtlanc').AsDateTime;
               DMMACS.TMP.Post;
               DMMACS.Transaction.CommitRetaining;
               xcodtmp:=xcodtmp+1;
               DMServ.TAlx1.Next;

           end;
           DMServ.Alx.Close;
           DMServ.Alx.SQL.Clear;
           DMServ.Alx.SQL.Add('select vlr1 as valor, int1 as cod_gerador, desc1 as tipogerador,');
           DMServ.Alx.SQL.Add('data1 as dtvenc, desc2 as fech, data2 as dtlanc from tmp');
           DMServ.Alx.Open;

           XdataGrid:=DateToStr(DMServ.Alx.FieldByName('dtvenc').AsDateTime);
           XfechGrid:=DMServ.Alx.FieldByName('fech').AsString;

       end;




       if not DMServ.TAlx1.IsEmpty then
           DBGridResumoOS.Visible:=True
       else
           DBGridResumoOS.Visible:=False;
end;

procedure TFOrdemDesp.DBGridResumoOSDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;            
       if XdataGrid <>'' then
       begin
           //Paulo 15/08/2011: Caso a parcela esteja vencida ela fica em vermelho
           if (Date() > StrToDate(XdataGrid))and (XfechGrid = 'N')
           then begin
               DBGridResumoOS.Canvas.Font.Color := clRed;
               DBGridResumoOS.DefaultDrawColumnCell(Rect, DataCol, Column, State);
           end;
       end;

end;

procedure TFOrdemDesp.RelSintticoOS1Click(Sender: TObject);
begin
  inherited;
       FMenu.XTipoRel:='DESPACHANTE';
       XTipoRelDesp:= '';
       //Paulo 09/08/2011: Abre a tela de filtro do relatório
       AbrirForm(TFRelLancContas, FRelLancContas, 1);
end;

procedure TFOrdemDesp.CtasReceberporSacado1Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';
   FMenu.TIPOREL:='RELCTARSACADO';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFOrdemDesp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{	If PCadastro.Visible=true
   Then Begin
   	MessageDlg('Use o botão gravar ou cancelar!', mtWarning, [mbOK], 0);
       Action:=caNone;
       Exit;
   End;}
  inherited;

end;

procedure TFOrdemDesp.BtnSelecionarClick(Sender: TObject);
begin
  inherited;
   FMenu.SelectedForm := True;
   FMenu.XCodOrdemVinculo := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
   Close;
end;

end.

