unit UFaturaPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRodaPe, Buttons, DrLabel, jpeg, ExtCtrls, StdCtrls,
  Grids, DBGrids, Mask, DBCtrls, DBColorEdit, UFrmBusca, FR_DSet, FR_DBSet,
  FR_Class, ColorMaskEdit;

type
  TFFaturaPedidos = class(TFPadraoRodaPe)
    EdNumParc: TEdit;
    Label2: TLabel;
    EdPessoa: TEdit;
    DBGridCadastroPadrao: TDBGrid;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    Panel1: TPanel;
    LInsere: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    LRetira: TLabel;
    Label1: TLabel;
    Label25: TLabel;
    CBPagamento: TComboBox;
    PMostraCta: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label39: TLabel;
    DBText3: TDBText;
    FrmConta: TFrmBusca;
    PSelectCliente: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    LUZOPEN: TShape;
    EdCodCli: TEdit;
    EdCPF: TEdit;
    EdNomeCli: TEdit;
    BtnProcPess: TBitBtn;
    Label9: TLabel;
    EdDocumento: TEdit;
    LValor: TDRLabel;
    BtnMoedaOK: TBitBtn;
    BtnMoedaCancelar: TBitBtn;
    FrmFormPagFrete: TFrmBusca;
    Label10: TLabel;
    PBanco: TPanel;
    DBGCTA: TDBGrid;
    LTotProd: TDRLabel;
    LTotServ: TDRLabel;
    LDescTotProd: TDRLabel;
    LDescTotServ: TDRLabel;
    Label11: TLabel;
    EdNumFiscal: TEdit;
    CBFiltraPedidosAbertos: TCheckBox;
    LMediaData: TLabel;
    FSRel: TfrReport;
    FSDSRel: TfrDBDataSet;
    CbNF: TCheckBox;
    LVlrCredito: TLabel;
    Label12: TLabel;
    EdData: TColorMaskEdit;
    Label13: TLabel;
    PCancelaFatura: TPanel;
    GridFatura: TDBGrid;
    PBtnCancela: TPanel;
    GridPedido: TDBGrid;
    BtnCancelaFat: TBitBtn;
    Shape1: TShape;
    Label14: TLabel;
    Label15: TLabel;
    Shape2: TShape;
    GroupBox1: TGroupBox;
    EdFiltraData: TColorMaskEdit;
    EdPedido: TEdit;
    EdNome: TEdit;
    procedure EdNumParcKeyPress(Sender: TObject; var Key: Char);
    procedure EdPessoaKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure LInsereClick(Sender: TObject);
    procedure LRetiraClick(Sender: TObject);
    procedure BtnProcPessClick(Sender: TObject);
    procedure FrmContaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure FrmContaBTNMINUSClick(Sender: TObject);
    procedure BtnMoedaCancelarClick(Sender: TObject);
    procedure FrmFormPagFreteBTNOPENClick(Sender: TObject);
    procedure FrmFormPagFreteEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnMoedaOKClick(Sender: TObject);
    procedure CBPagamentoExit(Sender: TObject);
    procedure CBPagamentoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGCTAKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure FrmContaEnter(Sender: TObject);
    procedure CBFiltraPedidosAbertosClick(Sender: TObject);
    procedure CbNFClick(Sender: TObject);
    procedure GridFaturaDblClick(Sender: TObject);
    procedure BtnCancelaFatClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure EdFiltraDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPedidoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdFiltraDataEnter(Sender: TObject);
    procedure EdPedidoEnter(Sender: TObject);
    procedure EdNomeEnter(Sender: TObject);
    procedure FrmFormPagFreteExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
	 //Seleciona pedidos de acordo com filtro da edit. se valor em branco passado com o no inicio mostrar todas mas ordenado pelo valor
	 Procedure FiltraPedido(TipoCons: String);
	 //Pocedure Utilizada para marcar um unico pedido
	 Procedure MarcaUnicoPed(Tipo: Boolean);
	 //Fatura Pedidos
	 Function FechaPedido(XCOD_FATURA: Integer): Boolean;
	 //Filtra Produtos de determinado pedido
	 Procedure FiltraSlave(XCOD_PEDIDO: Integer);
	 //FUNÇÃO QUE EFETUA CALCULO DE COMISSÃO BASEADO NO VALOR TOTAL DO PEDIDO E NÃO NA SOMA DO TOTAL DE PRODUTOS
	 Function CalcComisTotVend: Boolean;
    //Função utilizada para calcular a media de dias de pedido
    Function CalculaMediaDias:Boolean;
    Procedure MarcaTodosPed(Tipo: Boolean);
	 //Imprime Relatório de Vendas de Forma Sintética
	 Procedure ImpPVSintDia;
    // limpa campos apos faturamento
    Procedure LimpaCampos;
    //Paulo 26/04/2011: para cancelar/estornar todos os lançamentos de compras faturados
    Function CancelLPedcFatura(CodFatura: String):Boolean;
    //Paulo 02/05/2011: para cancelar/estornar todos os lançamentos de venda faturados
    Function CancelLPedvFatura(CodFatura: String):Boolean;
    //Paulo 19/05/2011: Filtra tabela de fatura
    procedure FiltraFatura(XSql: String);
  end;

var
  FFaturaPedidos: TFFaturaPedidos;
  XCodFatura,XCod_Cliente: Integer;
  XCodConta: Integer;
  XCODFORMPAG: Integer;
  XTOTAL: Real;
  XTOTCOMIS: Real;
  XTOTPROD, XTOTSERV, xcredito : Real;
  XTIPOAUX : String;//armazena variavel q determina o trabalho com pedidos ou com ordem
  Xdata: TDateTime;
  XListaCodigos: String;
implementation

uses UDMEstoque, UMenu, UDMSaida, UDMMacs, UDMPessoa, UCliente, Alxor32,
  UDMConta, UConsPlncta, UFormPag, UDMFinanc, UDMEntrada, AlxMessage,
  UDmBanco, DB, Alxorprn, UDmServ, UnitDeclaracoes, UDMCaixa, UFiscal,
  Math, UFORNECEDOR, UPedidoPadrao, UPedCompra, UPadrao, UMDO;

{$R *.dfm}

