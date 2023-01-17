unit UPdv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, jpeg, EditFloat, Grids, DBGrids, Buttons, Mask,
  DBCtrls, DBColorEdit, FashionPanel, ColorEditFloat, TFlatEditUnit,
  UFrmBusca;

type
  TFPDV = class(TForm)
    Panel1: TPanel;
    Shape2: TShape;
    Shape11: TShape;
    Shape4: TShape;
    Label3: TLabel;
    Shape17: TShape;
    Shape18: TShape;
    Label2: TLabel;
    Shape3: TShape;
    Shape5: TShape;
    Panel2: TPanel;
    LCODUSUARIO: TLabel;
    Panel3: TPanel;
    LUSUARIO: TLabel;
    Panel5: TPanel;
    LCODCAIXA: TLabel;
    Panel6: TPanel;
    LCAIXA: TLabel;
    IMGLogosi: TImage;
    Panel4: TPanel;
    Panel7: TPanel;
    Label1: TLabel;
    EDTOTALPDV: TLabel;
    Panel8: TPanel;
    EDCODBARRA: TFloatEdit;
    DBGrid1: TDBGrid;
    ImgFundo: TImage;
    EDPRODUTO: TEdit;
    EDVLRUNITPROD: TFloatEdit;
    EDQTD: TFloatEdit;
    EDVLRTOTPROD: TFloatEdit;
    Label5: TLabel;
    Edit1: TEdit;
    LQTDPROD: TLabel;
    PControl: TPanel;
    Panel9: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    PDados: TPanel;
    FashionPanel1: TFashionPanel;
    PSelectCliente: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EdCodCli: TEdit;
    EdCPF: TEdit;
    EdNomeCli: TEdit;
    BtnProcPess: TBitBtn;
    PPesCad: TPanel;
    DBNomeCli: TDBColorEdit;
    DBCPF: TDBColorEdit;
    EdCodVend: TColorEditFloat;
    Label24: TLabel;
    EDNOMEVENDEDOR: TColorEditFloat;
    BtnProcVend: TBitBtn;
    Label14: TLabel;
    EDCODFORMPAG: TColorEditFloat;
    EDFORMPAG: TColorEditFloat;
    BtnProcFormPag: TBitBtn;
    Label25: TLabel;
    CBPagamento: TComboBox;
    Panel10: TPanel;
    Panel11: TPanel;
    BtnMoedaOK: TBitBtn;
    FrmConta: TFrmBusca;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    PTROCO: TPanel;
    Panel13: TPanel;
    EDDINHEIRO: TFloatEdit;
    EDTROCO: TFloatEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Image1: TImage;
    procedure EDCODBARRAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FashionPanel1Exit(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnProcPessClick(Sender: TObject);
    procedure EdCodVendKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCODFORMPAGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnProcFormPagClick(Sender: TObject);
    procedure BTNOPENClick(Sender: TObject);
    procedure FrmContaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure BtnProcVendClick(Sender: TObject);
    procedure BtnMoedaOKClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EDQTDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDTROCOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDDINHEIROExit(Sender: TObject);
    procedure EDVLRUNITPRODKeyPress(Sender: TObject; var Key: Char);
    procedure PSelectClienteExit(Sender: TObject);
    procedure EDCODFORMPAGExit(Sender: TObject);
    procedure BtnProcFormPagExit(Sender: TObject);
  private
    { Private declarations }
    Procedure NovaVenda;//PROCEDURE UTILIZADA PARA ABRIR NOVA VENDA
    Procedure FiltraSlave;//PROCEDURE UTILIZADA PARA FILTRAR OS REGISTROS DOS PRODUTOS VENDIDOS
    Procedure InsertItem;//Procedure responsável por incluir um produto a lista e atualizar os valores
    Procedure RetiraItem;//Procedure utilizada para retirar o item selecionado da lista a atualizar valores
	 Procedure GravaVenda;//Procedure utilizada para gravar a venda
	 Function FechaPedido(CODPEDIDO: INTEGER) : Boolean;//Procedure utilizada para fechar pedido atualiza valores
    Procedure IncCalcProd; //Procedure utilizada para Calcular e incluir o produto a lista
    //Procedure Utilizada para verificar se o pedido se tornará caderneta para o cliente
    Procedure SelectCader;
    
  public
    { Public declarations }
  end;

var
  FPDV: TFPDV;

  //CHAVES NECESSÁRIAS PARA O PDV
  XCOD_PEDVENDA: INTEGER;
  XCOD_ITEMPEDV: INTEGER;
  XCOD_CLIENTE: INTEGER;
  XCOD_VENDEDOR: INTEGER;
  XCOD_FORMPAG: INTEGER;
  XCOD_ESTOQUE: INTEGER;
  XCOD_CONTA: INTEGER;
  XSTATE:String;

  XVALTOTPDV: REAL;
  XALTQTD: Boolean;//Controla se foi alterado a qtd de 1 para um vlr digitado pelo usuario
  XAltVlr: Boolean;//controla se o usuário alterou o valor unitario do produto

implementation

uses Alxor32, UDMSaida, UDMMacs, UMenu, UDMFinanc, UDMEstoque, AlxMessage,
  UDMPessoa, UCliente, UFuncionario, UFormPag, UDMConta, UConsPlncta,
  UDMCaixa, UProduto;

{$R *.DFM}

//Procedure Utilizada para verificar se o pedido se tornará caderneta para o cliente
Procedure TFPDV.SelectCader;
VAR
	XCODPEDCANCEL:INTEGER;
Begin
	//libera compenentes p/ procurar forma de pagamento
   EDCODFORMPAG.Enabled:=True;
   BtnProcFormPag.Enabled:=True;
 	If EDFORMPAG.Text='CADERNETA'
   Then Begin
		//PASSA SQL PARA VERIFICAR SE ESTE CLIENTE JÁ POSSUI CADERNETA
   	DMSAIDA.WPedV.Close;
   	DMSAIDA.WPedV.SQL.Clear;
   	DMSAIDA.WPedV.SQL.Add('SELECT * from vwpedv where vwpedv.formpag='+#39+'CADERNETA'+#39+' AND vwpedv.cod_cliente=:CODCLIENTE');
   	DMSAIDA.WPedV.ParamByName('CODCLIENTE').AsInteger:=XCOD_CLIENTE;
       DMSAIDA.WPedV.Open;
       If Not DMSAIDA.WPedV.IsEmpty
       Then Begin// Se o cliente já possuí caderneta aberta, cancela este pedido e reabre no caderneta

       	//CANCELA PEDIDO ATUAL
           XCODPEDCANCEL:=DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsInteger;
           DMSAIDA.TPedV.Cancel;
			//FILTRA PEDIDO DE CADERNETA
           If FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsString, '')=True
			Then Begin
               DMESTOQUE.Alx.Close;
               DMESTOQUE.Alx.SQL.Clear;
               DMESTOQUE.Alx.SQL.Add('UPDATE ITENSPEDVEN SET COD_PEDVEN=:CODNEW WHERE COD_PEDVEN=:CODCANCELADO');
               DMESTOQUE.Alx.ParamByName('CODNEW').AsInteger:=DMSAIDA.WPedV.FieldByNAme('COD_PEDVENDA').AsInteger;
               DMESTOQUE.Alx.ParamByName('CODCANCELADO').AsInteger:=XCODPEDCANCEL;
               DMESTOQUE.Alx.ExecSQL;
               DMESTOQUE.TransacEstoque.CommitRetaining;
   			//Filtra slaves e calcula total
               XCOD_PEDVENDA:= DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsInteger;
   			FiltraSlave;
               DMSAIDA.TPedV.EDIT;
           End;
			//bloquea compenentes p/ procurar forma de pagamento
           EDCODFORMPAG.Enabled:=False;
           BtnProcFormPag.Enabled:=False;
       End;
   End;
End;

Procedure TFPDV.IncCalcProd;
Begin
	//se encontrou
   EDPRODUTO.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
   If (XALTQTD=False) OR (EDQTD.ValueNumeric=0) Then
   	EDQTD.ValueNumeric:=1;//Se a qtd não deve ser alterada o sistema informa qtd = 1
   If XAltVlr=False Then
	    EDVLRUNITPROD.ValueNumeric:=DMESTOQUE.WSimilar.FieldByName('VENDVARV').AsCurrency;//se o valor não foi alterado o sistema informa valor

	EDVLRTOTPROD.ValueNumeric:=EDVLRUNITPROD.ValueNumeric*EDQTD.ValueNumeric;
   XCOD_ESTOQUE:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
   EDCODBARRA.Text:='';
   //VERIFICA SE JÁ EXISTE ESTE PRODUTO INSERIDO A LISTA
	If FiltraTabela(DMSAIDA.TItemPV, 'ITENSPEDVEN', 'COD', '', ' (COD_PEDVEN='+IntToStr(XCOD_PEDVENDA)+') AND (COD_ESTOQUE='+IntToStr(XCOD_ESTOQUE)+')')=True
   Then Begin
   	//se encontrou um mesmo produto inserido a lista ele vai retirar adicionar esta quantidade ao outro e lançar novamente
		//INSERE COMANDOS PARA FILTRAR
		DMESTOQUE.TSlave.Close;
		DMESTOQUE.TSlave.SQL.Clear;
		DMESTOQUE.TSlave.SQL.Add('Select itenspedven.cod_itenspedven, itenspedven.cod_pedven, itenspedven.cod_estoque,  itenspedven.qtdeprod, ItensPedVen.ValorTotal, ');
		DMESTOQUE.TSlave.SQL.Add('itenspedven.valunit, subproduto.descricao, subproduto.marca ');
		DMESTOQUE.TSlave.SQL.Add('From itenspedven left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
		DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
		DMESTOQUE.TSlave.SQL.Add('Where (itenspedven.cod_pedven = :CODPEDVENDA) AND (COD_ESTOQUE=:CODEST) ');
		DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsInteger:=XCOD_PEDVENDA;
		DMESTOQUE.TSlave.ParamByName('CODEST').AsInteger:=XCOD_ESTOQUE;
		DMESTOQUE.TSlave.Open;
       //DEPOIS DE SELECIONADO SOMA AS QTDS
       EDQTD.ValueNumeric:=EDQTD.ValueNumeric+DMESTOQUE.TSlave.FieldByName('qtdeprod').AsCurrency;
       EDVLRTOTPROD.ValueNumeric:=EDVLRUNITPROD.ValueNumeric*EDQTD.ValueNumeric;
       //remove da lista
       RetiraItem;
       //adiciona novamente
       InsertItem;
   End
   Else Begin
       //caso este produto ainda não exista na lista
      	InsertItem;
   End;
   XALTQTD:=False;
   XAltVlr:=False;
End;

//Fecha pedido (Atualiza estoque e joga no financeiro
Function TFPDV.FechaPedido(CODPEDIDO: INTEGER) : Boolean;
Var
	AtualizaEst, ATUFINANC: Boolean; //Controla se atualização de estoque e controle financeiro foram efetivados
   XPKSlaveCampo, XSQLSlave: String;//guardará a pk e a SQL do tabela slave
   XSQLTABELA: String;
Begin

   XPKSlaveCampo:='COD_ITENSPEDVEN';
   XSQLSlave:='ITENSPEDVEN';

	//inicializa as variaveis como true, caso encontre erro na passagem da função eslas passaram a false
   FechaPedido:=True;
	AtualizaEst:=True;
   ATUFINANC:=True;

	// Tenta filtrar o pedido
   If FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', IntToStr(CODPEDIDO), '') = True
	Then Begin
       //Filtra loja
		FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

       //***********************************************
       // INICIO DE PROCESSO PARA CONTROLE FINANCEIRO **
       //***********************************************

       //Filtra Forma de Pagamento
       If FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG',  IntToStr(XCOD_FORMPAG), '') = True
   	Then Begin // Encontrou forma de pagamento, continua processo
       		If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
           	Then Begin // caso o pedido tenha sido feito à vista deve-se lançar o valor direto no caixa
					If LanCaixa(0{DMFinanc.VWMoedaCota.FieldByName('COD_MOEDA').AsInteger}, DateToStr(Date()), XCOD_CONTA, 'Fech. Venda '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString+' - Cli. '+DMSAIDA.TPedV.FieldByName('NOMECLI').AsString,  DMSAIDA.TPEDV.FieldByName('VALOR').Value, 'PEDVENDA', XCOD_PEDVENDA, CBPagamento.Text, 'E', DMSAIDA.TPedV.FieldByName('NUMPED').AsString, Date(), '1')=True
                   Then Begin//informa que a atualização do financeiro foi efetivada
                   	ATUFINANC:=True;
                   End
                   Else Begin//informa que a finalização do financeiro falhou
                       ATUFINANC:=False;
                   End;
               End
               Else Begin//Não é à vista
       			If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='CADERNETA'
           		Then Begin // caso o pedido tenha sido feito CADERNETA deve-se lançar o valor Em Cta receber Caderneta
                   	//SQL para verificar se o pedido já possui uma caderneta
                       DMCONTA.TCtaR.Close;
                       DMCONTA.TCtaR.SQL.Clear;
                       DMCONTA.TCtaR.SQL.Add('SELECT * FROM CTARECEBER WHERE ctareceber.tipogerador='+#39+'PEDVCAD'+#39+' AND ctareceber.cod_gerador=:CODGERADOR ');
						DMCONTA.TCtaR.ParamByName('CODGERADOR').AsInteger:=XCOD_PEDVENDA;
                       DMCONTA.TCtaR.Open;
                       If DMCONTA.TCtaR.IsEmpty
                       Then Begin//Não foi encontrado caderneta, gerar nova
               			If LancConta('PEDVENDA', XCOD_PEDVENDA, DMSAIDA.TPedV.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, DMSAIDA.TPedV.FieldByName('VALOR').Value, 0, XCod_Conta, 0{DMFinanc.VWMoedaCota.FieldByName('COD_MOEDA').AsInteger}, -1, 'Fechamento do Pedido de Venda '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString, DMSAIDA.TPedV.FieldByName('COD_FORMPAG').AsInteger, 'PCAD'+DMSAIDA.TPedV.FieldByName('NUMPED').AsString, 'PC', DMSAIDA.TPedV.FieldByName('DTPEDVEN').AsDateTime, 0, DMSAIDA.TPedV.FieldByName('DTPEDVEN').AsString, DMSAIDA.TPedV.FieldByName('numfiscal').AsString)=True
                       	Then Begin
                           	ATUFINANC:=True;
                       	End
                       	Else Begin
								ATUFINANC:=False;
                       	End;
                       End
                       Else Begin//foi encontrada caderneta, editar
                       	Try
                           	DMCONTA.TParcCR.Close;
                           	DMCONTA.TParcCR.SQL.Clear;
                           	DMCONTA.TParcCR.SQL.Add('SELECT * FROM PARCELACR WHERE PARCELACR.COD_CTARECEBER=:CODCTA');
                           	DMCONTA.TParcCR.ParamByName('CODCTA').AsString:=DMCONTA.TCtaR.FIELDBYNAME('COD_CTARECEBER').AsString;
                           	DMCONTA.TParcCR.Open;
                       		DMCONTA.TCtaR.Edit;
                           	DMCONTA.TCtaR.FieldByName('VALOR').AsCurrency:=DMSAIDA.TPedV.FieldByName('VALOR').AsCurrency;
                       		DMCONTA.TCtaR.Post;
                       		DMCONTA.TParcCR.Edit;
                           	DMCONTA.TParcCR.FieldByName('VALORPROD').AsCurrency:=DMSAIDA.TPedV.FieldByName('VALOR').AsCurrency;
                           	DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency:=DMCONTA.TParcCR.FieldByName('VALORPROD').AsCurrency+DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency;
       						//armazena valor por extenso
  								Try
									FMenu.Extenso.Numero:=FormatFloat('###,##0.00', DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency);
									DMCONTA.TParcCR.FieldByName('VALEXT').AsString:=FMenu.Extenso.Extenso;
   	 						Except
   	 						End;
                           	DMCONTA.TCtaR.ApplyUpdates;
                           	DMCONTA.TParcCR.ApplyUpdates;
                           	DMCONTA.IBT.CommitRetaining;
								ATUFINANC:=True;
                           Except
                           	ATUFINANC:=False;
                           End;
                       End;
                   End
                   Else Begin
              			If LancConta('PEDVENDA', XCOD_PEDVENDA, XCOD_CLIENTE, CBPagamento.Text, DMSAIDA.TPedV.FieldByName('VALOR').Value, 0, XCOD_CONTA, -1, -1{DMFinanc.VWMoedaCota.FieldByName('COD_MOEDA').AsInteger}, 'Fechamento do Pedido de Venda '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString, XCOD_FORMPAG, DMSAIDA.TPEDV.FieldByName('NUMPED').AsString, 'P', DMSAIDA.TPEDV.FieldByName('DTPEDVEN').AsDateTime, 0, DMSAIDA.TPEDV.FieldByName('DTPEDVEN').AsString, DMSAIDA.TPEDV.FieldByName('numfiscal').AsString)=True
                   	Then Begin
	                    	ATUFINANC:=True;
                   	End
                   	Else Begin
                   		ATUFINANC:=False;
                   	End;
                   End;
               End;
       End
       Else Begin //não esncontrou forma de pagamento, processo inválido retornar informações
           ATUFINANC:=False;
       End;

       //Verifica se todas as atualizações foram possíveis
       If (AtualizaEst=True) And (ATUFINANC=True)
       Then Begin //então tenta-se confirmar operação
       	Try
           	//FECHA PEDIDO
               DMSAIDA.TPedV.Edit;
               DMSAIDA.TPedV.FieldByName('SITUACAO').AsString:='FECHADO';
               DMSAIDA.TPedV.Post;
               DMSAIDA.TPedV.ApplyUpdates;

               //EFETUA TRANSAÇÕES
               DMSAIDA.IBT.CommitRetaining;
               DMCAIXA.IBT.CommitRetaining;
               DMCONTA.IBT.CommitRetaining;
           Except
				Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao fechar o pedido, os dados serão mantidos e o pedido aberto.', 'Ocorreram problemas ao atualizar estoque ou a gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
				DMCAIXA.IBT.RollbackRetaining;
               DMCONTA.IBT.RollbackRetaining;
				DMSAIDA.IBT.RollbackRetaining;
           End;
       End
       Else Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao fechar o pedido, os dados serão mantidos e o pedido aberto.', 'Ocorreram problemas ao atualizar estoque ou a gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
           DMCAIXA.IBT.RollbackRetaining;
           DMCONTA.IBT.RollbackRetaining;
			DMSAIDA.IBT.RollbackRetaining;
       End;
   End
   Else Begin //else de filtragem de pedido
       FechaPedido:=false;
   End;
End;

Procedure TFPdv.GravaVenda;//Procedure Utilizada para Finaliza a Venda
Begin

	//INFORMA VALORES DAS CHAVES ESTRANGEIRAS
   DMSAIDA.TPedV.Edit;
   DMSAIDA.TPedV.FieldByName('COD_FORMPAG').AsInteger:=XCOD_FORMPAG;
	DMSAIDA.TPedV.FieldByName('COD_VENDEDOR').AsInteger:=XCOD_VENDEDOR;
   DMSAIDA.TPedV.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
   DMSAIDA.TPedV.FieldByName('COD_CLIENTE').AsInteger:=XCOD_CLIENTE;

   //INICIA PROCESSO PARA GRAVAR TABELAS
   DMSAIDA.TPedV.FieldByName('VALOR').Value:=XVALTOTPDV;

   //grava tabela slave
   Try
   	DMSAIDA.TItemPV.ApplyUpdates;
   	DMSAIDA.TPedV.Post;
   	DMSAIDA.TPedV.ApplyUpdates;
       DMSAIDA.IBT.CommitRetaining;
       PTROCO.Visible:=False;
   Except
	End;
   If FechaPedido(XCOD_PEDVENDA)=True Then
	   NovaVenda;

End;

//Procedure utilizada para retirar o item selecionado da lista a atualizar valores
Procedure TFPdv.RetiraItem;
Begin
   If DMESTOQUE.TSlave.RecordCount<>0
   Then Begin//caso a tabela esteja vasia não pode apagar
	  	//LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
		FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
		FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
		FiltraTabela(DMSAIDA.TItemPV, 'ITENSPEDVEN', 'COD_ITENSPEDVEN', DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDVEN').AsString, '');
	    //Atualiza Estoque
	    DMEstoque.TEstoque.edit;
      	DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value+DMSAIDA.TItemPV.FieldByName('QTDEPROD').Value;
       //Atualiza saldo de estoque
       Try
	  		DMEstoque.TEstoque.FieldByName('ESTSALDO').Value:=(DMEstoque.TEstoque.FieldByName('ESTPED').AsCurrency-DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency)+DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency;
       Except
       End;

		DMEstoque.TEstoque.Post;
       DMESTOQUE.TransacEstoque.CommitRetaining;

	    //APAGA ITEM
	 	DMSAIDA.TItemPV.Delete;
       If DMSAIDA.TItemPV.UpdatesPending Then
		    DMSAIDA.TItemPV.ApplyUpdates;

 	    //CONFIRMA TRANZAÇÃO
	    Try
		   DMESTOQUE.TransacEstoque.CommitRetaining;
          DMESTOQUE.TransacEstoque.CommitRetaining;
          DMSAIDA.IBT.CommitRetaining;
	    Except
		   DMESTOQUE.TransacEstoque.RollbackRetaining;
          DMSAIDA.IBT.RollbackRetaining;
	    End;
       FiltraSlave;
       If DMESTOQUE.TSlave.IsEmpty Then
           XSTATE:='POST'
  	End;
End;

//Procedure responsável por incluir um produto a lista e atualizar os valores
Procedure TFPdv.InsertItem;
Begin
   //Valida quanto ao estoque físico (veirifca se ha estoque suficiente
	If DMMacs.TLoja.FieldByName('VENDESTNEG').AsString='0'
  	Then Begin
		If (DMESTOQUE.WSimilar.FieldByName('ESTFISICO').AsCurrency<>0) OR (DMESTOQUE.WSimilar.FieldByName('ESTFISICO').AsCurrency>0)
       Then Begin
		   	If EDQTD.ValueNumeric>DMESTOQUE.WSimilar.FieldByName('ESTFISICO').AsCurrency
           Then Begin//o estoque que esta sendo negociado é maior que o estoque físico e segundo configuraçãoes isto não é permitido
				Mensagem('OPÇÃO BLOQUEADA', 'Não existe estoque suficiente para suportar esta operação', '', 1, 1, False, 'a');
				Exit;
           End;
        End
        Else Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Não existe estoque suficiente para suportar esta operação', '', 1, 1, False, 'a');
			Exit;
        End;
   End;

	If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', IntToStr(XCOD_ESTOQUE), '')=True
   Then Begin
	   //Inserir Produto a lista do pedido
	   XCOD_ITEMPEDV:=InserReg(DMSAIDA.TItemPV, 'ITENSPEDVEN', 'COD_ITENSPEDVEN');
	   DMSAIDA.TItemPV.FieldByName('COD_ITENSPEDVEN').AsInteger:=XCOD_ITEMPEDV;

	   DMSAIDA.TItemPV.FieldByName('COD_PEDVEN').AsInteger:=XCOD_PEDVENDA;
      DMSAIDA.TItemPV.FieldByName('COD_FUNCIONARIO').AsInteger:=XCOD_VENDEDOR;
	   DMSAIDA.TItemPV.FieldByName('DATA').AsString:=DateToStr(Date());
      DMSAIDA.TItemPV.FieldByName('VALCUSTO').Value:=DMESTOQUE.TEstoque.FieldByName('VALCUSTO').Value;
      DMSAIDA.TItemPV.FieldByName('VALREP').Value:=DMESTOQUE.TEstoque.FieldByName('VALREP').Value;
      DMSAIDA.TItemPV.FieldByName('COEFDIV').Value:=DMESTOQUE.TEstoque.FieldByName('COEFDIV').Value;
      DMSAIDA.TItemPV.FieldByName('VALCOMP').Value:=DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').Value;
      CalcLuc(EDVLRTOTPROD.ValueNumeric, 0{EDDesc.ValueNumeric}, EDQTD.ValueNumeric);
      DMSAIDA.TItemPV.FieldByName('LUCMOE').Value:=AlxLUCMOE;
      DMSAIDA.TItemPV.FieldByName('LUCPER').Value:=AlxLUCPER;
      DMSAIDA.TItemPV.FieldByName('COD_ESTOQUE').AsInteger:=XCOD_ESTOQUE;
      DMSAIDA.TItemPV.FieldByName('QTDEPROD').Value:=EDQTD.ValueNumeric;
      DMSAIDA.TItemPV.FieldByName('DESCPRO').Value:=0;{EDDesc.ValueNumeric;}
      DMSAIDA.TItemPV.FieldByName('VALUNIT').Value:=EDVLRUNITPROD.ValueNumeric;
      DMSAIDA.TItemPV.FieldByName('VALORTOTAL').Value:=EDVLRTOTPROD.ValueNumeric;

      //Tenta gravar as informações
      Try
      		//Atualiza Estoque
       	DMEstoque.TEstoque.edit;
      		//atualiza estoque físico
       	If DMEstoque.TEstoque.FieldByName('ESTFISICO').AsString='' Then
      			DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=(EDQTD.ValueNumeric) * -1
       	Else
				DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value-EDQTD.ValueNumeric;

       	//informa que o registro atualizou estoque
       	DMSAIDA.TItemPV.FieldByName('ATUEST').AsString:='1';

       	//Atualiza saldo de estoque
      		DMEstoque.TEstoque.FieldByName('ESTSALDO').Value:=(DMEstoque.TEstoque.FieldByName('ESTFISICO').Value+DMEstoque.TEstoque.FieldByName('ESTPED').Value)-DMEstoque.TEstoque.FieldByName('ESTRESERV').Value;
       	DMSAIDA.TItemPV.Post;
       	DMSAIDA.TItemPV.ApplyUpdates;

			DMEstoque.TEstoque.Post;
       	DMSAIDA.IBT.CommitRetaining;
       	DMESTOQUE.TransacEstoque.CommitRetaining;
	        XSTATE:='INSERT';//A VENDA INICIAOU E A TELA NÃO PODE MAIS SER FECHADA
   	Except
   	End;
   	//Filtra slaves e calcula total
   	FiltraSlave;
   End;
End;


//Filtra Tabela Slave e calcula total
Procedure TFPDV.FiltraSlave;
Begin
	//Calcula Total
	//INSERE COMANDOS PARA FILTRAR
	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select Sum(itenspedven.valortotal) as VALORTOTAL, SUM(itenspedven.qtdeprod) AS QTD From itenspedven');
	DMESTOQUE.TSlave.SQL.Add('Where itenspedven.cod_pedven = :CODPEDVENDA ');
	DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsInteger:=XCOD_PEDVENDA;
	DMESTOQUE.TSlave.Open;
   //INFORMA VALOR
   If DMESTOQUE.TSlave.FieldByNAme('VALORTOTAL').AsCurrency=0 Then
       EDTOTALPDV.Caption:='R$ 0,00'
   Else
   	EDTOTALPDV.Caption:='R$ '+FormatFloat('#,##0.00', DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency);

   //PASSA VALOR TOTAL DO PEDIDO PARA A VARIAVEL
   XVALTOTPDV:=DMESTOQUE.TSlave.FieldByNAme('VALORTOTAL').AsCurrency;
   
{   //calcula total menos desconto

   If (EDDescPed.Text<>'')
   Then Begin
	   If (DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsString<>'') Then
	   		EdValorPed.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VALORTOTAL').Value-((DMESTOQUE.TSlave.FieldByName('VALORTOTAL').Value*StrToFloat(EDDescPed.Text))/100)
      Else
	   		EdValorPed.ValueNumeric:=0;
   End
   Else Begin
	   If (DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsString<>'') Then
	   		EdValorPed.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VALORTOTAL').Value
      Else
	   		EdValorPed.ValueNumeric:=0;
   End;}

  	//INSERE COMANDOS PARA FILTRAR
	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select itenspedven.cod_itenspedven, itenspedven.cod_pedven, itenspedven.cod_estoque,  itenspedven.qtdeprod, ItensPedVen.ValorTotal, ');
	DMESTOQUE.TSlave.SQL.Add('itenspedven.valunit, subproduto.descricao, subproduto.marca ');
	DMESTOQUE.TSlave.SQL.Add('From itenspedven left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
	DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
	DMESTOQUE.TSlave.SQL.Add('Where itenspedven.cod_pedven = :CODPEDVENDA  order BY itenspedven.cod_itenspedven desc ');
	DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsInteger:=XCOD_PEDVENDA;
	DMESTOQUE.TSlave.Open;

	//INFORMA A QTD DE PRODUTOS
   If DMESTOQUE.TSlave.RecordCount=-1 Then
   	LQTDPROD.Caption:=''
   Else
   	LQTDPROD.Caption:=IntToStr(DMESTOQUE.TSlave.RECORDCOUNT)+ ' PROD.';

//   EDCODBARRA.SetFocus;
End;

//PROCEDURE UTILIZADA PARA ABRIR NOVA VENDA
Procedure TFPdv.NovaVenda;
Begin
	//FILTRA LOJA PARA PEGAR AS CONFIGURAÇÕES CORRETAS
	If FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '')=True
   Then Begin
		//LIMPA ESDITS DE SELEÇÃO DO PRODUTO
       XALTQTD:=False;
       XAltVlr:=False;
       EDQTD.Text:='';
       EDPRODUTO.Text:='';
       EDVLRUNITPROD.Text:='';
       EDVLRTOTPROD.Text:='';

       XCOD_CLIENTE:=DMMACS.TLoja.fieldByName('COD_CONSUMIDOR').AsInteger;
       EdNomeCli.Text:='CONSUMIDOR';
       EDFORMPAG.Text:='À VISTA';
       XCOD_CONTA:=DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
		FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCOD_CONTA), '');
       FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldbyName('CLASSIFICACAO').AsString;
       FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldbyName('DESCRICAO').AsString;

       //FILTRA USUARIO PARA LOCALIZAR VENDEDOR
		If FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'CODUSUARIO', FMenu.LCODUSUARIO.Caption, '')=True
       Then Begin
			FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', DMMACS.TUsuario.FieldByName('COD_FUNCIONARIO').AsString, '');
           XCOD_VENDEDOR:=DMMACS.TUsuario.FieldByName('COD_FUNCIONARIO').AsInteger;
           EdCodVend.Text:=DMPESSOA.VWFuncionario.FieldByNAme('COD_INTERNO').AsString;
           EDNOMEVENDEDOR.Text:=DMPESSOA.VWFuncionario.FieldByNAme('NOME').AsString;
       End
       Else Begin
       	If FMenu.LCODUSUARIO.Caption='111522'
           Then Begin
           	XCOD_VENDEDOR:=111522;
               EdCodVend.Text:='111522';
               EDNOMEVENDEDOR.Text:='SYSTEM LORD';
           End;
       End;

       //FILTRA FORMA DE PAGAMENTO À VISTA
        If FiltraTabela(DMFINANC.TAlx, 'FORMPAG', 'DESRICAO', '', ' DESCRICAO = '+#39+'À VISTA'+#39+' AND COD_LOJA='+FMenu.LCODLOJA.Caption)=TRUE
        Then Begin//não pode haver duas formas de pagamento=' à vista
           XCOD_FORMPAG:=DMFINANC.TAlx.FieldByName('COD_FORMPAG').AsInteger;
        End
        Else Begin
	         Mensagem('OPÇÃO BLOQUEADA', 'Para acessar o PDV cadastre uma forma de pagamento como À VISTA!', '', 1, 1, False, 'a');
            Close;
        End;

       //ABRE NOVO PEDIDO DE VENDA
		XCOD_PEDVENDA:=InserReg(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA');
       DMSAIDA.TPedV.FieldByName('NOMECLI').AsString:='CONSUMIDOR';
       XSTATE:='POST';//a venda acaba de ser iniciada e a tela pode ser fechada

       If DMMacs.TEmpresa.FieldByName('PROXPEDVEND').AsString='' Then
       	DMSAIDA.TPedV.FieldByName('NUMPED').AsString:='1'
       Else
       	DMSAIDA.TPedV.FieldByName('NUMPED').AsString:=DMMacs.TEmpresa.FieldByName('PROXPEDVEND').AsString;

       //ATUALIZA O NUM DO PEDIDO PARA Q OUTROS TERMINAIS PEGUEM O NUM CORRETO
       //Altera Nº proxima pedido de venda
       DMMacs.TEmpresa.EDIT;
       Try
       	DMMacs.TEmpresa.FieldByName('PROXPEDVEND').AsString:=IntToStr(StrToInt(DMMacs.TEmpresa.FieldByName('PROXPEDVEND').AsString)+1)
       Except
       End;
       Try
           DMMacs.TEmpresa.Post;
           DMMacs.TEmpresa.ApplyUpdates;
           DMMacs.Transaction.CommitRetaining;
       Except
 	    	Mensagem('ATENÇÃO', 'Não foi possível atualizar o Nº do proximo pedido. Por favor atualize manualmente!', '', 1, 1, False, 'a');
       End;
       DMSAIDA.TPedV.FieldByName('DTPEDVEN').AsDateTime:=DATE();
   	//Seleciona somente os registros corretos
   	FiltraSlave;
   End;
End;

procedure TFPDV.EDCODBARRAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	//CONTROLE DE MOVIMENTO DAS SETAS DO TECLADO
   If Key=VK_Down Then
       DMESTOQUE.TSlave.Next;
   If Key=VK_Up Then
       DMESTOQUE.TSlave.Prior;

	If key=VK_Return
   Then Begin //se chegou ao final do código de barras ou foi pressionado enter
		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODBARRA', EDCODBARRA.Text, '')=True
       Then Begin
       	//se encontrou
			IncCalcProd;//calcula e inseri produto
       End
       Else Begin
       	//se não encontrou o produto
           EDPRODUTO.Text:='PRODUTO NÃO ENCONTRADO';
{           EDQTD.Text:='';
           EDVLRUNITPROD.Text:='';
           EDVLRTOTPROD.Text:='';
           XCOD_ESTOQUE:=-1;
           EDCODBARRA.Text:='';}
       End;
   End;
end;

procedure TFPDV.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key=VK_F1
   Then Begin
       If PControl.Visible=True
       Then Begin
       	//pecha painel de controle
           PControl.Visible:=False;
       End
       Else Begin
   		//abrir painel de ajuda de teclas
       	PControl.Visible:=True;
       	PControl.BringToFront;
       End;
   End;
   If Key=VK_F2
   Then Begin
   	//Abrir formulário de produtos para busca
		If AbrirForm(TFProduto, FProduto, 1)='Selected'
		Then Begin
   		//Depois de selecionado insere produto
           IncCalcProd;
   	End;
   End;

	If key=VK_F5
   Then Begin
   	If DMESTOQUE.TSlave.RecordCount>0
       Then Begin
			//SE EXISTIR ALGUM PRODUTO LANÇADO ABRE O PAINEL DE TROCO
           EDDINHEIRO.ValueNumeric:=0;
           EDTROCO.ValueNumeric:=0;           
       	PTROCO.Visible:=True;
       	PTROCO.BringToFront;
       	EDDINHEIRO.SetFocus;
       End;
    End;

   If key=VK_F6
   Then Begin
		//ABRE PAINEL PARA ALTERAÇÃO DOS DADOS
       PDados.Visible:=True;
       Pdados.BringToFront;
       EdCodCli.SetFocus;
   End;

   If key=VK_F8
   Then Begin
		If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Reatirar o produto '+#13+DMESTOQUE.TSlave.FieldByName('descricao').AsString+#13+'da lista?' , '', 2, 2, False, 'c')= 2
   	Then Begin
			//RETIRA PRODUTO DA LISTA
	        RetiraItem;
       END;
   End;

	If key=VK_F10
   Then Begin
   	//ALTERAR QUANTIDADE DE PRODUTOS A SEREM LANÇADOS
       XALTQTD:=True;
       EDQTD.ReadOnly:=False;
       EDVLRUNITPROD.ReadOnly:=False;
       EDPRODUTO.Text:='';
       EDQTD.Text:='';
       EDVLRUNITPROD.Text:='';
       EDQTD.SetFocus;
   End;

   If Key=VK_F11
   Then Begin
   	//Comando para fechar a tela do PDV
       If XSTATE<>'INSERT'
       Then Begin //verifica se não esta em estado de inserção
       	DMSAIDA.TPedV.Close;
           DMSAIDA.TPedV.SQL.Clear;
			DMSAIDA.TPedV.SQL.Add('SELECT * FROM PEDVENDA WHERE COD_PEDVENDA=:CODPEDIDO');
			DMSAIDA.TPedV.ParamByName('CODPEDIDO').AsInteger:=XCOD_PEDVENDA;
           DMSAIDA.TPedV.Open;
           Try
           	If Not DMSAIDA.TPedV.IsEmpty Then
             		DMSAIDA.TPedV.Delete;
           Except
           End;
           DMSAIDA.TPedV.ApplyUpdates;
           DMSAIDA.IBT.CommitRetaining;
           CLOSE;
       End;
   end;
end;

procedure TFPDV.FashionPanel1Exit(Sender: TObject);
begin
	If PDados.Visible=True Then
       EdCodCli.SetFocus;
end;

procedure TFPDV.EdCodCliExit(Sender: TObject);
begin
	//Verifica se o cliente é do tipo consumidor
	If XCOD_CLIENTE=DMMACS.TLoja.FieldByName('COD_CONSUMIDOR').AsInteger
	Then Begin
		PPesCad.Visible:=True;
	    PPesCad.BringToFront;
       PPesCad.Enabled:=True;
	    If DBNomeCli.Text='' Then
			DMSAIDA.TPedV.FieldByName('NOMECLI').AsString:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
   End;
end;

procedure TFPDV.EdCodCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	If Key = VK_return
   Then Begin
   	If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+EdCodCli.Text+#39)=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
       	XCOD_CLIENTE:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
           EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
       	XCOD_CLIENTE:=DMMACS.TLoja.fieldByName('COD_CONSUMIDOR').AsInteger;
           EdNomeCli.Text:='CONSUMIDOR';
       End;
   End;
end;

procedure TFPDV.BtnProcPessClick(Sender: TObject);
begin
	//se realmente estiver trabalhando com vendas e não com compras
   PPesCad.Visible:=False;
   FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   If AbrirForm(TFCliente, FCliente, 1)='Selected'
   Then Begin
   	XCOD_CLIENTE:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
       EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       EdCodCli.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
   End;
end;

procedure TFPDV.EdCodVendKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	If Key = VK_return
   Then Begin//se enter
   	If EdCodVend.Text<>''
       Then Begin//se codigo do vendedor não estiver em branco
       	//seleciona o vendedor de acordo com o valor da edit
	        If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', '', ' COD_INTERNO = '+#39+EdCodVend.Text+#39)=True
           Then Begin
               //atribuí o vendedor a venda
	            XCOD_VENDEDOR:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
	            EdCodVend.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
	            EDNOMEVENDEDOR.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
           End
           Else Begin
       		//FILTRA USUARIO PARA LOCALIZAR VENDEDOR
				If FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'CODUSUARIO', FMenu.LCODUSUARIO.Caption, '')=True
       		Then Begin
           		XCOD_VENDEDOR:=DMMACS.TUsuario.FieldByName('COD_FUNCIONARIO').AsInteger;
       		End
       		Else Begin
       			If FMenu.LCODUSUARIO.Caption='111522' Then
           		XCOD_VENDEDOR:=111522;
       		End;
           End;
       End;
   End;

end;

procedure TFPDV.EDCODFORMPAGKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	If Key=VK_RETURN
   Then Begin
       if EDCODFORMPAG.Text<>''
       Then Begin
       	//seleciona a forma de pagamento
           If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', EDCODFORMPAG.Text, '')
           Then Begin
		       XCOD_FORMPAG:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;

              EDCODFORMPAG.Text:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
              EDFORMPAG.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
           End;
       End;
   End;


end;

procedure TFPDV.BtnProcFormPagClick(Sender: TObject);
begin
	If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
		XCOD_FORMPAG:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;

       EDCODFORMPAG.Text:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsString;
       EDFORMPAG.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   End;

end;

procedure TFPDV.BTNOPENClick(Sender: TObject);
begin
   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   XTIPO_CONTA := 'C';

	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+'C'+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XCOD_CONTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;

end;

procedure TFPDV.FrmContaBTNOPENClick(Sender: TObject);
begin
   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   XTIPO_CONTA := 'C';

	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+'C'+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XCOD_CONTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;

end;

procedure TFPDV.FrmContaEDCodigoKeyPress(Sender: TObject; var Key: Char);
begin
	If Key = #13
   Then Begin
 		If FrmConta.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+'C'+#39+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+FrmConta.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XCOD_CONTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
       		XCOD_CONTA:=DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
		      	FrmConta.EdDescricao.Text:='';
		      	FrmConta.EDCodigo.text:='';
           End;
	    End
       Else Begin
	        XCOD_CONTA:=DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
	      	FrmConta.EdDescricao.Text:='';
	      	FrmConta.EDCodigo.text:='';
       End;
   End;


end;
procedure TFPDV.BtnProcVendClick(Sender: TObject);
begin
		FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');//LIBERA TODOS OS REGISTROS PARA CONSULTA
		If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
	    Then Begin
           XCOD_VENDEDOR:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
			EdCodVend.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
			EDNOMEVENDEDOR.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
   	End;

end;

procedure TFPDV.BtnMoedaOKClick(Sender: TObject);
begin
	//Valida caso cliente não seja cadastrado a vendo somente pode ser à vista
  	If PPesCad.Visible=FALSE
  	Then Begin
   	DMSAIDA.TPedV.FieldByName('NOMECLI').AsString:=EdNomeCli.Text;
   	DMSAIDA.TPedV.FieldByName('CPFCNPJ').AsString:=EdCPF.Text;
   End;
  	If XCOD_CLIENTE=DMMACS.TLoja.FieldByName('COD_CONSUMIDOR').AsInteger
   Then Begin
     	If EDFORMPAG.Text<>'À VISTA'
       Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Este cliente não se encontra cadastrado em Banco de Dados ou seja suas informações pessoais não estão cadastradas. Por isso este pedido não pode ser realizado à prazo!', '', 1, 1, False, 'i');
			PDados.Visible:=True;
           PDados.BringToFront;
			BtnProcFormPag.SetFocus;
	        Exit;
       End;
   End;
   PDados.Visible:=False;
   EDCODBARRA.SetFocus;
end;

procedure TFPDV.FormActivate(Sender: TObject);
begin
	//INFORMA CAIXA E USURIO OPERDNFO
   LCODCAIXA.Caption:=FMenu.LCODCAIXA.Caption;
   LCAIXA.Caption:=FMenu.LCAIXA.Caption ;
   LUSUARIO.Caption:=FMenu.LUSUARIO.Caption;
   LCODUSUARIO.Caption:=FMenu.LCODUSUARIO.Caption;
   //caso o login seja do senhor do sistema
   If LCODUSUARIO.Caption='111522'
   Then Begin
       LUSUARIO.FONT.Color:=CLRED;
       LCODUSUARIO.FONT.Color:=CLRED;
   End
   Else Begin
       LUSUARIO.FONT.Color:=clBlack;
       LCODUSUARIO.FONT.Color:=clBlack;
   End;

   //RECEBE A IMAGEM DE FUNDO DA CONFIGURAÇÃO
   If DMMACS.TLoja.FieldByName('CAMIMGPDV').AsString<>''
   Then Begin
   	Try
       	ImgFundo.Picture.LoadFromFile(DMMACS.TLoja.FieldByName('CAMIMGPDV').AsString);
       Except
       End;
   End;
	//ACIONA NOVA VENDA
	NovaVenda;
end;

procedure TFPDV.EDQTDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	If Key=VK_Return
   Then Begin
		If XALTQTD=True
       Then Begin
           EDCODBARRA.SetFocus;
           EDQTD.ReadOnly:=True;
           EDVLRUNITPROD.ReadOnly:=True;           
       End;
   End;
end;

procedure TFPDV.EDTROCOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	If Key=VK_Return
   Then Begin
		If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Finalizar a Venda?' , '', 2, 2, False, 'c')= 2
   	Then Begin
       	//AGORA SIM GRAVA A VENDA
       	GravaVenda;
       END;
   End;
   If Key=Vk_ESCAPE
   Then Begin
		PTROCO.Visible:=False;
       EDCODBARRA.SetFocus;
   End;
end;

procedure TFPDV.EDDINHEIROExit(Sender: TObject);
begin
	If EDDINHEIRO.ValueNumeric>=XVALTOTPDV Then
	   EDTROCO.ValueNumeric:=EDDINHEIRO.ValueNumeric-XVALTOTPDV
   Else
       EDDINHEIRO.SetFocus;
end;

procedure TFPDV.EDVLRUNITPRODKeyPress(Sender: TObject; var Key: Char);
begin
	If Key in ['0'..'9']
   Then Begin
       XAltVlr:=True;
   end;
end;

procedure TFPDV.PSelectClienteExit(Sender: TObject);
begin
	//VERFICA EXISTENCIA DE UMA CADERNETA ABERTA
	SelectCader;
end;

procedure TFPDV.EDCODFORMPAGExit(Sender: TObject);
begin
	//VERFICA EXISTENCIA DE UMA CADERNETA ABERTA
	SelectCader;
end;

procedure TFPDV.BtnProcFormPagExit(Sender: TObject);
begin
	//VERFICA EXISTENCIA DE UMA CADERNETA ABERTA
	SelectCader;
end;

End.