//Imprime Relatório de Vendas de Forma Sintética
Procedure TFFaturaPedidos.ImpPVSintDia;
Begin
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
	DMESTOQUE.TRel.sql.Add(' Select pessoa.vlrcredito,pedvenda.numped, pedvenda.numfiscal, pedvenda.dtfech as dataf, formpag.descricao as FORMPAG,');
   DMESTOQUE.TRel.sql.Add(' pedvenda.dtpedven as datap, extract(Day from pedvenda.dtfech) as diaF,  extract(Day from pedvenda.dtpedven) as diaP,pedvenda.cobranca, pedvenda.valor , ');
	DMESTOQUE.TRel.sql.Add(' pedvenda.nomecli, pedvenda.cpfcnpj, cliente.informacao, pedvenda.cod_cliente, cliente.cod_cliente ');
	DMESTOQUE.TRel.sql.Add(' from pedvenda ');
   DMESTOQUE.TRel.sql.Add(' left join cliente on pedvenda.cod_cliente=cliente.cod_cliente');
   DMESTOQUE.TRel.sql.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
   DMESTOQUE.TRel.sql.Add(' left join formpag on pedvenda.cod_formpag = formpag.cod_formpag ');
	DMESTOQUE.TRel.sql.Add(' Where (PEDVENDA.MARK='+#39+'B'+#39+')');
   DMESTOQUE.TRel.sql.Add(' order by  pedvenda.nomecli ');
   DMESTOQUE.TRel.SQL.Text;
   DMESTOQUE.TRel.Open;
   If not DMESTOQUE.TRel.IsEmpty
   Then Begin
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfPedVenda_Sint_dias.frf');
   	FSRel.ShowReport;
   End;
End;

//Função utilizada para calcular a media de dias de pedido
Function TFFaturaPedidos.CalculaMediaDias: Boolean;
VAR
  Year, Month, Day:word;
  XDia: Real;
  XMedia: Integer;
  XData: String;
Begin
	If XTIPOAUX='FATPEDIDO'
   Then Begin
       If Not DMESTOQUE.Alx2.IsEmpty
       Then Begin
           XDia:=0;
           XMedia:=0;
           DMESTOQUE.Alx2.First;
           While Not DMESTOQUE.Alx2.Eof do
           Begin
               DecodeDate(DMESTOQUE.Alx2.FieldByName('DTPEDVEN').AsDateTime, Year, Month, Day);
               XDia:=Xdia+Day;
               XMedia:= XMedia+1;
               DMESTOQUE.Alx2.Next;
           End;
           If Frac(XDIA/XMEDIA)<>0 Then
               XDia:=INT(XDIA/XMEDIA)+1
           Else
               XDia:=INT(XDIA/XMEDIA);
           XData:= FloatToStr(XDia)+'/'+IntToStr(Month)+'/'+IntToStr(Year);
           LMediaData.Caption:=XData;
       End
       Else Begin
           LMediaData.Caption:='';
       End;
   End;
End;

//FUNÇÃO QUE EFETUA CALCULO DE COMISSÃO BASEADO NO VALOR TOTAL DO PEDIDO E NÃO NA SOMA DO TOTAL DE PRODUTOS
Function TFFaturaPedidos.CalcComisTotVend: Boolean;
Begin
	If (XTIPOAUX<>'FATORDEM') and (XTIPOAUX<>'FATPEDIDOC')
   Then Begin
		If FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', DMSAIDA.TPedV.FieldByName('COD_VENDEDOR').AsString, '')=True
   	Then Begin
   		Try
       		DMPESSOA.TFunCargo.Last;
           	//efetua cargo em cima da forma de pagamentio
           	If FrmFormPagFrete.EdDescricao.Text='À VISTA' Then
           		XTOTCOMIS:=(XTOTAL*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency)/100
           	Else
           		XTOTCOMIS:=(XTOTAL*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
       	Except
       		XTOTCOMIS:=0;
       	End;
   	End
   	Else Begin
      		XTOTCOMIS:=0;
   	End;
   End
   Else Begin
		If FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', DMServ.TOrd.FieldByName('COD_VENDEDOR').AsString, '')=True
   	Then Begin
   		Try
       		DMPESSOA.TFunCargo.Last;
           	//efetua cargo em cima da forma de pagamentio
           	If FrmFormPagFrete.EdDescricao.Text='À VISTA' Then
           		XTOTCOMIS:=(XTOTAL*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency)/100
           	Else
           		XTOTCOMIS:=(XTOTAL*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
       	Except
       		XTOTCOMIS:=0;
       	End;
   	End
   	Else Begin
      		XTOTCOMIS:=0;
   	End;
   End;
End;

//Filtra Tabela Slave e calcula total
Procedure TFFATURAPEDIDOS.FiltraSlave(XCOD_PEDIDO: Integer);
Begin
	If XTIPOAUX='FATORDEM'
   Then Begin
   	//INSERE COMANDOS PARA FILTRAR
 		DMESTOQUE.TSlave.Close;
		DMESTOQUE.TSlave.SQL.Clear;
		DMESTOQUE.TSlave.SQL.Add(' Select itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque, itprodord.qtd, itprodord.total, itprodord.comissao, ');
		DMESTOQUE.TSlave.SQL.Add(' itprodord.desconto, itprodord.cod_funcionario, pessoa.nome, itprodord.vlrunit, subproduto.descricao, subproduto.marca,itprodord.data, itprodord.operacao  ');
		DMESTOQUE.TSlave.SQL.Add(' From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque  ');
		DMESTOQUE.TSlave.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod  ');
		DMESTOQUE.TSlave.SQL.Add(' Left Join funcionario on funcionario.cod_func = itprodord.cod_funcionario  ');
		DMESTOQUE.TSlave.SQL.Add(' Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA  ');
		DMESTOQUE.TSlave.SQL.Add(' Where itprodord.cod_ordem = :CODPEDVENDA ');
		DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsInteger:=XCOD_PEDIDO;
		DMESTOQUE.TSlave.Open;
   End
   Else Begin
 		DMESTOQUE.TSlave.Close;
		DMESTOQUE.TSlave.SQL.Clear;
		DMESTOQUE.TSlave.SQL.Add(' Select itenspedven.cod_itenspedven, itenspedven.atuest, lote.numero, itenspedven.cod_lote, itenspedven.cod_pedven, itenspedven.cod_estoque,  itenspedven.qtdeprod, ItensPedVen.ValorTotal, ItensPedVen.COMISSAO, ');
		DMESTOQUE.TSlave.SQL.Add(' itenspedven.descpro, itenspedven.qtddev AS QTDDEV, itenspedven.cod_funcionario, pessoa.nome, itenspedven.valunit, subproduto.descricao, subproduto.marca,itenspedven.data, itenspedven.operacao ');
		DMESTOQUE.TSlave.SQL.Add(' From itenspedven left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
		DMESTOQUE.TSlave.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
		DMESTOQUE.TSlave.SQL.Add(' left join lote on itenspedven.cod_lote = lote.cod_lote ');
		DMESTOQUE.TSlave.SQL.Add(' Left Join funcionario on funcionario.cod_func = itenspedven.cod_funcionario ');
		DMESTOQUE.TSlave.SQL.Add(' Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
		DMESTOQUE.TSlave.SQL.Add(' Where itenspedven.cod_pedven = :CODPEDVENDA ');       
		DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsInteger:=XCOD_PEDIDO;
		DMESTOQUE.TSlave.Open;
   End;
End;

//Fatura Pedidos
Function TFFaturaPedidos.FechaPedido(XCOD_FATURA: Integer): Boolean;
Var
	XCODPKCOMIS: Integer;
	XNUMDOC: String;
	AtualizaEst: Boolean;
   Xcod_ordemAux: Integer;
   XConta: integer;
   XNumeroCupom: string;
   xcont: integer;
   XAuxCod: integer;
  	xnumped: String;
Begin
   FMenu.XPedFatura:='';
   Result:=True;
   xnumped:='';
   XListaCodigos:='';
	Try
       //***********
       //FINANCEIRO
       //***********
       If XTIPOAUX='FATPEDIDOC'
       Then Begin
           //PEDIDO DE COMPRA
           XListaCodigos:='';
           //Filtra Forma de Pagamento
           If FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(XCODFORMPAG), '') = True
           Then Begin // Encontrou forma de pagamento, continua processo
               //Percorre todos os itens pegando numero para inserir no historico e código para fechar os pedidos
               DMESTOQUE.Alx2.First;
               while not DMESTOQUE.Alx2.Eof do
               begin
                   if xnumped = ''
                   then begin
                       xnumped:=xnumped+': '+ DMESTOQUE.Alx2.fieldByName('NUMPED').AsString;
                       XListaCodigos:=DMESTOQUE.Alx2.fieldByName('cod_pedcompra').AsString;
                   End
                   else Begin
                       xnumped:=xnumped+', '+DMESTOQUE.Alx2.fieldByName('NUMPED').AsString;
                       XListaCodigos:=XListaCodigos+', '+DMESTOQUE.Alx2.fieldByName('cod_pedcompra').AsString;
                   End;
                   DMESTOQUE.Alx2.Next;
               end;
               If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
               Then Begin // caso o pedido tenha sido feito à vista deve-se lançar o valor direto no caixa
                   If (CBPagamento.Text='Carteira') Then
                       LanCaixa(0, EdData.Text, XCodConta, 'Fatura. Ped.Compra '+XNUMDOC+' - Fornec. '+EdNomeCli.Text,  XTOTAL, 'FATURA',XCOD_FATURA, CBPagamento.Text, 'S', EdDocumento.Text, StrToDate(EdData.Text), '1');

                   //Paulo 28/04/2011: Lançamento para cartão
                   If (CBPagamento.Text='Cartão') Then
                       LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCodConta,'Fech. Faturamento compra por cartão:' + XNUMDOC + ' - Fornec. '+EdNomeCli.Text, XTOTAL, 'FATURA',XCOD_FATURA, 'SAIDA',StrToInt(FMenu.LCODUSUARIO.Caption), 'CARTÃO', 'S',EdData.Text,'',EdData.Text,'1',EdData.Text);

                   //Paulo 31/05/2011: Lançamento para banco
                   If (CBPagamento.Text='Banco') Then
                       LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCodConta,'Fech. Faturamento PDC:' + XNUMDOC + ' - Fornec. '+EdNomeCli.Text, XTOTAL, 'FATURA',XCOD_FATURA, 'SAIDA',StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO', 'S',EdData.Text,'',EdData.Text,'1',EdData.Text);

                   //Paulo 31/05/2011: Lançamento para boleto
                   If (CBPagamento.Text='Boleto') Then
                       LancConta('FATURA', XCOD_FATURA, XCod_Cliente, CBPagamento.Text, XTOTAL, 0, XCodConta, 0, -1, 'Faturas de PDC. Doc '+xnumped, XCODFORMPAG, EdDocumento.Text, 'P', StrToDate(EdData.Text), XTOTCOMIS, EdData.Text,  EdNumFiscal.Text);

                   If (CBPagamento.Text='Cheque') Then
                       LancChSai(XCodConta, 'Fatura. Ped.Compra '+XNUMDOC+' - Cli. '+EdNomeCli.Text, StrToDate(EdData.Text), XTOTAL, DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger, 'FATURA', IntToStr(XCOD_FATURA), EdDocumento.Text);
               End
               Else Begin//Não é à vista
                   //LancConta('PEDVENDA', -5, XCod_Cliente, CBPagamento.Text, XTOTAL, 0, XCodConta, 0, -1, 'Faturas de PDV '+XNUMDOC, XCODFORMPAG, XNUMDOC, 'P', Date, XTOTCOMIS, DateToStr(Date),  EdNumFiscal.Text);
                   LancConta('FATURA', XCOD_FATURA, XCod_Cliente, CBPagamento.Text, XTOTAL, 0, XCodConta, 0, -1, 'Faturas de PDC. Doc '+xnumped, XCODFORMPAG, EdDocumento.Text, 'P', StrToDate(EdData.Text), XTOTCOMIS, EdData.Text,  EdNumFiscal.Text);
               End;
           End;
       End;
     	If FMenu.XPedFatura = ''
     	then begin
          	If XTIPOAUX='FATPEDIDOC'
         	Then Begin
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' update pedcompra set pedcompra.faturado='+#39+'1'+#39+', pedcompra.situacao='+#39+'FECHADO'+#39+' where ');
               MDO.Query.SQL.Add(' pedcompra.cod_pedcomp IN ('+XListaCodigos+')');
               MDO.Query.ExecSQL;
           End;
      end;

      FMenu.XPedFatura:=''; //limpa variável para q não afete geração de notas fiscais direto dos pedidos
      FMenu.XCodCLiFatura:=''; //limpa variável para q não afete geração de notas fiscais direto dos pedidos
      //DMENTRADA.TAlx.Open;
  	Except
      //teste
      Result:=False;
   end;
end;

//Pocedure Utilizada para marcar um unico pedido
Procedure TFFaturaPedidos.MarcaUnicoPed(Tipo: Boolean);
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
   If XTIPOAUX='FATORDEM'
   Then Begin
  		DMServ.TOrd.Close;
  		DMServ.TOrd.SQL.Clear;
  		DMServ.TOrd.SQL.Add(' select * from ordem where ordem.cod_ordem=:CODPEDV');
  		If Tipo=True Then
  			DMServ.TOrd.ParamByName('CODPEDV').AsInteger:=DMESTOQUE.Alx1.FieldByName('cod_pedvenda').AsInteger
  		Else
  			DMServ.TOrd.ParamByName('CODPEDV').AsInteger:=DMESTOQUE.Alx2.FieldByName('cod_pedvenda').AsInteger;
  		DMServ.TOrd.Open;
   	If Not DMServ.TOrd.IsEmpty
   	Then Begin
           DMServ.TOrd.Edit;
   		If Tipo=True Then
           	DMServ.TOrd.FieldByName('MARK').AsString:='B'
           Else
           	DMServ.TOrd.FieldByName('MARK').AsString:='';
           DMServ.TOrd.Post;
           DMServ.IBT.CommitRetaining;
           FiltraPedido('ONUMPARC');
   	End;
   End
   Else Begin
    	If XTIPOAUX='FATPEDIDOC'
       Then Begin
           DMENTRADA.TPedC.Close;
           DMENTRADA.TPedC.SQL.Clear;
           DMENTRADA.TPedC.SQL.Add(' select * from pedcompra where pedcompra.cod_pedcomp=:CODPEDV ');
           If Tipo=True Then
               DMENTRADA.TPedC.ParamByName('CODPEDV').AsInteger:=DMESTOQUE.Alx1.FieldByName('cod_pedcompra').AsInteger
           Else
               DMENTRADA.TPedC.ParamByName('CODPEDV').AsInteger:=DMESTOQUE.Alx2.FieldByName('cod_pedcompra').AsInteger;
           DMENTRADA.TPedC.Open;
           If Not DMENTRADA.TPedC.IsEmpty
           Then Begin
               If XCod_Cliente<=0
               Then Begin
                   //se ainda não foi selecionado nenhum cliente para a fatura, o sistema fatura automatico
                   DMPESSOA.TALX.Close;
                   DMPESSOA.TALX.SQL.Clear;
                   DMPESSOA.TALX.SQL.Add(' Select * from vwfornec Where vwfornec.cod_fornec=:CodCliente ');
                   DMPESSOA.TALX.ParamByName('codcliente').AsInteger:= DMESTOQUE.Alx1.FieldByName('cod_fornec').AsInteger;
                   DMPESSOA.TALX.Open;
                   If Not DMPESSOA.TALX.IsEmpty
                   Then Begin
                       XCod_Cliente:=DMPESSOA.TALX.FieldByName('cod_fornec').AsInteger;
                       EdCPF.Text:=DMPESSOA.TALX.FieldByName('CPFCNPJ').AsString;
                       EdNomeCli.Text:=DMPESSOA.TALX.FieldByName('NOME').AsString;
                       EdCodCli.Text:=DMPESSOA.TALX.FieldByName('COD_INTERNO').AsString;
                       LVlrCredito.Visible:=TRUE;
                       FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TALX.FieldByName('COD_PESSOA').AsString, '');
                       LVlrCredito.Caption:=FormatFloat('0.00', DMPESSOA.TPessoa.fieldByName('VLRCREDITO').AsCurrency);
                   End;
               End;
               DMENTRADA.TPedC.Edit;
               If Tipo=True Then
                   DMENTRADA.TPedC.FieldByName('MARK').AsString:='B'
               Else
                   DMENTRADA.TPedC.FieldByName('MARK').AsString:='';
               DMENTRADA.TPedC.Post;
               DMENTRADA.IBT.CommitRetaining;
               FiltraPedido('ONUMPARC');
           End;
   	End
       Else Begin
           DMSAIDA.TPedV.Close;
           DMSAIDA.TPedV.SQL.Clear;
           DMSAIDA.TPedV.SQL.Add(' select * from pedvenda where pedvenda.cod_pedvenda=:CODPEDV ');
           If Tipo=True Then
               DMSAIDA.TPedV.ParamByName('CODPEDV').AsInteger:=DMESTOQUE.Alx1.FieldByName('cod_pedvenda').AsInteger
           Else
               DMSAIDA.TPedV.ParamByName('CODPEDV').AsInteger:=DMESTOQUE.Alx2.FieldByName('cod_pedvenda').AsInteger;
           DMSAIDA.TPedV.Open;
           If Not DMSAIDA.TPedV.IsEmpty
           Then Begin
               If XCod_Cliente<=0
               Then Begin
                   //se ainda não foi selecionado nenhum cliente para a fatura, o sistema fatura automatico
                   DMPESSOA.TALX.Close;
                   DMPESSOA.TALX.SQL.Clear;
                   DMPESSOA.TALX.SQL.Add('Select * from vwcliente Where vwcliente.cod_cliente=:CodCliente');
                   DMPESSOA.TALX.ParamByName('codcliente').AsInteger:= DMESTOQUE.Alx1.FieldByName('cod_cliente').AsInteger;
                   DMPESSOA.TALX.Open;
                   If Not DMPESSOA.TALX.IsEmpty
                   Then Begin
                       XCod_Cliente:=DMPESSOA.TALX.FieldByName('COD_CLIENTE').AsInteger;
                       EdCPF.Text:=DMPESSOA.TALX.FieldByName('CPFCNPJ').AsString;
                       EdNomeCli.Text:=DMPESSOA.TALX.FieldByName('NOME').AsString;
                       EdCodCli.Text:=DMPESSOA.TALX.FieldByName('COD_INTERNO').AsString;
                       LVlrCredito.Visible:=TRUE;
                       FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TALX.FieldByName('COD_PESSOA').AsString, '');
                       LVlrCredito.Caption:=FormatFloat('0.00', DMPESSOA.TPessoa.fieldByName('VLRCREDITO').AsCurrency);
                   End;
               End;
               DMSAIDA.TPedV.Edit;
               If Tipo=True Then
                   DMSAIDA.TPedV.FieldByName('MARK').AsString:='B'
               Else
                   DMSAIDA.TPedV.FieldByName('MARK').AsString:='';
               DMSAIDA.TPedV.Post;
               DMSAIDA.IBT.CommitRetaining;
               FiltraPedido('ONUMPARC');
           End
       End;
   End;
End;

//Pocedure Utilizada para marcar todos os pedidos selecionado
Procedure TFFaturaPedidos.MarcaTodosPed(Tipo: Boolean);
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
    If Mensagem('Confirmação do usuário', 'Deseja realmente marcar/desmarcar todos os pedidos?', '', 2, 3, False, 'c')=2
    Then Begin
    	If tipo=true
       Then Begin
        DMESTOQUE.Alx1.First;
        While not DMESTOQUE.Alx1.Eof do
        Begin
           If XTIPOAUX='FATORDEM'
           Then Begin
               DMServ.TOrd.Close;
               DMServ.TOrd.SQL.Clear;
               DMServ.TOrd.SQL.Add(' select * from ordem where ordem.cod_ordem=:CODPEDV');
               If Tipo=True Then
                   DMServ.TOrd.ParamByName('CODPEDV').AsInteger:=DMESTOQUE.Alx1.FieldByName('cod_pedvenda').AsInteger
               Else
                   DMServ.TOrd.ParamByName('CODPEDV').AsInteger:=DMESTOQUE.Alx2.FieldByName('cod_pedvenda').AsInteger;
               DMServ.TOrd.Open;
               If Not DMServ.TOrd.IsEmpty
               Then Begin
                   DMServ.TOrd.Edit;
                   If Tipo=True Then
                       DMServ.TOrd.FieldByName('MARK').AsString:='B'
                   Else
                       DMServ.TOrd.FieldByName('MARK').AsString:='';
                   DMServ.TOrd.Post;
                   DMServ.IBT.CommitRetaining;
               End;
           End
           Else Begin
               DMSAIDA.TPedV.Close;
               DMSAIDA.TPedV.SQL.Clear;
               DMSAIDA.TPedV.SQL.Add(' select * from pedvenda where pedvenda.cod_pedvenda=:CODPEDV ');
               If Tipo=True Then
                   DMSAIDA.TPedV.ParamByName('CODPEDV').AsInteger:=DMESTOQUE.Alx1.FieldByName('cod_pedvenda').AsInteger
               Else
                   DMSAIDA.TPedV.ParamByName('CODPEDV').AsInteger:=DMESTOQUE.Alx2.FieldByName('cod_pedvenda').AsInteger;
               DMSAIDA.TPedV.Open;

               If Not DMSAIDA.TPedV.IsEmpty
               Then Begin
                   If XCod_Cliente<=0
                   Then Begin
                       //se ainda não foi selecionado nenhum cliente para a fatura, o sistema fatura automatico
                       DMPESSOA.TALX.Close;
                       DMPESSOA.TALX.SQL.Clear;
                       DMPESSOA.TALX.SQL.Add('Select * from vwcliente Where vwcliente.cod_cliente=:CodCliente');
                       DMPESSOA.TALX.ParamByName('codcliente').AsInteger:=DMSAIDA.TPedV.FieldByName('cod_cliente').AsInteger;
                       DMPESSOA.TALX.Open;
                       If Not DMPESSOA.TALX.IsEmpty
                       Then Begin
                           XCod_Cliente:=DMPESSOA.TALX.FieldByName('COD_CLIENTE').AsInteger;
                           EdCPF.Text:=DMPESSOA.TALX.FieldByName('CPFCNPJ').AsString;
                           EdNomeCli.Text:=DMPESSOA.TALX.FieldByName('NOME').AsString;
                           EdCodCli.Text:=DMPESSOA.TALX.FieldByName('COD_INTERNO').AsString;
                           LVlrCredito.Visible:=TRUE;
                           FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TALX.FieldByName('COD_PESSOA').AsString, '');
                           LVlrCredito.Caption:=FormatFloat('0.00', DMPESSOA.TPessoa.fieldByName('VLRCREDITO').AsCurrency);
                       End;
                   End;
                   DMSAIDA.TPedV.Edit;
                   If Tipo=True Then
                       DMSAIDA.TPedV.FieldByName('MARK').AsString:='B'
                   Else
                       DMSAIDA.TPedV.FieldByName('MARK').AsString:='';
                   DMSAIDA.TPedV.Post;
                   DMSAIDA.IBT.CommitRetaining;
               End;
           End;
           DMESTOQUE.Alx1.Next;
        End;
       End
       Else Begin
        DMESTOQUE.Alx2.First;
        While not DMESTOQUE.Alx2.Eof do
        Begin
           If XTIPOAUX='FATORDEM'
           Then Begin
               DMServ.TOrd.Close;
               DMServ.TOrd.SQL.Clear;
               DMServ.TOrd.SQL.Add(' select * from ordem where ordem.cod_ordem=:CODPEDV');
               If Tipo=True Then
                   DMServ.TOrd.ParamByName('CODPEDV').AsInteger:=DMESTOQUE.Alx1.FieldByName('cod_pedvenda').AsInteger
               Else
                   DMServ.TOrd.ParamByName('CODPEDV').AsInteger:=DMESTOQUE.Alx2.FieldByName('cod_pedvenda').AsInteger;
               DMServ.TOrd.Open;
               If Not DMServ.TOrd.IsEmpty
               Then Begin
                   DMServ.TOrd.Edit;
                   If Tipo=True Then
                       DMServ.TOrd.FieldByName('MARK').AsString:='B'
                   Else
                       DMServ.TOrd.FieldByName('MARK').AsString:='';
                   DMServ.TOrd.Post;
                   DMServ.IBT.CommitRetaining;
               End;
           End
           Else Begin
               DMSAIDA.TPedV.Close;
               DMSAIDA.TPedV.SQL.Clear;
               DMSAIDA.TPedV.SQL.Add(' select * from pedvenda where pedvenda.cod_pedvenda=:CODPEDV ');
               If Tipo=True Then
                   DMSAIDA.TPedV.ParamByName('CODPEDV').AsInteger:=DMESTOQUE.Alx1.FieldByName('cod_pedvenda').AsInteger
               Else
                   DMSAIDA.TPedV.ParamByName('CODPEDV').AsInteger:=DMESTOQUE.Alx2.FieldByName('cod_pedvenda').AsInteger;
               DMSAIDA.TPedV.Open;
               If Not DMSAIDA.TPedV.IsEmpty
               Then Begin
                   If XCod_Cliente<=0
                   Then Begin
                       //se ainda não foi selecionado nenhum cliente para a fatura, o sistema fatura automatico
                       DMPESSOA.TALX.Close;
                       DMPESSOA.TALX.SQL.Clear;
                       DMPESSOA.TALX.SQL.Add('Select * from vwcliente Where vwcliente.cod_cliente=:CodCliente');
                       DMPESSOA.TALX.ParamByName('codcliente').AsInteger:=DMSAIDA.TPedV.FieldByName('cod_cliente').AsInteger;
                       DMPESSOA.TALX.Open;
                       If Not DMPESSOA.TALX.IsEmpty
                       Then Begin
                           XCod_Cliente:=DMPESSOA.TALX.FieldByName('COD_CLIENTE').AsInteger;
                           EdCPF.Text:=DMPESSOA.TALX.FieldByName('CPFCNPJ').AsString;
                           EdNomeCli.Text:=DMPESSOA.TALX.FieldByName('NOME').AsString;
                           EdCodCli.Text:=DMPESSOA.TALX.FieldByName('COD_INTERNO').AsString;
                           LVlrCredito.Visible:=TRUE;
                           LVlrCredito.Caption:=FormatFloat('0.00', DMPESSOA.TPessoa.fieldByName('VLRCREDITO').AsCurrency);
                       End;
                   End;
                   DMSAIDA.TPedV.Edit;
                   If Tipo=True Then
                       DMSAIDA.TPedV.FieldByName('MARK').AsString:='B'
                   Else
                       DMSAIDA.TPedV.FieldByName('MARK').AsString:='';
                   DMSAIDA.TPedV.Post;
                   DMSAIDA.IBT.CommitRetaining;
               End;
           End;
           DMESTOQUE.Alx2.Next;
        End;
       End;
       FiltraPedido('ONUMPARC');       
    End;
End;

//Seleciona pedidos de acordo com filtro da edit. se valor em branco passado com o no inicio mostrar todas mas ordenado pelo valor
Procedure TFFaturaPedidos.FiltraPedido(TipoCons: String);
Begin
	If XTIPOAUX='FATORDEM'
   Then Begin
       LTotProd.Visible:=True;
       LTotProd.Visible:=True;
       LDescTotProd.Visible:=True;
       LDescTotServ.Visible:=True;
       FMenu.XValorFatura:=0;
		//Passa o valor p/ label
   	DMESTOQUE.Alx2.Close;
   	DMESTOQUE.Alx2.SQL.Clear;
   	DMESTOQUE.Alx2.SQL.Add('Select Sum(vwordem.total)  AS VALOR  from vwordem ');
   	DMESTOQUE.Alx2.SQL.Add('Where (COD_LOJA = :CODLOJA) ');
   	DMESTOQUE.Alx2.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
       If CBFiltraPedidosAbertos.Checked=True Then
   		DMESTOQUE.Alx2.SQL.Add(' And (Status <> '+#39+'FECHADO'+#39+')  And (Mark = '+#39+'B'+#39+')')
       Else
   		DMESTOQUE.Alx2.SQL.Add(' Mark = '+#39+'B'+#39+')');
  		DMESTOQUE.Alx2.Open;
   	If Not DMESTOQUE.Alx2.IsEmpty
   	Then Begin
       	XTOTAL:=DMESTOQUE.Alx2.FieldByName('Valor').AsCurrency;
       	LValor.Caption:='Total R$: '+FormatFloat('0.00', DMESTOQUE.Alx2.FieldByName('Valor').AsCurrency);
   	End;
		//Passa o valor p/ label
   	DMESTOQUE.Alx2.Close;
   	DMESTOQUE.Alx2.SQL.Clear;
   	DMESTOQUE.Alx2.SQL.Add(' Select Sum(ordem.totprod) as TOTPROD from ordem ');
   	DMESTOQUE.Alx2.SQL.Add(' left join vwordem on ordem.cod_ordem=vwordem.cod_ordem ');
   	DMESTOQUE.Alx2.SQL.Add(' Where (vwordem.cod_loja = :CODLOJA) ');
   	DMESTOQUE.Alx2.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
       If CBFiltraPedidosAbertos.Checked=True Then
   		DMESTOQUE.Alx2.SQL.Add(' And (vwordem.Status <> '+#39+'FECHADO'+#39+')  And (vwordem.Mark = '+#39+'B'+#39+')')
       Else
   		DMESTOQUE.Alx2.SQL.Add('  And (vwordem.Mark = '+#39+'B'+#39+')');


  		DMESTOQUE.Alx2.Open;
       XTOTSERV:=0;
   	If Not DMESTOQUE.Alx2.IsEmpty
   	Then Begin
       	XTOTPROD:=DMESTOQUE.Alx2.FieldByName('TOTPROD').AsCurrency;
       	LTotProd.Caption:=FormatFloat('0.00', DMESTOQUE.Alx2.FieldByName('TOTPROD').AsCurrency);
   	End;
       XTOTSERV:=XTOTAL-XTOTPROD;
       If XTOTSERV<0 Then
           XTOTSERV:=0;
       LTotServ.Caption:=FormatFloat('0.00', XTOTSERV);
   	DMESTOQUE.Alx1.Close;
   	DMESTOQUE.Alx1.SQL.Clear;
   	DMESTOQUE.Alx2.Close;
   	DMESTOQUE.Alx2.SQL.Clear;
   	DMESTOQUE.Alx1.SQL.Add(' select vwordem.cod_ordem as COD_PEDVENDA, ');
   	DMESTOQUE.Alx1.SQL.Add(' vwordem.cod_cliente, vwordem.cliente as NOMECLI, ');
   	DMESTOQUE.Alx1.SQL.Add(' ordem.cod_formpag, vwordem.cod_funcionario as COD_USUARIO, ');
   	DMESTOQUE.Alx1.SQL.Add(' vwordem.dtabert as DTPEDVEN, vwordem.numero as NUMPED, vwordem.numorc, ');
   	DMESTOQUE.Alx1.SQL.Add(' vwordem.status as SITUACAO, vwordem.total AS VALOR, formpag.descricao AS FORMPAG, vwordem.cod_loja ');
   	DMESTOQUE.Alx1.SQL.Add(' From vwordem left join Ordem on vwordem.cod_ordem  = ordem.cod_ordem ');
   	DMESTOQUE.Alx1.SQL.Add(' Left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
   	DMESTOQUE.Alx2.SQL.Add(' select vwordem.cod_ordem as COD_PEDVENDA, vwordem.cod_cliente, vwordem.cliente as NOMECLI, ordem.cod_formpag, ');
   	DMESTOQUE.Alx2.SQL.Add(' vwordem.cod_funcionario as COD_USUARIO, vwordem.dtabert as DTPEDVEN, vwordem.numero as NUMPED, vwordem.numorc, ');
   	DMESTOQUE.Alx2.SQL.Add(' vwordem.status as SITUACAO, vwordem.total AS VALOR, formpag.descricao AS FORMPAG, vwordem.cod_loja ');
   	DMESTOQUE.Alx2.SQL.Add(' From vwordem left join Ordem on vwordem.cod_ordem  = ordem.cod_ordem ');
   	DMESTOQUE.Alx2.SQL.Add(' Left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
   	//filtra para loja
   	DMESTOQUE.Alx1.SQL.Add('Where (FORMPAG.COD_LOJA = :CODLOJA) ');
   	DMESTOQUE.Alx1.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	DMESTOQUE.Alx1.SQL.Add(' And (VWORDEM.STATUS<> '+#39+'FECHADO'+#39+')  And ((VWORDEM.Mark <> '+#39+'B'+#39+') or (VWORDEM.Mark is Null)) ');
   	DMESTOQUE.Alx2.SQL.Add('Where (FORMPAG.COD_LOJA = :CODLOJA) ');
   	DMESTOQUE.Alx2.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	DMESTOQUE.Alx2.SQL.Add(' And (VWORDEM.STATUS <> '+#39+'FECHADO'+#39+')  And (VWORDEM.Mark = '+#39+'B'+#39+')');
   	//Continua sql com os valores para consulta
   	If TipoCons='NUMPARC'
   	Then Begin//filtrar pelo numparc numero da parcela e ordenar
   		DMESTOQUE.Alx1.SQL.Add(' And (upper(NUMPED) like upper('+#39+EdNumParc.Text+'%'+#39+')) ORDER BY NUMPED, NOMECLI');
   		DMESTOQUE.Alx2.SQL.Add(' And (upper(NUMPED) like upper('+#39+EdNumParc.Text+'%'+#39+')) ORDER BY NUMPED, NOMECLI');
   	End;
   	If TipoCons='ONUMPARC'
   	Then Begin//ordena pelo valor
   		DMESTOQUE.Alx1.SQL.Add(' ORDER BY VWORDEM.NUMERO, VWORDEM.CLIENTE');
   		DMESTOQUE.Alx2.SQL.Add(' ORDER BY VWORDEM.NUMERO, VWORDEM.CLIENTE');
   	End;

   	If TipoCons='PESSOA'
   	Then Begin//filtrar pelo fornecedor  da parcela e ordenar
      		DMESTOQUE.Alx1.SQL.Add(' And (upper(VWORDEM.CLIENTE) like upper('+#39+EdPessoa.Text+'%'+#39+')) ORDER BY VWORDEM.CLIENTE');
      		DMESTOQUE.Alx2.SQL.Add(' And (upper(VWORDEM.CLIENTE) like upper('+#39+EdPessoa.Text+'%'+#39+')) ORDER BY VWORDEM.CLIENTE');
   	End;
   	If TipoCons='OPESSOA'
   	Then Begin//ordena pelo valor
   		DMESTOQUE.Alx1.SQL.Add(' ORDER BY VWORDEM.CLIENTE');
   		DMESTOQUE.Alx2.SQL.Add(' ORDER BY VWORDEM.CLIENTE');
   	End;
   	//abre sql com filtro
  		DMESTOQUE.Alx1.SQL.Text;
  		DMESTOQUE.Alx1.Open;
  		DMESTOQUE.Alx2.SQL.Text;
  		DMESTOQUE.Alx2.Open;
   End
   Else Begin
       If XTIPOAUX='FATPEDIDOC'
       Then Begin
           LTotProd.Visible:=False;
           LTotServ.Visible:=False;
           LDescTotProd.Visible:=False;
           LDescTotServ.Visible:=False;
           //Passa o valor p/ label
           DMESTOQUE.Alx2.Close;
           DMESTOQUE.Alx2.SQL.Clear;
           DMESTOQUE.Alx2.SQL.Add('Select Sum(vwpedc.valor)  AS VALOR  from vwpedc ');
           DMESTOQUE.Alx2.SQL.Add('Where (COD_LOJA = :CODLOJA)  and ((FATURADO='+#39+'0'+#39+') or (FATURADO is NULL)) ');
           DMESTOQUE.Alx2.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
           DMESTOQUE.Alx2.SQL.Add(' And (Mark = '+#39+'B'+#39+')');
           DMESTOQUE.Alx2.SQL.Text;
           DMESTOQUE.Alx2.Open;
           If Not DMESTOQUE.Alx2.IsEmpty
           Then Begin
               XTOTAL:= DMESTOQUE.Alx2.FieldByName('Valor').AsCurrency;
               LValor.Caption:='Total R$: '+FormatFloat('0.00', DMESTOQUE.Alx2.FieldByName('Valor').AsCurrency);
               FMenu.XValorFatura:=StrToFloat(FormatFloat('0.00', DMESTOQUE.Alx2.FieldByName('Valor').AsCurrency));
           End;

           DMESTOQUE.Alx1.Close;
           DMESTOQUE.Alx1.SQL.Clear;
           DMESTOQUE.Alx2.Close;
           DMESTOQUE.Alx2.SQL.Clear;
           DMESTOQUE.Alx1.SQL.Add('Select vwpedc.cod_pedcomp as cod_pedcompra, vwpedc.cod_fornec, vwpedc.dtpedcomp AS DTPEDVEN, vwpedc.numped, vwpedc.valor, vwpedc.nome AS NOMECLI From VWPEDc ');
           DMESTOQUE.Alx2.SQL.Add('Select vwpedc.cod_pedcomp as cod_pedcompra, vwpedc.cod_fornec, vwpedc.dtpedcomp AS DTPEDVEN, vwpedc.numped, vwpedc.valor, vwpedc.nome AS NOMECLI From VWPEDc ');
           //filtra para loja
           DMESTOQUE.Alx1.SQL.Add('Where (COD_LOJA = :CODLOJA)  AND ((FATURADO=0) or (FATURADO is NULL)) ');
           DMESTOQUE.Alx1.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
           If CBFiltraPedidosAbertos.Checked=True Then
               DMESTOQUE.Alx1.SQL.Add(' And (vwpedc.SITUACAO <> '+#39+'FECHADO'+#39+') And ((vwpedc.Mark <> '+#39+'B'+#39+') or (vwpedc.Mark is Null)) ')
           Else
               DMESTOQUE.Alx1.SQL.Add(' And ((vwpedc.Mark <> '+#39+'B'+#39+') or (vwpedc.Mark is Null)) ');

           DMESTOQUE.Alx2.SQL.Add('Where (COD_LOJA = :CODLOJA)  AND  ((FATURADO=0) or (FATURADO is NULL)) ');
           DMESTOQUE.Alx2.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
           DMESTOQUE.Alx2.SQL.Add(' And (Mark = '+#39+'B'+#39+')');
           //Continua sql com os valores para consulta
           If TipoCons='NUMPARC'
           Then Begin//filtrar pelo numparc numero da parcela e ordenar
               DMESTOQUE.Alx1.SQL.Add(' And (upper(NUMPED) like upper('+#39+EdNumParc.Text+'%'+#39+')) ORDER BY NUMPED, NOME');
               DMESTOQUE.Alx2.SQL.Add(' And (upper(NUMPED) like upper('+#39+EdNumParc.Text+'%'+#39+')) ORDER BY NUMPED, NOME');
           End;
           If TipoCons='ONUMPARC'
           Then Begin//ordena pelo valor
               DMESTOQUE.Alx1.SQL.Add(' ORDER BY NUMPED, NOME');
               DMESTOQUE.Alx2.SQL.Add(' ORDER BY NUMPED, NOME');
           End;

           If TipoCons='PESSOA'
           Then Begin//filtrar pelo fornecedor  da parcela e ordenar
               DMESTOQUE.Alx1.SQL.Add(' And (upper(NOME) like upper('+#39+EdPessoa.Text+'%'+#39+')) ORDER BY NOME');
               DMESTOQUE.Alx2.SQL.Add(' And (upper(NOME) like upper('+#39+EdPessoa.Text+'%'+#39+')) ORDER BY NOME');
           End;
           If TipoCons='OPESSOA'
           Then Begin//ordena pelo valor
               DMESTOQUE.Alx1.SQL.Add(' ORDER BY NOME');
               DMESTOQUE.Alx2.SQL.Add(' ORDER BY NOME');
           End;

           //abre sql com filtro
           DMESTOQUE.Alx1.SQL.Text;
           DMESTOQUE.Alx1.Open;
           DMESTOQUE.Alx2.SQL.Text;
           DMESTOQUE.Alx2.Open;
       End
       Else Begin
           LTotProd.Visible:=False;
           LTotServ.Visible:=False;
           LDescTotProd.Visible:=False;
           LDescTotServ.Visible:=False;
           //Passa o valor p/ label
           DMESTOQUE.Alx2.Close;
           DMESTOQUE.Alx2.SQL.Clear;
           DMESTOQUE.Alx2.SQL.Add('Select Sum(vwpedv.valor)  AS VALOR  from vwpedv ');
           DMESTOQUE.Alx2.SQL.Add('Where (COD_LOJA = :CODLOJA)  and ((FATURADO='+#39+'0'+#39+') or (FATURADO is NULL)) ');
           DMESTOQUE.Alx2.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
           DMESTOQUE.Alx2.SQL.Add(' And (Mark = '+#39+'B'+#39+') AND  ((vwpedv.numfiscal IS null) or (vwpedv.numfiscal='+#39+'0'+#39+')) ');
           DMESTOQUE.Alx2.SQL.Text;
           DMESTOQUE.Alx2.Open;
           If Not DMESTOQUE.Alx2.IsEmpty
           Then Begin
               XTOTAL:= DMESTOQUE.Alx2.FieldByName('Valor').AsCurrency;
               LValor.Caption:='Total R$: '+FormatFloat('0.00', DMESTOQUE.Alx2.FieldByName('Valor').AsCurrency);
               FMenu.XValorFatura:=StrToFloat(FormatFloat('0.00', DMESTOQUE.Alx2.FieldByName('Valor').AsCurrency));
           End;

           DMESTOQUE.Alx1.Close;
           DMESTOQUE.Alx1.SQL.Clear;
           DMESTOQUE.Alx2.Close;
           DMESTOQUE.Alx2.SQL.Clear;
           DMESTOQUE.Alx1.SQL.Add('Select * From VWPEDV ');
           DMESTOQUE.Alx2.SQL.Add('Select * From VWPEDV ');
           //filtra para loja
           DMESTOQUE.Alx1.SQL.Add('Where (COD_LOJA = :CODLOJA) AND   ((vwpedv.numfiscal='+#39+'0'+#39+') OR (vwpedv.numfiscal IS null))  AND ((FATURADO=0) or (FATURADO is NULL)) ');
           DMESTOQUE.Alx1.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
           If CBFiltraPedidosAbertos.Checked=True Then
               DMESTOQUE.Alx1.SQL.Add(' And (vwpedv.SITUACAO <> '+#39+'FECHADO'+#39+') And ((vwpedv.Mark <> '+#39+'B'+#39+') or (vwpedv.Mark is Null)) ')
           Else
               DMESTOQUE.Alx1.SQL.Add(' And ((vwpedv.Mark <> '+#39+'B'+#39+') or (vwpedv.Mark is Null)) ');

           DMESTOQUE.Alx2.SQL.Add('Where (COD_LOJA = :CODLOJA)  AND   ((vwpedv.numfiscal='+#39+#39+') or (vwpedv.numfiscal='+#39+'0'+#39+') OR (vwpedv.numfiscal IS null)) AND  ((FATURADO=0) or (FATURADO is NULL)) ');
           DMESTOQUE.Alx2.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
           DMESTOQUE.Alx2.SQL.Add(' And (Mark = '+#39+'B'+#39+')');
           //Continua sql com os valores para consulta
           If TipoCons='NUMPARC'
           Then Begin//filtrar pelo numparc numero da parcela e ordenar
               DMESTOQUE.Alx1.SQL.Add(' And (upper(NUMPED) like upper('+#39+EdNumParc.Text+'%'+#39+')) ORDER BY NUMPED, NOMECLI');
               DMESTOQUE.Alx2.SQL.Add(' And (upper(NUMPED) like upper('+#39+EdNumParc.Text+'%'+#39+')) ORDER BY NUMPED, NOMECLI');
           End;
           If TipoCons='ONUMPARC'
           Then Begin//ordena pelo valor
               DMESTOQUE.Alx1.SQL.Add(' And (upper(NOMECLI) <> upper('+#39+'CONSUMIDOR'+'%'+#39+'))');
               DMESTOQUE.Alx2.SQL.Add(' And (upper(NOMECLI) <> upper('+#39+'CONSUMIDOR'+'%'+#39+'))');
               DMESTOQUE.Alx1.SQL.Add(' ORDER BY NUMPED, NOMECLI');
               DMESTOQUE.Alx2.SQL.Add(' ORDER BY NUMPED, NOMECLI');
           End;

           If TipoCons='PESSOA'
           Then Begin//filtrar pelo fornecedor  da parcela e ordenar
               DMESTOQUE.Alx1.SQL.Add(' And (upper(NOMECLI) like upper('+#39+EdPessoa.Text+'%'+#39+')) ORDER BY NOMECLI');
               DMESTOQUE.Alx2.SQL.Add(' And (upper(NOMECLI) like upper('+#39+EdPessoa.Text+'%'+#39+')) ORDER BY NOMECLI');
           End;
           If TipoCons='OPESSOA'
           Then Begin//ordena pelo valor
               DMESTOQUE.Alx1.SQL.Add(' ORDER BY NOMECLI');
               DMESTOQUE.Alx2.SQL.Add(' ORDER BY NOMECLI');
           End;

           //abre sql com filtro
           DMESTOQUE.Alx1.SQL.Text;
           DMESTOQUE.Alx1.Open;
           DMESTOQUE.Alx2.SQL.Text;
           DMESTOQUE.Alx2.Open;  
       End
   End;

   CalculaMediaDias;
End;

procedure TFFaturaPedidos.EdNumParcKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If key=#13
   Then Begin
		FiltraPedido('NUMPARC');
   End;
	If key=#27
   Then Begin
		FiltraPedido('ONUMPARC');
   End;
end;

procedure TFFaturaPedidos.EdPessoaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 	If key=#13
   Then Begin
		FiltraPedido('PESSOA');
   End;
	If key=#27
   Then Begin
		FiltraPedido('OPESSOA');
   End;
end;

procedure TFFaturaPedidos.FormActivate(Sender: TObject);
begin
  inherited;
   PCancelaFatura.SendToBack;
   PCancelaFatura.Visible:=False;
   PBtnCancela.SendToBack;
   PBtnCancela.Visible:=False;
   FiltraPedido('PESSOA');
  	If not DMESTOQUE.Alx2.IsEmpty
   Then Begin
   	If Mensagem('Confirmação do usuário', 'Existem pedidos marcados. Deseja desmarca-los?', '', 2, 3, False, 'c')=2
       Then Begin
           DMSAIDA.TAlx.Close;
           DMSAIDA.TAlx.SQL.Clear;
           If XTIPOAUX='FATPEDIDOC' Then
           	DMSAIDA.TAlx.SQL.Add('Update pedcompra set pedcompra.mark='+#39+#39+' where pedcompra.mark='+#39+'B'+#39)
           Else
           	DMSAIDA.TAlx.SQL.Add('Update pedvenda set pedvenda.mark='+#39+#39+' where pedvenda.mark='+#39+'B'+#39);
           DMSAIDA.TAlx.ExecSQL;
           DMSAIDA.IBT.CommitRetaining;
       End;
   End;
   CBFiltraPedidosAbertos.Checked:=False;
   XTIPOAUX:=FMenu.TIPOAUX;

   EdDocumento.Text:=DMMACS.TLoja.fieldByName('PROXDOCCTAREC').AsString;

   // busca todos os pedidos
   FiltraPedido('ONUMPARC');

   XCod_Cliente:=-1;
   //seleciona forma de pagamento
   If DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsString<>''
   Then Begin//se existir uma conta padrao configurada
       XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger;
       FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
       FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
       FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
   End
   Else Begin
       FrmConta.EDCodigo.Text:='';
       FrmConta.EdDescricao.Text:='';
   End;
   CbNF.Checked:=False;
   EdNumFiscal.ReadOnly:=False;
   LVlrCredito.Visible:=False;
   LVlrCredito.Caption:='';

   //Paulo 13/04/2011: Traz a data do sistema
   EdData.Text:=DateToStr(Date());

   LDescTitulo.Caption:='Fatura de Pedidos';

   //Paulo 25/04/2011: Para cancelamento de fatura
   if (XTIPOAUX='CANCELAFATURA')OR (XTIPOAUX='CANCELAFATURAVENDA') Then
   begin
      PCancelaFatura.BringToFront;
      PCancelaFatura.Visible:=True;
      PBtnCancela.BringToFront;
      PBtnCancela.Visible:=True;

      LDescTitulo.Caption:='Cancelamento de Faturas';

      //Paulo 25/04/2011:Filtra tabela de pedidos de compra, inicialmente vem vazia
      if XTIPOAUX='CANCELAFATURA' then
      begin
          FiltraTabela(DMENTRADA.TAlx,'VWPEDC','MARK','P','');
          //Paulo 25/04/2011:Filtra tabela fatura
          FiltraTabela(DMENTRADA.TFatura,'FATURA','CANCELADO','N','and TIPO = '+#39+'COMPRA'+#39+'order by data descending');
          EdNome.Text:='Fornecedor';
      end;

      //Paulo 02/05/2011:Filtra tabela de pedidos de venda, inicialmente vem vazia
      if XTIPOAUX='CANCELAFATURAVENDA' then
      begin
          FiltraTabela(DMENTRADA.TAlx,'VWPEDV','MARK','P','');
          //Paulo 25/04/2011:Filtra tabela fatura
          FiltraTabela(DMENTRADA.TFatura,'FATURA','CANCELADO','N','and TIPO = '+#39+'VENDA'+#39+'');
          EdNome.Text:='Cliente';
      end;

      EdData.Text:='  /  /    ';

      LimpaCampos;


   end;

   //Paulo 21/06/2011: Traz como padrão a forma de pagamento a vista e a conta
    FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO','À VISTA', '');
    XCODFORMPAG:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
    FrmFormPagFrete.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsString;
    FrmFormPagFrete.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;

    if XTIPOAUX<>'FATPEDIDOC' then
    begin
        If DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString<>''
        Then Begin//se existir uma conta padrao configurada
            XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
            FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
            FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
            FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
        End;
    end
    else begin
        If DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsString<>''
        Then Begin//se existir uma conta padrao configurada
            XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsInteger;
            FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
            FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
            FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
        End;
    end;    
end;

procedure TFFaturaPedidos.LInsereClick(Sender: TObject);
begin
  inherited;
   MarcaUnicoPed(True);
   //FrmFormPagFrete.EdDescricao.Text := '';
   //FrmFormPagFrete.EDCodigo.Text := '';
   EdDocumento.Text := DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsString;
   FiltraPedido('PESSOA');
end;

procedure TFFaturaPedidos.LRetiraClick(Sender: TObject);
begin
  inherited;
   MarcaUnicoPed(False);

   // limpa campos apos faturamento
   LimpaCampos;

   //FrmFormPagFrete.EdDescricao.Text := '';
   //FrmFormPagFrete.EDCodigo.Text := '';
   EdDocumento.Text := DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsString;
end;

procedure TFFaturaPedidos.BtnProcPessClick(Sender: TObject);
begin
  inherited;
   If XTIPOAUX='FATPEDIDOC'
   Then Begin
       //se realmente estiver trabalhando com vendas e não com compras
       FiltraTabela(DMPESSOA.WFornecedor, 'vwfornec', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
       If AbrirForm(TFFornecedor, FFornecedor, 1)='Selected'
       Then Begin
           XCod_Cliente:=DMPESSOA.WFornecedor.FieldByName('COD_fornec').AsInteger;
           EdCPF.Text:=DMPESSOA.WFornecedor.FieldByName('CPFCNPJ').AsString;
           EdNomeCli.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
           EdCodCli.Text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
           LVlrCredito.Visible:=TRUE;
           FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WFornecedor.FieldByName('COD_PESSOA').AsString, '');
           LVlrCredito.Caption:=FormatFloat('0.00', DMPESSOA.TPessoa.fieldByName('VLRCREDITO').AsCurrency);
       End;
   End
   Else Begin
       //se realmente estiver trabalhando com vendas e não com compras
       FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
       If AbrirForm(TFCliente, FCliente, 1)='Selected'
       Then Begin
           XCod_Cliente:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
           EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
           EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           EdCodCli.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           LVlrCredito.Visible:=TRUE;
           FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsString, '');
           LVlrCredito.Caption:=FormatFloat('0.00', DMPESSOA.TPessoa.fieldByName('VLRCREDITO').AsCurrency);
       End;
   End;
end;

procedure TFFaturaPedidos.FrmContaEDCodigoKeyPress(Sender: TObject;
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

procedure TFFaturaPedidos.FrmContaBTNOPENClick(Sender: TObject);
begin
  inherited;
   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   XTIPO_CONTA := '';

	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+'C'+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XCodConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
end;

procedure TFFaturaPedidos.FrmContaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   XCodConta:=-1;
   FrmConta.EDCodigo.Text:='';
   FrmConta.EdDescricao.Text:='';
end;

procedure TFFaturaPedidos.BtnMoedaCancelarClick(Sender: TObject);
begin
  inherited;
   FMenu.XPedFatura:='';
   Close;
end;

procedure TFFaturaPedidos.FrmFormPagFreteBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
		XCODFORMPAG:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       FrmFormPagFrete.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsString;
       FrmFormPagFrete.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   End;
end;

procedure TFFaturaPedidos.FrmFormPagFreteEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN
   Then Begin
       If FrmFormPagFrete.EDCodigo.Text<>''
       Then Begin
       	//seleciona a forma de pagamento
           If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', FrmFormPagFrete.EDCodigo.Text, '')
           Then Begin
              XCODFORMPAG:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
              FrmFormPagFrete.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
              FrmFormPagFrete.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
           End
           Else Begin
              XCODFORMPAG:=-1;
              FrmFormPagFrete.EDCodigo.Text:='';
              FrmFormPagFrete.EdDescricao.Text:='';
           End;
       End;
   End;
end;

procedure TFFaturaPedidos.EdCodCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
       	If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+EdCodCli.Text+#39)=True
           Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
	        	XCod_Cliente:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
	            EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
	            EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
               LVlrCredito.Visible:=TRUE;
               FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsString, '');
               LVlrCredito.Caption:=FormatFloat('0.00', DMPESSOA.TPessoa.fieldByName('VLRCREDITO').AsCurrency);
           End
	        Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
               XCod_Cliente:=-1;
               EdCodCli.Text:='';
	            EdCPF.Text:='';
	            EdNomeCli.Text:='';
               LVlrCredito.Visible:=false;
               LVlrCredito.Caption:='';
           End;
   End;
end;

procedure TFFaturaPedidos.BtnMoedaOKClick(Sender: TObject);
begin
  inherited;
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
      
   //valida quanto ao valor
	If XTOTAL<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Para efetuar o faturamento, é necessario que o valor total seja superior a zero', '', 1, 1, False, 'i');
       EdNumParc.SetFocus;
       Exit;
   End;
   //valida quanto aos pedidos selecionados
	If DMESTOQUE.Alx2.IsEmpty
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Para efetuar o faturamento, é necessario que haja pedidos marcados', '', 1, 1, False, 'i');
       EdNumParc.SetFocus;
       Exit;
   End;
   //valida quanto ao cliente
	If XCod_Cliente=-1
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

   //ALEX: 18/02/2009 - Função para verificar se o caixa esta habilitado para emitir NF
   If CbNF.Checked=True
   Then Begin
       //verifica se o caixa aberto é de emissão de nota fiscal
       FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
       //se não for caixa de emissão de nota fiscal, não entra no laço
       If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString<>'NF'
       Then Begin
           Mensagem('ATENÇÃO', ' Você esta tentando emitir um documento fiscal, porém seu caixa não emite notas fiscais. Altere o caixa para poder imprimir ', '', 1, 1, False, 'i');
           Exit;
       End;
   End;

   //Paulo 13/07/2011: verifica se o caixa estah aberto
   If DMCAIXA.VerifAbCaixa = false
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','CAIXA FECHADO. ESSA OPERÇÃO SÓ PODERÁ SER FEITA COM O CAIXA ABERTO.','',1,1,false,'a');
       Exit;
   End;

   //Alex 25/09/2011: Busca a proxima Pk de fatura atravez do generator
   MDO.Transac.CommitRetaining;
   MDO.Query.close;
   MDO.Query.SQL.Clear;
   MDO.Query.SQL.Add(' select gen_id(GEN_FATURA_ID, 0) as cod_fatura from rdb$database ');
   MDO.Query.Open;
   XCodFatura:=MDO.Query.fieldbyname('COD_FATURA').AsInteger+1;

   If FechaPedido(XCodFatura)=True
   Then Begin
   	If XTIPOAUX='FATORDEM'
       Then Begin
			Mensagem('ATENÇÃO', 'As Ordens selecionadas foram fechadas com sucesso!', '', 1, 1, False, 'a')
       End
       Else Begin
			Mensagem('ATENÇÃO', 'Os Pedidos selecionados foram fechados com sucesso!', '', 1, 1, False, 'a');
       End;

       //Paulo 25/04/2011: Insiro dados na tabela fatura
       //Alex 23/09/2011: Estou alterando o método para inserção com inserto e mdo
		MDO.Query.close;
		MDO.Query.SQL.Clear;
		MDO.Query.SQL.Add(' insert into fatura (COD_FATURA, DATA, VALOR, COD_CLIENTE, NUMDOC, COD_PGTO, COD_CTA, PGTO, CANCELADO, TIPO, NOMECLI) ');
		MDO.Query.SQL.Add(' values (:COD_FATURA, :DATA, :VALOR, :COD_CLIENTE, :NUMDOC, :COD_PGTO, :COD_CTA, :PGTO, :CANCELADO, :TIPO, :NOMECLI) ');
		MDO.Query.ParamByName('DATA').AsDateTime:=StrToDate(EdData.Text);
		MDO.Query.ParamByName('VALOR').AsCurrency:=XTOTAL;
		MDO.Query.ParamByName('COD_CLIENTE').AsInteger:=XCod_Cliente;
		MDO.Query.ParamByName('NUMDOC').AsString:=EdDocumento.Text;
		MDO.Query.ParamByName('COD_PGTO').AsInteger:=XCODFORMPAG;
		MDO.Query.ParamByName('COD_CTA').AsInteger:=XCodConta;
		MDO.Query.ParamByName('PGTO').AsString:=CBPagamento.Text;
		MDO.Query.ParamByName('CANCELADO').AsString:='N';
       If (XTIPOAUX<>'FATORDEM') and (XTIPOAUX<>'FATPEDIDOC') then
			MDO.Query.ParamByName('TIPO').AsString:='VENDA';
       If XTIPOAUX='FATPEDIDOC' then
			MDO.Query.ParamByName('TIPO').AsString:='COMPRA';
		MDO.Query.ParamByName('NOMECLI').AsString:=EdNomeCli.Text;
		MDO.Query.ExecSQL;
       //ALEX: 26/09/2011: INSERIMOS TODOS OS PEDIDOS NA TABELA DE PEDIDOS FATURADOS
       DMESTOQUE.Alx2.First;
       While Not Dmestoque.Alx2.Eof do
       Begin
           If XTIPOAUX='FATPEDIDOC'
           Then Begin
               FiltraTabela(DMENTRADA.TPedc, 'pedCOMPRA', 'cod_pedCOMP', DMESTOQUE.Alx2.FieldByName('COD_PEDCOMPRA').AsString, '');
               //Paulo 25/04/2011: Aqui eu agrupo os pedidos faturados
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' insert into pedfaturado (cod_pedfaturado, cod_fatura, cod_pedido) ');
               MDO.Query.SQL.Add('  values(:cod_pedfaturado, :cod_fatura, :cod_pedido) ');
               MDO.Query.ParamByName('cod_pedfaturado').AsInteger:=DMMACS.TCodigo.FieldByName('COD_PEDFATURADO').AsInteger;
               MDO.Query.ParamByName('cod_fatura').AsInteger:=XCodFatura;
               MDO.Query.ParamByName('cod_pedido').AsInteger:=DMESTOQUE.Alx2.FieldByName('COD_PEDCOMPRA').AsInteger;
               MDO.Query.ExecSQL;
           End;
           DMESTOQUE.Alx2.Next;
       end;
       Try
       	MDO.Transac.CommitRetaining;
       Except
           MDO.Transac.RollbackRetaining;
			MessageDlg('[1357] - Falha na fatura!'+#13+#10+'Os dados serão retornados a posição anterior.', mtWarning, [mbOK], 0);
       End;
       Try
           DMCAIXA.IBT.CommitRetaining;
       Except
           DMCAIXA.IBT.RollbackRetaining;
			MessageDlg('[1363] - Falha na fatura!'+#13+#10+'Os dados de lançamento em caixa serão retornados porém os pedidos estarão fechados.', mtWarning, [mbOK], 0);
       End;
       Try
           DMSAIDA.IBT.CommitRetaining;
       Except
           DMSAIDA.IBT.RollbackRetaining;
			MessageDlg('[1369] - Falha na fatura!'+#13+#10+'Os dados dos pedidos de vendão serão retornados.', mtWarning, [mbOK], 0);
       End;

       // limpa campos apos faturamento
       LimpaCampos;

    	If Mensagem('Confirmação do usuário', 'Imprimir pedidos?', '', 2, 3, False, 'c')=2
   	Then Begin
           ImpPVSintDia;
       End;
       //aTUALIZA PEDIDOS COMO NÃO MARCADOS
       If XTIPOAUX<>'FATORDEM'
       Then Begin
           Try
               DMSAIDA.TAlx.Close;
               DMSAIDA.TAlx.SQL.Clear;
               DMSAIDA.TAlx.SQL.Add('UpDate pedvenda set pedvenda.mark='+#39+#39+' where pedvenda.mark='+#39+'B'+#39);
               DMSAIDA.TAlx.ExecSQL;
               DMSAIDA.IBT.CommitRetaining;
           Except
               DMSAIDA.IBT.RollbackRetaining;
               MessageDlg('[1390] - Falha na fatura!'+#13+#10+'Os dados dos pedidos de vendão serão retornados.', mtWarning, [mbOK], 0);
           End;

       End;
   	FiltraPedido('ONUMPARC');
       //COMO FOI FEITO O FATURAMENTO DOS PEDIDOS, INCREMENTA 1 NO PROX Nº DE DOCUMENTO UTILIZADO
       Try
		    MDO.Query.close;
		    MDO.Query.SQL.Clear;
		    MDO.Query.SQL.Add('  update loja set loja.proxdocctarec=:ProximoDocumento ');
		    MDO.Query.ParamByName('ProximoDocumento').AsInteger:=DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsInteger+1;
		    MDO.Query.ExecSQL;
		    MDO.Transac.CommitRetaining;
       Except
		    MDO.Transac.RollbackRetaining;
           MessageDlg('[1405] - Falha na fatura!'+#13+#10+'O Número da fatura não foi atualizado.', mtWarning, [mbOK], 0);
       End;
   End
   Else Begin
       MDO.Transac.RollbackRetaining;
       MessageDlg('[1410] - Falha na fatura!'+#13+#10+'Os pedidos não foram devidamente faturados. Os pedidos serão marcados como Abertos, porém verifique o financeiro.', mtWarning, [mbOK], 0);
   End;
   LVlrCredito.Caption:='';
end;

// limpa campos apos faturamento
Procedure TFFaturaPedidos.LimpaCampos;
begin
    EdCodCli.Text := '';
    EdCPF.Text := '';
    EdNomeCli.Text := '';
    FrmFormPagFrete.EDCodigo.Text := '';
    FrmFormPagFrete.EdDescricao.Text := '';
    EdDocumento.Text := '';
    EdNumFiscal.Text := '';
    FrmConta.EDCodigo.Text := '';
    FrmConta.EdDescricao.Text := '';
    XCod_Cliente := 0;
    Xdata:= 0;
    EdFiltraData.text :='   /  /    ';
    EdPedido.text:='Pedido';
    if XTIPOAUX='CANCELAFATURA' then
    begin
       FiltraTabela(DMENTRADA.TAlx,'VWPEDC','MARK','P','');
       EdNome.Text:='Fornecedor';
    end;
    if XTIPOAUX='CANCELAFATURAVENDA' then
    begin
       FiltraTabela(DMENTRADA.TAlx,'VWPEDV','MARK','P','');
       EdNome.Text:='Cliente';
    end;
end;


procedure TFFaturaPedidos.CBPagamentoExit(Sender: TObject);
begin
  inherited;
   //controla visualização de componentes referentes a escolha e visualização da cta corrente
	If (CBPagamento.Text='Banco') or (CBPagamento.Text='Cheque')  or (CBPagamento.Text='Boleto')
   Then Begin
      	PMostraCta.Visible:=True;
  		PMostraCta.BringToFront;
      	PBanco.Enabled:=True;
      	PBanco.Visible:=TRUE;
      	PBanco.BringToFront;
      	DBGCTA.SetFocus;
   End
   Else Begin
       PBanco.Enabled:=False;
       PMostraCta.Visible:=False;
   End;
end;

procedure TFFaturaPedidos.CBPagamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key<>#13 Then
   	Key:=#0;
end;

procedure TFFaturaPedidos.DBGCTAKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
   	If CBPagamento.Text='Boleto'
       Then Begin
       	FiltraTabela(DMBANCO.TCtaCor, 'CTACOR', 'COD_CTACOR', DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString, '');
       	EdDocumento.Text:=DMBANCO.TCtaCor.FieldByName('PROXBOLETO').AsString;
       End;
       PBanco.Visible:=False;
       EdDocumento.SetFocus;
   end;
end;

procedure TFFaturaPedidos.BitBtn1Click(Sender: TObject);
begin
  inherited;
   CalculaMediaDias;
end;

procedure TFFaturaPedidos.Label3Click(Sender: TObject);
begin
  inherited;
   MarcaTodosPed(True);
   FiltraPedido('ONUMPARC');
   FrmFormPagFrete.EdDescricao.Text := '';
   FrmFormPagFrete.EDCodigo.Text := '';
   EdDocumento.Text := DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsString;

end;

procedure TFFaturaPedidos.Label7Click(Sender: TObject);
begin
  inherited;
   MarcaTodosPed(False);
   FiltraPedido('ONUMPARC');
   // limpa campos apos faturamento
   LimpaCampos;
   FrmFormPagFrete.EdDescricao.Text := '';
   FrmFormPagFrete.EDCodigo.Text := '';
   EdDocumento.Text := DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsString;
end;

procedure TFFaturaPedidos.FrmContaEnter(Sender: TObject);
begin
  inherited;
    FrmFormPagFreteExit(Sender);
  {
    If FrmConta.EdDescricao.Text='À VISTA'
    Then Begin//como é uma venda a vista o sistema vai pegar a conta padrão para vendas a vista
       If DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString<>''
       Then Begin//se existir uma conta padrao configurada
           XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
           FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
           FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       End
       Else Begin
           FrmConta.EDCodigo.Text:='';
           FrmConta.EdDescricao.Text:='';
       End;
    End
    Else Begin//como é uma venda a prazo, lançar em conta padrão para venda a prazo
       If DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsString<>''
       Then Begin//se existir uma conta padrao configurada
           XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger;
           FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
           FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       End
       Else Begin
           FrmConta.EDCodigo.Text:='';
           FrmConta.EdDescricao.Text:='';
       End;
    End;
     }
end;

procedure TFFaturaPedidos.CBFiltraPedidosAbertosClick(Sender: TObject);
begin
  inherited;
   FiltraPedido('ONUMPARC');
end;

procedure TFFaturaPedidos.CbNFClick(Sender: TObject);
begin
  inherited;
  if CbNF.Checked = True
  then begin
       EdNumFiscal.Text:=DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
       EdNumFiscal.ReadOnly:=True;
  end
  else begin
       EdNumFiscal.Text:='';
       EdNumFiscal.ReadOnly:=False;
  end;
end;

procedure TFFaturaPedidos.GridFaturaDblClick(Sender: TObject);
begin
  inherited;
      //Paulo 25/04/2011: Seleciona pedidos de compra conforme a fatura selecionada
      if XTIPOAUX='CANCELAFATURA' then
      begin
          DMENTRADA.TAlx.Close;
          DMENTRADA.TAlx.SQL.Clear;
          DMENTRADA.TAlx.SQL.Add('select vwpedc.numped, vwpedc.dtpedcomp, vwpedc.nome, vwpedc.valor from pedfaturado');
          DMENTRADA.TAlx.SQL.Add('left join vwpedc on vwpedc.cod_pedcomp = pedfaturado.cod_pedido');
          DMENTRADA.TAlx.SQL.Add('where pedfaturado.cod_fatura = :COD_FATURA');
          DMENTRADA.TAlx.ParamByName('COD_FATURA').AsInteger:=DMENTRADA.TFatura.FieldByName('COD_FATURA').AsInteger;
          DMENTRADA.TAlx.Open;
      end
      else begin
          DMENTRADA.TAlx.Close;
          DMENTRADA.TAlx.SQL.Clear;
          DMENTRADA.TAlx.SQL.Add('select vwpedv.numped, vwpedv.dtpedven as dtpedcomp, vwpedv.nomecli as nome, vwpedv.valor from pedfaturado');
          DMENTRADA.TAlx.SQL.Add('left join vwpedv on vwpedv.cod_pedvenda = pedfaturado.cod_pedido');
          DMENTRADA.TAlx.SQL.Add('where pedfaturado.cod_fatura = :COD_FATURA');
          DMENTRADA.TAlx.ParamByName('COD_FATURA').AsInteger:=DMENTRADA.TFatura.FieldByName('COD_FATURA').AsInteger;
          DMENTRADA.TAlx.Open;
      end;    

      XCodFatura:=DMENTRADA.TFatura.FieldByName('COD_FATURA').AsInteger;

      CBPagamento.Text:=DMENTRADA.TFatura.FieldByName('PGTO').AsString;

      //Paulo 25/04/2011: Preencho os dados do fornecedor para pedido de compra
      if XTIPOAUX='CANCELAFATURA' then
      begin
          FiltraTabela(DMPESSOA.WFornecedor, 'vwfornec', 'cod_fornec', IntToStr(DMENTRADA.TFatura.FieldByName('COD_CLIENTE').AsInteger), '');
          EdCPF.Text:=DMPESSOA.WFornecedor.FieldByName('CPFCNPJ').AsString;
          EdNomeCli.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
          EdCodCli.Text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
      end
      else begin
          FiltraTabela(DMPESSOA.WCliente, 'vwcliente', 'cod_cliente', IntToStr(DMENTRADA.TFatura.FieldByName('COD_CLIENTE').AsInteger), '');
          EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
          EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
          EdCodCli.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
      end;

      //Paulo 25/04/2011: Preencho  a forma de pagamento
      FiltraTabela(DMFinanc.TFormPag, 'formpag', 'COD_FORMPAG', IntToStr(DMENTRADA.TFatura.FieldByName('COD_PGTO').AsInteger), '');
      FrmFormPagFrete.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsString;
      FrmFormPagFrete.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;

      //Paulo 25/04/2011: Preencho o plano de conta
      filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(DMENTRADA.TFatura.FieldByName('COD_CTA').AsInteger), '');
      FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;

      //Paulo 25/04/2011: Preencho  o nº do documento e a data do faturamento
      EdDocumento.Text:= DMENTRADA.TFatura.FieldByName('NUMDOC').AsString;
      EdData.Text:= DateToStr(DMENTRADA.TFatura.FieldByName('DATA').AsDateTime);

      //Paulo 29/04/2011: Bloqueio os edits para não ser modificado
      PSelectCliente.Enabled:=False;
      FrmFormPagFrete.Enabled:=False;
      CBPagamento.Enabled:=False;
      EdDocumento.Enabled:=False;
      FrmConta.Enabled:=False;
      EdData.Enabled:=False;
end;

procedure TFFaturaPedidos.BtnCancelaFatClick(Sender: TObject);
begin
  inherited;
       If Mensagem('Confirmação', 'Você deseja realmente cancelar o fechamento deste faturamento?','',2,3,false,'C')=2
       Then Begin
            //Paulo 26/04/2011: Cancela o fechamento de todos os pedidos
            FiltraTabela(DMESTOQUE.Alx, 'PEDFATURADO', 'COD_FATURA', IntToStr(XCodFatura), '');
            if not DMESTOQUE.Alx.IsEmpty  then
            begin
                //XCODGERFAT:=DMENTRADA.TFatura.FieldByName('COD_GERADOR').AsInteger;
                //Paulo 02/05/2011: Para fatura de compra
                if XTIPOAUX='CANCELAFATURA' then
                begin
                    If CancelLPedcFatura(IntToStr(XCodFatura))=True
                    Then Begin
                        DMESTOQUE.Alx.First;
                        while not DMESTOQUE.Alx.Eof do
                        begin
                            FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', IntToStr(DMESTOQUE.Alx.FieldByName('COD_PEDIDO').AsInteger), '');
                            DMENTRADA.TPedC.EDIT;
                            DMENTRADA.TPedC.FieldByName('SITUACAO').AsString:='ABERTO';
                            DMENTRADA.TPedC.FieldByName('FATURADO').AsString:='0';
                            DMENTRADA.TPedC.Post;
                            DMENTRADA.IBT.CommitRetaining;
                            DMESTOQUE.Alx.Next;
                        end;

                        Mensagem('INFORMAÇÃO', 'Pedidos cancelados com sucesso!', '', 1,1, false, 'i');

                        //Paulo 25/04/2011:Atualiza tabela fatura
                        DMESTOQUE.Alx5.Close;
                        DMESTOQUE.Alx5.SQL.Clear;
                        DMESTOQUE.Alx5.SQL.Add('update fatura set fatura.cancelado = '+#39+'S'+#39' where fatura.cod_fatura = :fatura ');
                        DMESTOQUE.Alx5.ParamByName('FATURA').AsInteger:= XCodFatura;
                        DMESTOQUE.Alx5.ExecSQL;
                        DMESTOQUE.TransacEstoque.CommitRetaining;
                        DMESTOQUE.Alx5.Open;
                    end
                    else begin
                       Exit;
                    end;
                end
                else begin
                     //Paulo 02/05/2011: Para fatura de venda
                     If CancelLPedvFatura(IntToStr(XCodFatura))=True
                     Then Begin
                          DMESTOQUE.Alx.First;
                          while not DMESTOQUE.Alx.Eof do
                          begin
                              FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', IntToStr(DMESTOQUE.Alx.FieldByName('COD_PEDIDO').AsInteger), '');
                              DMSAIDA.TPedV.EDIT;
                              DMSAIDA.TPedV.FieldByName('SITUACAO').AsString:='ABERTO';
                              DMSAIDA.TPedV.FieldByName('FATURADO').AsString:='0';
                              DMSAIDA.TPedV.Post;
                              DMSAIDA.IBT.CommitRetaining;
                              DMESTOQUE.Alx.Next;
                          end;

                          Mensagem('INFORMAÇÃO', 'Pedidos cancelados com sucesso!', '', 1,1, false, 'i');

                          //Paulo 25/04/2011:Atualiza tabela fatura
                          DMESTOQUE.Alx5.Close;
                          DMESTOQUE.Alx5.SQL.Clear;
                          DMESTOQUE.Alx5.SQL.Add('update fatura set fatura.cancelado = '+#39+'S'+#39' where fatura.cod_fatura = :fatura ');
                          DMESTOQUE.Alx5.ParamByName('FATURA').AsInteger:= XCodFatura;
                          DMESTOQUE.Alx5.ExecSQL;
                          DMESTOQUE.TransacEstoque.CommitRetaining;
                          DMESTOQUE.Alx5.Open;
                      end
                      else begin
                         Exit;
                      end;
                end;
            end;
        end
        else begin
           exit;
        end;
        Activate;

end;

procedure TFFaturaPedidos.BtnCancelarClick(Sender: TObject);
begin
  inherited;
       FMenu.XPedFatura:='';
       Close;
end;

//Paulo 26/04/2011: para cancelar/estornar todos os lançamentos de campora faturados
Function TFFaturaPedidos.CancelLPedcFatura(CodFatura: String):Boolean;

Begin
   Result:=True;
   Try
       //filtra loja para capturar as configurações
       FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       //filtra DADOS DA VIEW
       DMESTOQUE.Alx2.Close;
       DMESTOQUE.Alx2.SQL.Clear;
       DMESTOQUE.Alx2.SQL.Add('SELECT * FROM FATURA WHERE COD_FATURA=:CODPEDIDO');
       DMESTOQUE.Alx2.ParamByName('CODPEDIDO').AsString:=CodFatura;
       DMESTOQUE.Alx2.Open;

       filtraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(DMESTOQUE.Alx2.FieldByName('COD_PGTO').AsInteger), '');
       //filtra o forncedor do pedido em vwfonecedor
       FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', IntToStr(DMESTOQUE.Alx2.FieldByName('COD_CLIENTE').AsInteger), '');

       //ANTES DE CONTINUAR O SISTEMA VERIFICA SE EXISTEM PARCELAMENTOS DESTE PEDIDO JÁ BAIXADO
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add(' select count(parcelacp.cod_parcelacp) AS CONTAGEM from ctapagar ');
       DMMACS.TALX.SQL.Add(' left join parcelacp on ctapagar.cod_ctapagar = parcelacp.cod_ctapagar ');
       DMMACS.TALX.SQL.Add(' Where  ((TIPOGERADOR = '+#39+'FATURA'+#39+') AND (COD_GERADOR='+CodFatura+')) and (parcelacp.fech=''S'')');
       DMMACS.TALX.Open;
       If DMMACS.TALX.FieldByName('CONTAGEM').AsInteger>0
       Then Begin
       	//O Sistema encontrou parcelas fechadas no pedido
           If Mensagem('Confirmação', 'O Sistema encontrou uma parcela deste pedido já baixada. Você deseja realmente cancelar o fechamento deste pedido?','',2,3,false,'C')=3
           Then Begin
               Result:=False;
               Exit;
           End;
           //Paulo 31/05/2011: Filtra todas as parcelas baixadas
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' select parcelacp.cod_parcelacp from ctapagar ');
           DMMACS.TALX.SQL.Add(' left join parcelacp on ctapagar.cod_ctapagar = parcelacp.cod_ctapagar ');
           DMMACS.TALX.SQL.Add(' Where  ((TIPOGERADOR = '+#39+'FATURA'+#39+') AND (COD_GERADOR='+CodFatura+')) and (parcelacp.fech=''S'')');
           DMMACS.TALX.Open;

           DMMACS.TALX.First;
           while not DMMACS.TALX.Eof do
           begin
               //FILTRA LANÇAMENTO EM CAIXA E GERA OUTRO LANÇAMENTO DE ESTORNO EM CX
               DMCAIXA.TLanCaixa.Close;
               DMCAIXA.TLanCaixa.SQL.Clear;
               DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA WHERE ((TIPOGERADOR=:TIPO1) or (TIPOGERADOR=:TIPO2)) AND (COD_GERADOR=:CODPEDIDO)');
               DMCAIXA.TLanCaixa.ParamByName('TIPO1').AsString:='FATURA';
               DMCAIXA.TLanCaixa.ParamByName('TIPO2').AsString:='CTAP';
               DMCAIXA.TLanCaixa.ParamByName('CODPEDIDO').AsInteger:=DMMACS.TALX.FieldByName('cod_parcelacp').AsInteger;
               DMCAIXA.TLanCaixa.Open;
               If Not DMCAIXA.TLanCaixa.IsEmpty
               Then Begin//se foi encontrado algum lançamento em caixa deve se realizar outro de estorno
                   If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. Fatura. Ped. '+DMCAIXA.TLanCaixa.FieldByName('DOC').AsString+' For. '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TFATC', DMMACS.TALX.FieldByName('cod_parcelacp').AsInteger, 'Carteira', 'E', 'EST'+DMCAIXA.TLanCaixa.FieldByName('DOC').AsString, Date(), '1')= False Then
                       Result:=False;
               End;
               //filtra se tem alguma movimentação bancaria
               If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (TIPOGERADOR='+#39+'FATURA'+#39+') AND (COD_GERADOR='+CodFatura+')')=True
               Then Begin//se foi encontrado alguma movimentação, esta é apagada
                   try
                       DMBANCO.TMovBanco.Delete;
                       DMBANCO.TMovBanco.ApplyUpdates;
                   except
                       Result:=False;
                   end;
               end;

               DMMACS.TALX.Next;
           end;
       End;
       //VERIRIFA SE A COMPRA FOI À VISTA
       If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
       Then Begin
             //FILTRA LANÇAMENTO EM CAIXA E GERA OUTRO LANÇAMENTO DE ESTORNO EM CX
             DMCAIXA.TLanCaixa.Close;
             DMCAIXA.TLanCaixa.SQL.Clear;
             DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA WHERE (TIPOGERADOR=:TIPO1) AND (COD_GERADOR=:CODPEDIDO)');
             DMCAIXA.TLanCaixa.ParamByName('TIPO1').AsString:='FATURA';
             DMCAIXA.TLanCaixa.ParamByName('CODPEDIDO').AsInteger:=StrToInt(CodFatura);
             DMCAIXA.TLanCaixa.Open;
             If Not DMCAIXA.TLanCaixa.IsEmpty
             Then Begin//se foi encontrado algum lançamento em caixa deve se realizar outro de estorno
                 If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. Fatura. Ped. '+DMCAIXA.TLanCaixa.FieldByName('DOC').AsString+' For. '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TFATC', StrToInt(CodFatura), 'Carteira', 'E', 'EST'+DMCAIXA.TLanCaixa.FieldByName('DOC').AsString, Date(), '1')= False Then
						Result:=False;
             End;
             //filtra se tem alguma movimentação bancaria
             If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (TIPOGERADOR='+#39+'FATURA'+#39+') AND (COD_GERADOR='+CodFatura+')')=True
             Then Begin//se foi encontrado alguma movimentação, esta é apagada
                 DMBANCO.TMovBanco.Delete;
                 DMBANCO.TMovBanco.ApplyUpdates;
             end;
       End
       Else Begin
          //SE A VENDA NÃO FOI À VISTA
          //FILTRA CTA RECEBER PARA LOCALIZAR LANÇAMENTOS
          If FiltraTabela(DMCONTA.TCtaP, 'CTAPAGAR', 'COD_CTAPAGAR', '', ' (TIPOGERADOR = '+#39+'FATURA'+#39+') AND (COD_GERADOR='+CodFatura+')')=True
          Then Begin//se foi encontrado alguma conta
             //FILTRA PARCELAS
             If FiltraTabela(DMCONTA.TParcCP, 'PARCELACP', 'COD_CTAPAGAR', DMCONTA.TCtaP.FieldByName('COD_CTAPAGAR').AsString, '')=True
             Then Begin//se foi encontrado alguma conta
                 //PARA CADA PARCELA VERIFICA SE ESTA FECHADA
                 DMCONTA.TParcCP.First;
                 While not DMCONTA.TParcCP.Eof do
                 Begin
                     If DMCONTA.TParcCP.FieldByName('FECH').AsString='S'
                     Then Begin
                         //SE ESTIVER FECHADA VERIFICA SE FOI REALIZADA MOVIMENTAÇÃO EM BANCO
                         If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (TIPOGERADOR='+#39+'CTPCARTAO'+#39+') AND (COD_GERADOR='+DMCONTA.TParcCP.FieldByName('COD_PARCELACP').AsString+')')=True
                         Then begin//se foi encontrado alguma MOVIMENTAÇÃO REALIZA UM ESTORNO
                             try
                                LanBanco(DMBANCO.TMovBanco.FieldByName('COD_CTACOR').AsInteger, DMMACS.TLoja.FieldByName('PLNCTA_ENTCXCORR').AsInteger, 'Cancel. Fatura. Ped. '+DMESTOQUE.Alx2.FieldByName('NUMDOC').AsString+'Parc. '+ DMCONTA.TParcCP.FieldByName('NUMPARC').AsString+' For. '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, DMBANCO.TMovBanco.FieldByName('valor').AsCurrency, 'TFAT', StrToInt(CodFatura), 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO', 'S', DateToStr(Date), '', DMBANCO.TMovBanco.FieldByName('DTLANC').AsString, '1', DMBANCO.TMovBanco.FieldByName('DTREF').AsString)
                             except
                                Result:=False;
                             end;
                         end;

                         //SE ESTIVER FECHADA VERIFICA SE FOI REALIZADA MOVIMENTAÇÃO EM CX
                         {If FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANCAIXA', '', ' (TIPOGERADOR='+#39+'CTAP'+#39+') AND (COD_GERADOR='+DMCONTA.TParcCP.FieldByName('COD_PARCELACP').AsString+')')=True
                         Then Begin//se foi encontrado alguma MOVIMENTAÇÃO REALIZA UM ESTORNO
                             If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_ENTCXCORR').AsInteger, 'Cancel. Fatura. Ped. '+DMESTOQUE.Alx2.FieldByName('NUMDOC').AsString+'Parc. '+ DMCONTA.TParcCP.FieldByName('NUMPARC').AsString+' For. '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TFAT', StrToInt(CodFatura), 'Carteira', 'E', 'EST'+DMCAIXA.TLanCaixa.FieldByName('DOC').AsString, Date(), '1')=True Then
                                 DMCAIXA.IBT.CommitRetaining
                             Else
                                 Result:=False;
                         End;  }
                         //SE ESTIVER FECHADA VERIFICA SE FOI REALIZADA MOVIMENTAÇÃO EM BANCO
                         If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (TIPOGERADOR='+#39+'CTAPJ'+#39+') AND (COD_GERADOR='+DMCONTA.TParcCP.FieldByName('COD_PARCELACP').AsString+')')=True
                         Then begin
                             try
                                 DMBANCO.TMovBanco.Delete;
                                 DMBANCO.TMovBanco.ApplyUpdates;
                             except
                               Result:=False;
                             end;
                         end;
                     
                     End;

                     // apagando a movimentação bancaria de cartão por cancelar o pedido de compra
                     If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_GERADOR','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCP.FieldByName('COD_PARCELACP').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTPCARTAO' + #39 + ')')= TRUE
                     Then Begin
                         DMBANCO.TMovBanco.Delete;
                         DMBANCO.TMovBanco.ApplyUpdates;
                     End;

                     // apagando a movimentação bancaria de cheque por cancelar o pedido de compra
                     If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_GERADOR','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCP.FieldByName('COD_PARCELACP').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTAPCH' + #39 + ')')= TRUE
                     Then Begin
                         DMBANCO.TMovBanco.Delete;
                         DMBANCO.TMovBanco.ApplyUpdates;
                     End;

                     DMCONTA.TParcCP.Delete;

                 End;
                 DMCONTA.TParcCP.ApplyUpdates;
             End;
             DMCONTA.TCtaP.Delete;
             DMCONTA.TCtaP.ApplyUpdates;
             DMCONTA.IBT.CommitRetaining;
             DMBANCO.IBT.CommitRetaining;
            
          End;
       End;
       Try
           MDO.Transac.CommitRetaining;
       Except
           MDO.Transac.RollbackRetaining;
           Result:=False;
       End;

   Except
       Result := false;
   End;
End;

//Paulo 02/05/2011: para cancelar/estornar todos os lançamentos de venda faturados
Function TFFaturaPedidos.CancelLPedvFatura(CodFatura: String):Boolean;
var
   XCampo:String;
Begin
   Result:=True;

	 //filtra loja para capturar as configurações
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	 //filtra DADOS DA VIEW
	DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx2.SQL.Add('SELECT * FROM FATURA WHERE COD_FATURA=:CODPEDIDO');
   DMESTOQUE.Alx2.ParamByName('CODPEDIDO').AsString:=CodFatura;
   DMESTOQUE.Alx2.Open;
   //Paulo 06/05/2011: Filtra tabela de pedidos
   FiltraTabela(DMENTRADA.TPedFaturado,'PEDFATURADO', 'COD_FATURA',CodFatura,'' );
	 //filtra forma de pagto
   filtraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(DMESTOQUE.Alx2.FieldByName('COD_PGTO').AsInteger), '');
   //filtra o forncedor do pedido em vwfonecedor
   FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(DMESTOQUE.Alx2.FieldByName('COD_CLIENTE').AsInteger), '');

   //ANTES DE CONTINUAR O SISTEMA VERIFICA SE EXISTEM PARCELAMENTOS DESTE PEDIDO JÁ BAIXADO
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select count(parcelacr.cod_parcelacr) AS CONTAGEM from ctareceber ');
   DMMACS.TALX.SQL.Add(' left join parcelacr on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
   DMMACS.TALX.SQL.Add(' Where  ((TIPOGERADOR = '+#39+'FATURA'+#39+') AND (COD_GERADOR='+CodFatura+')) and (parcelacr.fech=''S'')');
   DMMACS.TALX.Open;
   If DMMACS.TALX.FieldByName('CONTAGEM').AsInteger>0
   Then Begin
       //O Sistema encontrou parcelas fechadas no pedido
       If Mensagem('Confirmação', 'O Sistema encontrou uma parcela deste pedido já baixada. Você deseja realmente cancelar o fechamento deste pedido?','',2,3,false,'C')=3
       Then Begin
           Result:=False;
           Exit;
       End;
       //Paulo 31/05/2011: Seleciona todas as parcelas já baixadas
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add(' select parcelacr.cod_parcelacr from ctareceber ');
       DMMACS.TALX.SQL.Add(' left join parcelacr on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
       DMMACS.TALX.SQL.Add(' Where  ((ctareceber.TIPOGERADOR = '+#39+'FATURA'+#39+') AND (ctareceber.COD_GERADOR='+CodFatura+')) and (parcelacr.fech=''S'')');
       DMMACS.TALX.Open;

       DMMACS.TALX.First;

       while not DMMACS.TALX.Eof do
       begin
           //FILTRA LANÇAMENTO EM CAIXA E GERA OUTRO LANÇAMENTO DE ESTORNO EM CX
           DMCAIXA.TLanCaixa.Close;
           DMCAIXA.TLanCaixa.SQL.Clear;
           DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA WHERE (TIPOGERADOR=:TIPO1 OR TIPOGERADOR=:TIPO2) AND (COD_GERADOR=:CODPEDIDO)');
           DMCAIXA.TLanCaixa.ParamByName('TIPO1').AsString:='FATURA';
           DMCAIXA.TLanCaixa.ParamByName('TIPO2').AsString:='CTAR';
           DMCAIXA.TLanCaixa.ParamByName('CODPEDIDO').AsInteger:=DMMACS.TALX.FieldByName('cod_parcelacr').AsInteger;
           DMCAIXA.TLanCaixa.Open;

           //If Not (DMCAIXA.TLanCaixa.IsEmpty) and (DMESTOQUE.Alx2.FieldByName('PGTO').AsString = 'Carteira')
           If Not (DMCAIXA.TLanCaixa.IsEmpty)
           Then Begin//se foi encontrado algum lançamento em caixa deve se realizar outro de estorno
               If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fatura. Ped Venda. '+DMCAIXA.TLanCaixa.FieldByName('DOC').AsString+' Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TFATV', DMMACS.TALX.FieldByName('cod_parcelacr').AsInteger, 'Carteira', 'S', 'EST'+DMCAIXA.TLanCaixa.FieldByName('DOC').AsString, Date(), '1')= True
               Then Begin
                   MDO.Transac.CommitRetaining;
                   //DMCAIXA.IBT.CommitRetaining;
                   Result := true;
               End
               Else Begin
                   Result:=False;
                   Exit;
               End;
           END;
           DMMACS.TALX.Next;
       end;

   End;


   //Apaga Lancamentos de Comissão
   DMENTRADA.TPedFaturado.First;
   Try
      while not DMENTRADA.TPedFaturado.Eof do
      begin
   	    DMFINANC.TComis.Close;
   	    DMFINANC.TComis.sql.Clear;
   	    DMFINANC.TComis.SQL.Add('Delete from comissao where  (comissao.cod_gerador=:CODGERADOR) And (comissao.gerador='+#39+'PEDVENDA'+#39+')');
		    DMFINANC.TComis.ParamByName('CODGERADOR').AsString:=DMENTRADA.TPedFaturado.FieldByName('COD_PEDIDO').AsString;
   	    DMFINANC.TComis.ExecSQL;
           DMFINANC.Transaction.CommitRetaining;
           DMENTRADA.TPedFaturado.Next;
      end;
   Except
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Ocorreu um problema ao tentar apagar as comissões referentes ao pedido! As informação serão mantidas', '', 1, 1, False, 'a');
    Result:=False;
    Exit;
   End;

   //VERIRIFA SE A VENDA FOI À VISTA
   If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
   Then Begin
   	   //APAGA LANÇAMENTO DE CREDITO
       DMCAIXA.TAlx.Close;
       DMCAIXA.TAlx.SQL.Clear;
       DMCAIXA.TAlx.SQL.Add(' delete from credito Where (credito.tipogerador=' +#39 + 'FATURA' + #39 + ') And (credito.cod_gerador=:CODGERADOR) ');
       DMCAIXA.TAlx.ParamByName('CODGERADOR').AsString:=CodFatura;
   	DMCAIXA.TAlx.ExecSQL;

       //FILTRA LANÇAMENTO EM CAIXA E GERA OUTRO LANÇAMENTO DE ESTORNO EM CX
       DMCAIXA.TLanCaixa.Close;
       DMCAIXA.TLanCaixa.SQL.Clear;
       DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA WHERE (TIPOGERADOR=:TIPO1) AND (COD_GERADOR=:CODPEDIDO)');
       DMCAIXA.TLanCaixa.ParamByName('TIPO1').AsString:='FATURA';
       DMCAIXA.TLanCaixa.ParamByName('CODPEDIDO').AsInteger:=StrToInt(CodFatura);
       DMCAIXA.TLanCaixa.Open;

       //If Not (DMCAIXA.TLanCaixa.IsEmpty) and (DMESTOQUE.Alx2.FieldByName('PGTO').AsString = 'Carteira')
       If Not (DMCAIXA.TLanCaixa.IsEmpty)
       Then Begin//se foi encontrado algum lançamento em caixa deve se realizar outro de estorno
           If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fatura. Ped Venda. '+DMCAIXA.TLanCaixa.FieldByName('DOC').AsString+' Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TFATV', StrToInt(CodFatura), 'Carteira', 'S', 'EST'+DMCAIXA.TLanCaixa.FieldByName('DOC').AsString, Date(), '1')= True
           Then Begin
                MDO.Transac.CommitRetaining;
               //DMCAIXA.IBT.CommitRetaining;
               Result := true;
           End
           Else Begin
               Result:=False;
               Exit;
           End;
       END;
       DMMACS.TALX.Next;


      //CONTROLE QUE DELETA TODA A MOVIMENTAÇÃO QUANDO UM PEDIDO É FECHADO COM CHEQUE E É À VISTA.

       FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + CodFatura + #39 + ') AND (TIPOGERADOR = ' + #39 + 'FATURA' + #39 + ')');

       //seleciona cheques para serem apagados
       DMCAIXA.TAlx.close;
       DMCAIXA.TAlx.SQL.Clear;
       DMCAIXA.TAlx.SQL.Add('select * from chequerec');
       DMCAIXA.TAlx.SQL.Add('where chequerec.cod_movbanco = :CODMOV');
       DMCAIXA.TAlx.ParamByName('CODMOV').AsString:=DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;
       DMCAIXA.TAlx.Open;

       if not DMCAIXA.TAlx.IsEmpty
       then begin
          //seleciona lançamentos de caixa para serem deletados
          DMCAIXA.TLanCaixa.Close;
          DMCAIXA.TLanCaixa.SQL.Clear;
          DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA');
          DMCAIXA.TLanCaixa.SQL.Add('where ((lancaixa.tipogerador='+#39+'LCHR'+#39+') or (lancaixa.tipogerador='+#39+'DCHR'+#39+') or (lancaixa.tipogerador='+#39+'MCHR'+#39+') AND (lancaixa.cod_gerador =:CODLANCA))');
          DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString:=DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
          DMCAIXA.TLanCaixa.Open;
          DMCAIXA.TLanCaixa.First;

          //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
          IF (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption) and (FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + CodFatura + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= false)
          THEN BEGIN //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
              LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fatura Venda. '+DMCAIXA.TLanCaixa.FieldByName('DOC').AsString+' Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TFATV', StrToInt(CodFatura), 'Carteira', 'S', 'EST'+DMCAIXA.TLanCaixa.FieldByName('DOC').AsString, Date(), '1');
          end;
          DMCAIXA.IBT.CommitRetaining;
          MDO.Transac.CommitRetaining;

          //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
          If DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption
          then begin
              while not DMCAIXA.TLanCaixa.Eof do
              begin
                DMCAIXA.TLanCaixa.Delete;
                DMCAIXA.TLanCaixa.ApplyUpdates;
              end;
          end;
          DMCAIXA.IBT.CommitRetaining;


          //apaga cheques ligados ao pedido de venda // - 06/05/2009: estava abaixo do codigo para deletar movimentações bancarias.. como deletava chegava nesse laço sem o codigo movbanco
          if not DMCAIXA.TAlx.IsEmpty
          then begin
            DMBANCO.TChequeRec.Close;
            DMBANCO.TChequeRec.SQL.Clear;
            DMBANCO.TChequeRec.SQL.Add('delete from chequerec where cod_movbanco= :CODIGO');
            DMBANCO.TChequeRec.ParamByName('CODIGO').AsString:=DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;
            DMBANCO.TChequeRec.ExecSQL;
            DMBANCO.IBT.CommitRetaining;

            DMBANCO.TChequeRec.Open;
            DMBANCO.TChequeRec.Close;
            DMBANCO.TChequeRec.SQL.Clear;
            DMBANCO.TChequeRec.SQL.Add('select * from chequerec');
            DMBANCO.TChequeRec.Open;
          end;


          //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em conta corrente
          If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCAIXA.TAlx.FieldByname('COD_CHEQUEREC').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= true
          Then Begin
            DMBANCO.TMovBanco.Delete;
            DMBANCO.TMovBanco.ApplyUpdates;
          End;
          DMBANCO.IBT.CommitRetaining;


          //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em caixa
          If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + CodFatura + #39 + ') AND (TIPOGERADOR = ' + #39 + 'FATURA' + #39 + ')')= true
          Then Begin
             DMBANCO.TMovBanco.Delete;
             DMBANCO.TMovBanco.ApplyUpdates;
          End;
          DMBANCO.IBT.CommitRetaining;


       end;

       // se o pagamento for a vista e a cartão, o registro do movbanco eh deletado
       If ((DMESTOQUE.Alx2.FieldByName('PGTO').AsString = 'Cartão') or (DMESTOQUE.Alx2.FieldByName('PGTO').AsString = 'Banco')) and (DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString = 'À VISTA')
       Then Begin
           If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + CodFatura + #39 + ') AND (TIPOGERADOR = ' + #39 + 'FATURA' + #39 + ')')= true
           Then Begin
               DMBANCO.TMovBanco.Delete;
               DMBANCO.TMovBanco.ApplyUpdates;
           End;
           DMBANCO.IBT.CommitRetaining;
       End;

   End
   Else Begin
        //SE A VENDA NÃO FOI À VISTA

        //FILTRA PARA VERIFICAR SE EXISTEM LANÇAMENTOS BANCARIOS COM FORMA DE COBRANÇA: CARTÃO
       if ((DMESTOQUE.Alx2.FieldByName('PGTO').AsString = 'Cartão') or (DMESTOQUE.Alx2.FieldByName('PGTO').AsString = 'Banco')) and (DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString <> 'À VISTA')
       then begin  
          If FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', '', ' (TIPOGERADOR = '+#39+'FATURA'+#39+') AND (COD_GERADOR='+CodFatura+')')=True
          Then Begin//se foi encontrado alguma conta
             //FILTRA PARCELAS
             If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_CTARECEBER', DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '')=True
             Then Begin//se foi encontrado alguma conta
                 //PARA CADA PARCELA VERIFICA SE ESTA FECHADA
                 DMCONTA.TParcCR.First;
                 While not DMCONTA.TParcCR.Eof do
                 Begin
                     If DMCONTA.TParcCR.FieldByName('FECH').AsString='S'
                     Then Begin
                         //SE ESTIVER FECHADA VERIFICA SE FOI REALIZADA MOVIMENTAÇÃO EM BANCO
                         If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (TIPOGERADOR='+#39+'CTRCARTAO'+#39+') AND (COD_GERADOR='+DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString+')')=True
                         Then //se foi encontrado alguma MOVIMENTAÇÃO REALIZA UM ESTORNO
                              LanBanco(DMBANCO.TMovBanco.FieldByName('COD_CTACOR').AsInteger, DMMACS.TLoja.FieldByName('PLNCTA_ENTCXCORR').AsInteger, 'Cancel. Fatura. PedV. '+DMESTOQUE.Alx2.FieldByName('NUMDOC').AsString+'Parc. '+ DMCONTA.TParcCR.FieldByName('NUMPARC').AsString+' For. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMBANCO.TMovBanco.FieldByName('valor').AsCurrency, 'TFATV', StrToInt(CodFatura), 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO', 'S', DateToStr(Date), '', DMBANCO.TMovBanco.FieldByName('DTLANC').AsString, '1', DMBANCO.TMovBanco.FieldByName('DTREF').AsString)
                         Else
                             Result:=False;
                         //SE ESTIVER FECHADA VERIFICA SE FOI REALIZADA MOVIMENTAÇÃO EM CX
                         If FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANCAIXA', '', ' (TIPOGERADOR='+#39+'CTAR'+#39+') AND (COD_GERADOR='+DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString+')')=True
                         Then Begin//se foi encontrado alguma MOVIMENTAÇÃO REALIZA UM ESTORNO
                             If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_ENTCXCORR').AsInteger, 'Cancel. Fatura. PedV. '+DMESTOQUE.Alx2.FieldByName('NUMDOC').AsString+'Parc. '+ DMCONTA.TParcCR.FieldByName('NUMPARC').AsString+' For. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TFATV', StrToInt(CodFatura), 'Carteira', 'S', 'EST'+DMCAIXA.TLanCaixa.FieldByName('DOC').AsString, Date(), '1')=True Then
                                 MDO.Transac.CommitRetaining
                                 //DMCAIXA.IBT.CommitRetaining
                             Else
                                 Result:=False;
                         End;
                         //SE ESTIVER FECHADA VERIFICA SE FOI REALIZADA MOVIMENTAÇÃO EM BANCO
                         If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (TIPOGERADOR='+#39+'CTAR'+#39+') AND (COD_GERADOR='+DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString+')')=True
                         Then begin
                             DMBANCO.TMovBanco.Delete;
                             DMBANCO.TMovBanco.ApplyUpdates;
                         end    
                         Else
                             Result:=False;
                     
                     End;

                     // apagando a movimentação bancaria de cartão por cancelar o pedido de compra
                     If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_GERADOR','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTRCARTAO' + #39 + ')')= TRUE
                     Then Begin
                         DMBANCO.TMovBanco.Delete;
                         DMBANCO.TMovBanco.ApplyUpdates;
                     End;

                     // apagando a movimentação bancaria de cheque por cancelar o pedido de compra
                     If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_GERADOR','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39 + ')')= TRUE
                     Then Begin
                         DMBANCO.TMovBanco.Delete;
                         DMBANCO.TMovBanco.ApplyUpdates;
                     End;

                     DMCONTA.TParcCR.Delete;

                 End;
                 DMCONTA.TParcCR.ApplyUpdates;
             End;
             DMCONTA.TCtaR.Delete;
             DMCONTA.TCtaR.ApplyUpdates;
             DMCONTA.IBT.CommitRetaining;
             DMBANCO.IBT.CommitRetaining;
          End;



       End;

       if DMESTOQUE.Alx2.FieldByName('PGTO').AsString  = 'Carteira'
       then begin
          //filtra cta receber para cancelamento de lançamentos em caixa
          FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', '', ' (TIPOGERADOR = '+#39+'FATURA'+#39+') AND (COD_GERADOR='+CodFatura+')');
          //filtra parcela para cancelamento de lançamentos em caixa e carteira
          FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_CTARECEBER', DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '');

          {IF FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', '','(lancaixa.tipogerador = '+#39+'CTAR'+#39+') AND (lancaixa.cod_gerador =' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39')')= true
          THEN BEGIN //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
               LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. Fatura Venda '+DMCAIXA.TLanCaixa.FieldByName('DOC').AsString+' Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TFATV', StrToInt(CodFatura), 'Carteira', 'S', 'EST'+DMCAIXA.TLanCaixa.FieldByName('DOC').AsString, Date(), '1');
          end;}
        end;
        //FILTRA CTA RECEBER PARA LOCALIZAR LANÇAMENTOS E APAGAR TODA A MOVIMENTAÇÃO DE CHEQUE E BANCO LIGADA A ELA

		 If FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', '', ' (TIPOGERADOR = '+#39+'FATURA'+#39+') AND (COD_GERADOR='+CodFatura+')')=True
        Then Begin//se foi encontrado alguma conta
        	//FILTRA PARCELAS
		 	If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_CTARECEBER', DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '')=True
        	Then Begin//se foi encontrado alguma conta
				//PARA CADA PARCELA VERIFICA SE ESTA FECHADA
               DMCONTA.TParcCR.First;
               While not DMCONTA.TParcCR.Eof do
               Begin
                  //quando é em carteira e naum em cheque gera erro.
                  //filtra movimentação bancaria da parcela em questão
                  if FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39' )') = true then
                  begin
                      //filtra cheque da parcela
                      FiltraTabela(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC', '', '(COD_MOVBANCO = ' + #39 + DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString + #39 +')');

                      //variável utilizada para apos apagar a movimentação bancaria sejam apagados os cheques ligados as parcelas
                      XCampo:=DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;

                      //filtra os lançamentos de caixa ligados a parcela
                      FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', '','(lancaixa.tipogerador='+#39+'LCHR'+#39+') or (lancaixa.tipogerador='+#39+'DCHR'+#39+') or (lancaixa.tipogerador='+#39+'MCHR'+#39+') AND (lancaixa.cod_gerador =' + #39 + DMBANCO.TChequeRec.FieldByname('COD_CHEQUEREC').AsString + #39')');

                      If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (TIPOGERADOR='+#39+'CTARCH'+#39+') AND (COD_GERADOR='+DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString+')')=True
                      Then Begin
                      //se o codigo de abertura do caixa atual for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
                      IF (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption) and (FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= false)
                      THEN BEGIN //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
                          LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. Fatura Venda '+DMCAIXA.TLanCaixa.FieldByName('DOC').AsString+' Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TFATV', StrToInt(CodFatura), 'Carteira', 'S', 'EST'+DMCAIXA.TLanCaixa.FieldByName('DOC').AsString, Date(), '1');
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
                      If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMBANCO.TChequeRec.FieldByname('COD_CHEQUEREC').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= true
                      Then Begin
                           DMBANCO.TMovBanco.Delete;
                           DMBANCO.TMovBanco.ApplyUpdates;
                      End;
                      DMBANCO.IBT.CommitRetaining;

                      //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em caixa
                      If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39 + ')')= true
                      Then Begin
                         DMBANCO.TMovBanco.Delete;
                         DMBANCO.TMovBanco.ApplyUpdates;
                      End;
                      DMBANCO.IBT.CommitRetaining;

                      If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CARTÃO' + #39 + ')')= true
                      Then Begin
                         DMBANCO.TMovBanco.Delete;
                         DMBANCO.TMovBanco.ApplyUpdates;
                      End;
                      DMBANCO.IBT.CommitRetaining;


                     //apaga cheques ligados ao pedido de venda
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

                  //remove todas as movimentações bancarias do codigo gerador de CTAR e CTARJ
                  DMBANCO.TAlx.Close;
                  DMBANCO.TAlx.SQL.Clear;
                  DMBANCO.TAlx.SQL.Add('delete from movbanco where movbanco.cod_gerador = :CODIGO and movbanco.TIPOGERADOR =' + #39 + 'CTAR' + #39 );
                  DMBANCO.TAlx.ParamByName('CODIGO').AsString := DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString;
                  DMBANCO.TAlx.ExecSQL;
                  DMBANCO.TAlx.Close;
                  DMBANCO.TAlx.SQL.Clear;
                  DMBANCO.TAlx.SQL.Add('delete from movbanco where movbanco.cod_gerador = :CODIGO and movbanco.TIPOGERADOR = ' + #39 + 'CTARJ' + #39 );
                  DMBANCO.TAlx.ParamByName('CODIGO').AsString := DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString;
                  DMBANCO.TAlx.ExecSQL;
                  DMBANCO.IBT.CommitRetaining;


                   DMCONTA.TParcCR.Delete;
                   DMCONTA.TParcCR.ApplyUpdates;

             End;
           End;
           DMCONTA.TCtaR.Delete;
           DMCONTA.TCtaR.ApplyUpdates;
           DMCONTA.IBT.CommitRetaining;
           DMFINANC.Transaction.CommitRetaining;
           DMCAIXA.IBT.CommitRetaining;
           Result := true;
        End;
   End;
end;

procedure TFFaturaPedidos.EdFiltraDataKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    //Paulo 18/05/2011: Filtra as fatura conforme  a data da fatura
    Try
		If Key=VK_RETURN
   	Then Begin
           Xdata:=StrToDate(EdFiltraData.Text);
           FiltraFatura('AND FATURA.DATA = :DATA');
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           LimpaCampos;
			FiltraFatura('');
       End;
   Except
   End;
end;

procedure TFFaturaPedidos.FiltraFatura(XSql: String);
begin
    //Paulo 19/05/2011: Filtra tabela de fatua conforme filtros
    DMENTRADA.TFatura.Close;
    DMENTRADA.TFatura.SQL.Clear;
    DMENTRADA.TFatura.SQL.Add('select * from fatura');
    DMENTRADA.TFatura.SQL.Add('where fatura.cancelado = '+#39+'N'+#39+'');
    DMENTRADA.TFatura.SQL.Add(XSql);
    if XTIPOAUX='CANCELAFATURA' then
       DMENTRADA.TFatura.SQL.Add('AND FATURA.TIPO = '+#39+'COMPRA'+#39+'');
    if XTIPOAUX='CANCELAFATURAVENDA' then
        DMENTRADA.TFatura.SQL.Add('AND FATURA.TIPO = '+#39+'VENDA'+#39+'');
    DMENTRADA.TFatura.SQL.Add('order by fatura.data descending');
    if Xdata <> 0 then
       DMENTRADA.TFatura.ParamByName('DATA').AsDate:= Xdata;
    DMENTRADA.TFatura.Open;   


end;


procedure TFFaturaPedidos.EdPedidoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    //Paulo 18/05/2011: Filtra as fatura conforme  o número do pedido
    Try
		If Key=VK_RETURN
   	Then Begin
           if XTIPOAUX='CANCELAFATURA' then
           begin
               FiltraTabela(DMENTRADA.TPedC,'PEDCOMPRA','NUMPED',EdPedido.Text,'');
               FiltraTabela(DMENTRADA.TPedFaturado,'PEDFATURADO','COD_PEDIDO',IntToStr(DMENTRADA.TPedC.FieldByName('COD_PEDCOMP').AsInteger),'');
           end
           else begin
               FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','NUMPED',EdPedido.Text,'');
               FiltraTabela(DMENTRADA.TPedFaturado,'PEDFATURADO','COD_PEDIDO',IntToStr(DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsInteger),'');
           end;
           FiltraFatura('AND FATURA.COD_FATURA = '+IntToStr(DMENTRADA.TPedFaturado.FieldByName('COD_FATURA').AsInteger));
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           LimpaCampos;
			FiltraFatura('');
       End;
   Except
   End;
end;

procedure TFFaturaPedidos.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   xtipo:String;  
begin
  inherited;
    //Paulo 18/05/2011: Filtra as fatura conforme  o nome do cliente
    Try
		If Key=VK_RETURN
   	Then Begin
           FiltraFatura('AND FATURA.NOMECLI like upper('+#39+'%'+EdNome.Text+'%'+#39+')');
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           LimpaCampos;
			FiltraFatura('');
       End;
   Except
   End;
end;

procedure TFFaturaPedidos.EdFiltraDataEnter(Sender: TObject);
begin
  inherited;
       EdFiltraData.Text:='  /  /    ';
end;

procedure TFFaturaPedidos.EdPedidoEnter(Sender: TObject);
begin
  inherited;
       EdPedido.Text:='';
end;

procedure TFFaturaPedidos.EdNomeEnter(Sender: TObject);
begin
  inherited;
       EdNome.Text:='';
end;

procedure TFFaturaPedidos.FrmFormPagFreteExit(Sender: TObject);
begin
  inherited;
  //FrmFormPagFrete.FrameExit(Sender);
       //Paulo 19/05/2011: Seleciona o plano de cta conforme a forma de pagamento
       if XTIPOAUX='FATPEDIDO' then
       begin
           If FrmFormPagFrete.EdDescricao.Text='À VISTA'
            Then Begin//como é uma venda a vista o sistema vai pegar a conta padrão para vendas a vista
               If DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString<>''
               Then Begin//se existir uma conta padrao configurada
                   XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
                   FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
                   FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                   FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               End
               Else Begin
                   FrmConta.EDCodigo.Text:='';
                   FrmConta.EdDescricao.Text:='';
               End;
            End
            Else Begin//como é uma venda a prazo, lançar em conta padrão para venda a prazo
               If DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsString<>''
               Then Begin//se existir uma conta padrao configurada
                   XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger;
                   FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
                   FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                   FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               End
               Else Begin
                   FrmConta.EDCodigo.Text:='';
                   FrmConta.EdDescricao.Text:='';
               End;
            End;
       end;
       if XTIPOAUX='FATPEDIDOC' then
       begin
           If FrmFormPagFrete.EdDescricao.Text='À VISTA'
            Then Begin//como é uma venda a vista o sistema vai pegar a conta padrão para vendas a vista
               If DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsString<>''
               Then Begin//se existir uma conta padrao configurada
                   XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsInteger;
                   FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
                   FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                   FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               End
               Else Begin
                   FrmConta.EDCodigo.Text:='';
                   FrmConta.EdDescricao.Text:='';
               End;
            End
            Else Begin//como é uma venda a prazo, lançar em conta padrão para venda a prazo
               If DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsString<>''
               Then Begin//se existir uma conta padrao configurada
                   XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsInteger;
                   FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
                   FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                   FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               End
               Else Begin
                   FrmConta.EDCodigo.Text:='';
                   FrmConta.EdDescricao.Text:='';
               End;
            End;
       end;

end;

end.


uses UDMEstoque;


uses UDMEstoque;


uses UDMEstoque;


uses UDMEstoque;
