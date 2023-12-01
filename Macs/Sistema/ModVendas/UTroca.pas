unit UTroca;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoRodaPe, TFlatHintUnit, Buttons, jpeg, ExtCtrls, StdCtrls, DBCtrls,
  Mask, ColorMaskEdit, Grids, DBGrids, FashionPanel, DBColorEdit,
  EditFloat, ColorEditFloat, TFlatEditUnit, TFlatButtonUnit, Menus, DrLabel;

type
  TFTroca = class(TFPadraoRodaPe)
    MEscolheProc: TPopupMenu;
    ControleInterno1: TMenuItem;
    CdFab1: TMenuItem;
    C1: TMenuItem;
    MEscolheProc2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Panel1: TPanel;
    BtnGravar: TBitBtn;
    PPedido: TPanel;
    Label10: TLabel;
    Label9: TLabel;
    LSelectPessoa: TLabel;
    Label24: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText1: TDBText;
    Shape6: TShape;
    Label35: TLabel;
    Shape7: TShape;
    Label7: TLabel;
    LVlrDevolvido: TLabel;
    Label5: TLabel;
    GroupBox5: TGroupBox;
    DBGrid1: TDBGrid;
    BtnDevolver: TBitBtn;
    BitBtn1: TBitBtn;
    PTroca: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    luzvendedor: TShape;
    luzformpag: TShape;
    Label6: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label23: TLabel;
    LVlrComissao: TLabel;
    Shape8: TShape;
    Label34: TLabel;
    DBNUMPED: TDBColorEdit;
    EdValorPed: TColorEditFloat;
    EdCodVend: TColorEditFloat;
    EDNOMEVENDEDOR: TColorEditFloat;
    BtnProcVend: TBitBtn;
    EDCODFORMPAG: TColorEditFloat;
    EDFORMPAG: TColorEditFloat;
    BtnProcFormPag: TBitBtn;
    DBDATA: TDBColorEdit;
    EDDescPed: TDBColorEdit;
    DBMemo2: TDBMemo;
    Panel4: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    LUZOPEN: TShape;
    EdCodCli: TEdit;
    EdCPF: TEdit;
    EdNomeCli: TEdit;
    BtnProcPess: TBitBtn;
    PPesCad: TPanel;
    DBCPF: TDBColorEdit;
    DBNomeCli: TDBColorEdit;
    Panel10: TPanel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    LEstoque2: TLabel;
    LSaldoEstoque2: TLabel;
    PCodComposto2: TPanel;
    Label58: TLabel;
    EdCodcomposto2: TColorMaskEdit;
    PCodInterno2: TPanel;
    Label60: TLabel;
    EdCodInterno2: TColorEditFloat;
    PCodFab2: TPanel;
    Label59: TLabel;
    EdCodFab2: TColorMaskEdit;
    BtnProcProd2: TBitBtn;
    EdCodBarra2: TEdit;
    BtnInserir: TBitBtn;
    BtnDelete: TBitBtn;
    Panel14: TPanel;
    Bevel2: TBevel;
    Label61: TLabel;
    LSimilar2: TLabel;
    LMarca2: TLabel;
    LLocal2: TLabel;
    EdQuantidade2: TColorEditFloat;
    EdValUnit2: TColorEditFloat;
    EDdesc2: TColorEditFloat;
    EdTotal2: TColorEditFloat;
    BtnEscolheProc2: TBitBtn;
    DBGrid2: TDBGrid;
    EdVlrSaldo: TColorEditFloat;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnDevolverClick(Sender: TObject);
    procedure BtnProcProdClick(Sender: TObject);
    procedure BtnProcProd2Click(Sender: TObject);
    procedure EdQuantidade2Exit(Sender: TObject);
    procedure EdValUnit2Enter(Sender: TObject);
    procedure EDdesc2KeyPress(Sender: TObject; var Key: Char);
    procedure BtnInserirClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnFechaClick(Sender: TObject);
    procedure EdValorPedKeyPress(Sender: TObject; var Key: Char);
    procedure EdValorPedExit(Sender: TObject);
    procedure EDDescPedExit(Sender: TObject);
    procedure EDDescPedKeyPress(Sender: TObject; var Key: Char);
    procedure EdTotal2Exit(Sender: TObject);
    procedure EdTotal2KeyPress(Sender: TObject; var Key: Char);
    procedure BtnProcPessClick(Sender: TObject);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodCliExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnProcFormPagClick(Sender: TObject);
    procedure EDCODFORMPAGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnProcVendClick(Sender: TObject);
    procedure EdCodVendKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel10Enter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel4Enter(Sender: TObject);
    procedure BtnEscolheProc2Click(Sender: TObject);
    procedure EdCodInterno2Exit(Sender: TObject);
    procedure EdCodFab2Exit(Sender: TObject);
    procedure EdCodInterno2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodcomposto2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodFab2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
	//Filtra Tabela Slave e calcula total
	Procedure FiltraSlave;
   //INSERE NOVO PEDIDO
   Procedure INSERPED;
	//Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
	Procedure EscreveLabels(TIPO:INTEGER);
   //FUNÇÃO QUE EFETUA CALCULO DE COMISSÃO BASEADO NO VALOR TOTAL DO PEDIDO E NÃO NA SOMA DO TOTAL DE PRODUTOS
   Function CalcComisTotVend: Boolean;
	//Limpa as labels de seleção de produto
	Procedure LimpaLabels;

  public
    { Public declarations }
  end;

var
  FTroca: TFTroca;
  XCodPedido: String;//Armazena o codigo de pedido para que ele possa ser fechado automaticamente
  XCODPESSOA: Integer;//Armazena código de pessoa
  xcodvendedor: Integer;//Armazena código do vendedor
  xcodformpag: Integer;//Armazena código da forma de pagamento
  XVLRTROCA: Real; //Armazena o Valor de Crédito que o cliente passa a possuir qdo troca ou devolve um produto
  XVLRTROCAANT: Real;// Armazena o Vlr de de produtos devolvidos em outros momentos, mas para o mesmo produto em troca
  XVLRCOMIS: REAL;// Armazena o Vlr da Comissão que o vendedor receberá no pedido
  XEMTROCA:BOOLEAN;//Guarda a informação se o sistema já esta em modo de troca ou apenas leitura e devolução
  XCodSlave: Integer;//Armazena o codigo pk da tabela escarva
  XCODCONTA: INTEGER;
  XCODPRODEMTRC: String;//Armazena o codigo da tabela itenspedven prara não perder o registro em troca
  XVLRTOTAL: Real;//Acumula o vlr total do pedido
  XCODPEDEMTROCA: String;//Armazena o codigo do pedido que originou a troca
implementation

uses UDMSaida, UDMPessoa, UPedVenda, Alxor32, UDMMacs, AlxMessage,
  UDMEstoque, UMenu, UDMEntrada, UProduto, UFuncionario, UDMConta, UCliente,
  UDMFinanc, UFormPag;

{$R *.DFM}


//Limpa as labels de seleção de produto
Procedure TFTroca.LimpaLabels;
Begin
   EDCodBarra2.Text:='';
   EDCodInterno2.Text:='';
   EDCodComposto2.Text:='';
   EDQuantidade2.Text:='';
   EDValUnit2.Text:='';
   EDDesc2.Text:='';
   EDTotal2.Text:='';
   LEstoque2.Caption:='';
   LSaldoEstoque2.Caption:='';
   LSimilar2.Caption:='';
   LMarca2.Caption:='';
End;

//FUNÇÃO QUE EFETUA CALCULO DE COMISSÃO BASEADO NO VALOR TOTAL DO PEDIDO E NÃO NA SOMA DO TOTAL DE PRODUTOS
Function TFTroca.CalcComisTotVend: Boolean;
Begin
	If XVLRTOTAL>0
   Then Begin
   	If FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', IntToStr(XCodVendedor), '')=True
   	Then Begin
   		Try
       		DMPESSOA.TFunCargo.Last;
       		//efetua cargo em cima da forma de pagamentio
       		If EDFORMPAG.Text='À VISTA' Then
       			XVLRCOMIS:=(EdValorPed.ValueNumeric*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency)/100
       		Else
       			XVLRCOMIS:=(EdValorPed.ValueNumeric*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100
       	Except
				Mensagem('A T E N Ç Ã O', 'OCORREU UM PROBLEMA AO GERAR COMISSÃO. GUARDE O NUMERO DO PEDIDO E INFORME O OCORRIDO À ASSESSORIA TÉCNICA!', 'O vendedor informado no pedido não foi encontrado em banco de dados, desta forma não pode-se saber sua comissão. Esta será gravada com valor nulo, este ocorrido deve ser informado ao suporte técnico, para ser prontamente corrigido.', 1, 1, True, 'a');
      			XVLRCOMIS:=0;
       	End;
   	End
   	Else Begin
			Mensagem('A T E N Ç Ã O', 'OCORREU UM PROBLEMA AO GERAR COMISSÃO. GUARDE O NUMERO DO PEDIDO E INFORME O OCORRIDO À ASSESSORIA TÉCNICA!', 'O vendedor informado no pedido não foi encontrado em banco de dados, desta forma não pode-se saber sua comissão. Esta será gravada com valor nulo, este ocorrido deve ser informado ao suporte técnico, para ser prontamente corrigido.', 1, 1, True, 'a');
  			XVLRCOMIS:=0;
   	End;
		LVlrComissao.Caption:='Vlr. Comissão..: '+FormatFloat('###,##0.00', XVLRCOMIS);
   End
   Else Begin
       XVLRCOMIS:=0;
		LVlrComissao.Caption:='Vlr. Comissão..: 0,00';
   End;
End;

//Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
Procedure TFTROCA.EscreveLabels;
Begin
	//Filtra tabela de subproduto de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '')=False Then
		Exit;

   //Filtra tabela de produto de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TProduto, 'PRODUTO', 'COD_PRODUTO', DMEstoque.WSimilar.FieldByName('COD_PRODUTO').AsString, '')=False Then
   	Exit;

   //Filtra tabela de estoque de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString, '')=False Then
   	Exit;

  	LSimilar2.Caption:=DMEstoque.TSubProd.FieldByName('DESCRICAO').AsString;
  	LMarca2.Caption:=DMEstoque.TSubProd.FieldByName('Marca').asstring;
  	LLocal2.Caption:=DMEstoque.TSubProd.FieldByName('LOCALESTANTE').asstring;
  	LEstoque2.Caption:=FormatFloat('#,###0.000', DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency);
  	LSaldoEstoque2.Caption:=FormatFloat('#,###0.000', DMEstoque.TEstoque.FieldByName('ESTSALDO').AsCurrency);
  	EDQuantidade2.ValueNumeric:=1;
End;

//INSERE NOVO PEDIDO
Procedure TFTroca.INSERPED;
Begin
   XCodPedido:=IntToStr(InserReg(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA'));
   DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString:=XCodPedido;
   XCodPedido:=DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString;
   DMSAIDA.TPedV.FieldByName('TIPO').AsString:=DMSAIDA.WPedV.FieldByNAme('NUMPED').AsString;

	//filtra tabela de empresa
	If FiltraTabela(DMMacs.TEmpresa,  'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '') = True
   Then Begin//se localizou a empresa
   	If DMMacs.TEmpresa.FieldByName('PROXPEDVEND').AsString='' Then
           DMSAIDA.TPedV.FieldByName('NUMPED').AsString:='1'
   	Else
           DMSAIDA.TPedV.FieldByName('NUMPED').AsString:=DMMacs.TEmpresa.FieldByName('PROXPEDVEND').AsString;

   	DMSAIDA.TPedV.FieldByName('DTPEDVEN').AsDateTime:=DATE();
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
   End
   Else Begin
       Close;
   	Exit;
   End;

   //Seleciona somente os registros corretos
   FiltraSlave;
   PPesCad.Visible:=False;
   DBNumPed.SetFocus;
End;

//Filtra Tabela Slave e calcula total
Procedure TFTROCA.FiltraSlave;
Begin
	//Calcula Total de produtos devolvidos
	DMESTOQUE.Alx.Close;
	DMESTOQUE.Alx.SQL.Clear;
	DMESTOQUE.Alx.SQL.Add('Select Sum(itenspedven.valortotal) AS TOTDVL From itenspedven');
	DMESTOQUE.Alx.SQL.Add('Where (itenspedven.cod_pedven = :CODPEDVENDA) AND (ItensPedVen.OPERACAO='+#39+'DVL'+#39+')');
	DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsString:=XCODPEDEMTROCA;
	DMESTOQUE.Alx.Open;
   XVLRTROCA:=DMESTOQUE.Alx.FieldByName('TOTDVL').AsCurrency-XVLRTROCAANT;

	//COMANDO PARA PEDIDO
   //INSERE COMANDOS PARA FILTRAR
   DMESTOQUE.Alx.Close;
	DMESTOQUE.Alx.SQL.Clear;
	DMESTOQUE.Alx.SQL.Add('Select itenspedven.cod_itenspedven, itenspedven.cod_pedven, itenspedven.cod_estoque,  itenspedven.qtdeprod, ItensPedVen.ValorTotal, ');
   DMESTOQUE.Alx.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
	DMESTOQUE.Alx.SQL.Add('itenspedven.descpro, itenspedven.cod_funcionario, pessoa.nome, itenspedven.valunit, subproduto.descricao, subproduto.marca, subproduto.CONTRINT, itenspedven.data, itenspedven.operacao ');
	DMESTOQUE.Alx.SQL.Add('From itenspedven left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
	DMESTOQUE.Alx.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
	DMESTOQUE.Alx.SQL.Add('Left Join funcionario on funcionario.cod_func = itenspedven.cod_funcionario ');
	DMESTOQUE.Alx.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
	DMESTOQUE.Alx.SQL.Add('Where itenspedven.cod_pedven = :CODPEDVENDA ');
	DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsString:=XCODPEDEMTROCA;
	DMESTOQUE.Alx.Open;

	//COMANDOS PARA TROCA
	//INSERE COMANDOS PARA FILTRAR
	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select Sum(itenspedven.valortotal) as VALORTOTAL, SUM(itenspedven.qtdeprod) AS QTD, SUM(itenspedven.comissao) AS COMISSAO  From itenspedven');
	DMESTOQUE.TSlave.SQL.Add('Where (itenspedven.cod_pedven = :CODPEDVENDA)');
	DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsString:=XCodPedido;
	DMESTOQUE.TSlave.Open;

 	//ATRIBUI TOTAL VENDIDO SEM DESCONTO À VARIAVEL
   XVLRTOTAL:=DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency;
   //Passa vlr de crédito do cliente
   EdVlrSaldo.ValueNumeric:= XVLRTROCA-XVLRTOTAL;
   //Se houver algum desconto dados deve ser repassado ao total
   If (DMSAIDA.TPedV.FieldByName('DESCONTO').AsCurrency<>0) And (XVLRTOTAL<>0)
   Then Begin
		CalcPercent(StrToFloat(EDDescPed.text) , XVLRTOTAL, XVLRTOTAL, 'D');
   	EdValorPed.ValueNumeric:=AlxCalculo;
       CalcComisTotVend;
   End
   Else Begin
   	EdValorPed.ValueNumeric:=XVLRTOTAL;
       CalcComisTotVend;
   End;

   //INSERE COMANDOS PARA FILTRAR
   DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select itenspedven.cod_itenspedven, itenspedven.cod_pedven, itenspedven.cod_estoque,  itenspedven.qtdeprod, ItensPedVen.ValorTotal, ItensPedVen.COMISSAO, ');
   DMESTOQUE.TSlave.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
	DMESTOQUE.TSlave.SQL.Add('itenspedven.descpro, itenspedven.cod_funcionario, pessoa.nome, itenspedven.valunit, subproduto.descricao, subproduto.CONTRINT, subproduto.marca, itenspedven.data, itenspedven.operacao ');
	DMESTOQUE.TSlave.SQL.Add('From itenspedven left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
	DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
	DMESTOQUE.TSlave.SQL.Add('Left Join funcionario on funcionario.cod_func = itenspedven.cod_funcionario ');
	DMESTOQUE.TSlave.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
	DMESTOQUE.TSlave.SQL.Add('Where itenspedven.cod_pedven = :CODPEDVENDA ');
	DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsString:=XCodPedido;
	DMESTOQUE.TSlave.Open;
End;

procedure TFTroca.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Licitação' ;  
   // SE O USUÁRIO POSSUI DIREITO À ALTERAR O VLR TOTAL DO PEDIDO OS CAMPO QUE DÃO ESTA POSSIBILIDADE SÃO LIBERADOS CASO CONTRARIO NÃO
   If ControlAccess('DESCPED', '')=False
   Then Begin
		EdValorPed.ReadOnly:=True;
       EDDescPed.ReadOnly:=True;
   End
   Else Begin
		EdValorPed.ReadOnly:=False;
       EDDescPed.ReadOnly:=False;
   end;
   XCODPEDEMTROCA:=FMenu.TIPOAUX;
   FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'COD_PEDVENDA', XCODPEDEMTROCA, '');
   If (DMSAIDA.WPedV.FieldByName('SITUACAO').AsString='FECHADO') AND (DMSAIDA.WPedV.FieldByName('FORMPAG').AsString<>'CADERNETA')
   Then Begin
	   inherited;
      XEMTROCA:=False;
	   If FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsString, '')=False Then
    		Exit;//Caso não encontrar cancelar

	   //Filtra tabela de pedido de acordo com o registro selecionado na view
     //cliente
     If DMSAIDA.TPedV.FieldByName('COD_CLIENTE').AsString<>DMMACS.TLoja.FieldByName('COD_CONSUMIDOR').AsString
     Then Begin//Se foi informado um cliente cadastrado vai buscar na tabela
     	SelectRegistro('VWCLIENTE', 'COD_CLIENTE', DMSAIDA.TPedV.FieldByName('COD_CLIENTE').AsString);
		XCodPessoa:=DMMACS.TSelect.FieldByName('COD_CLIENTE').AsInteger;
  		EdCodCli.Text:=DMMACS.TSELECT.FieldByName('COD_INTERNO').AsString;
       EdNomeCli.Text:=DMMACS.TSELECT.FieldByName('NOME').AsString;
	    EdCPF.Text:=DMMACS.TSELECT.FieldByName('CPFCNPJ').AsString;
       PPesCad.Visible:=False;
     End
     Else Begin //se o cliente foi cadastrado na hora
		XCodPessoa:=DMSAIDA.TPedV.FieldByName('COD_CLIENTE').AsInteger;
       EdNomeCli.Text:=DMSAIDA.TPedV.FieldByName('NOMECLI').AsString;
	    EdCPF.Text:=DMSAIDA.TPedV.FieldByName('CPFCNPJ').AsString;
	    PPesCad.Visible:=True;
       PPesCad.BringToFront;
     End;
     //vendedor
     SelectRegistro('VWFUNCIONARIO', 'COD_FUNC', DMSAIDA.TPedV.FieldByName('COD_VENDEDOR').AsString);
	  XCodVendedor:=DMMACS.TSelect.FieldByName('COD_FUNC').AsInteger;
	  EdCodVend.Text:=DMMACS.TSelect.FieldByName('COD_INTERNO').AsString;
	  EDNOMEVENDEDOR.Text:=DMMACS.TSelect.FieldByName('NOME').AsString;

     //Calcula Total de produtos devolvidos
	  DMESTOQUE.Alx.Close;
	  DMESTOQUE.Alx.SQL.Clear;
	  DMESTOQUE.Alx.SQL.Add('Select Sum(itenspedven.valortotal) AS TOTDVL From itenspedven');
	  DMESTOQUE.Alx.SQL.Add('Where (itenspedven.cod_pedven = :CODPEDVENDA) AND (ItensPedVen.OPERACAO='+#39+'DVL'+#39+')');
	  DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsString:=XCODPEDEMTROCA;
	  DMESTOQUE.Alx.Open;
     //caso o pedido apresente produtos devolvidos anteriormente
     //é necessário desconciderar o vlr deles para esta troca
     XVLRTROCAANT:=DMESTOQUE.Alx.FieldByName('TOTDVL').AsCurrency;
	  //seleciona items do pedido
     FiltraSlave;
     //Informa outros valores
     EdValorPed.Text:=DMSAIDA.TPedV.FieldByName('VALOR').AsString;

     //FORMA DE PAGAMENTO
     SelectRegistro('FORMPAG', 'COD_FORMPAG', DMSAIDA.TPedV.FieldByName('COD_FORMPAG').AsString);
	  XCodFormPag:=DMMACS.TSelect.FieldByName('COD_FORMPAG').AsInteger;
     EDCODFORMPAG.Text:=DMMACS.TSelect.FieldByName('COD_FORMPAG').AsString;
     EDFORMPAG.Text:=DMMACS.TSelect.FieldByName('DESCRICAO').AsString;

   End
   Else Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não é possível Consultar/Alterar este pedido, por já se encontrar fechado!', '', 1, 1, False, 'a');
   End;
end;

procedure TFTroca.BitBtn2Click(Sender: TObject);
VAR
	XCODLANEST:INTEGER;
begin
  inherited;
   If DMESTOQUE.TSlave.RecordCount<>0
   Then Begin//caso a tabela esteja vasia não pode apagar
		If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente devolver o produto selecionado?' , '', 3, 3, False, 'c')= 2
   	Then Begin
			Exit;
       End;
	  	//LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
	  	//LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
		FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
		FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
       FiltraTabela(DMSAIDA.TItemPV, 'ITENSPEDVEN', 'COD_ITENSPEDVEN', DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDVEN').AsString, '');
       DMSAIDA.TItemPV.Edit;
       DMSAIDA.TItemPV.FieldByName('OPERACAO').AsString:='TRC';
       DMSAIDA.TItemPV.FieldByName('LUCPER').AsCurrency:=0;
       DMSAIDA.TItemPV.FieldByName('VALCOMP').AsCurrency:=0;
       DMSAIDA.TItemPV.FieldByName('COEFDIV').AsCurrency:=0;
       DMSAIDA.TItemPV.FieldByName('VALREP').AsCurrency:=0;
       DMSAIDA.TItemPV.FieldByName('DESCPRO').AsCurrency:=0;
       DMSAIDA.TItemPV.FieldByName('LUCMOE').AsCurrency:=0;
       DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency:=0;
       DMSAIDA.TItemPV.FieldByName('VALUNIT').AsCurrency:=0;
       DMSAIDA.TItemPV.FieldByName('VALCUSTO').AsCurrency:=0;
       DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency:=0;
       DMSAIDA.TItemPV.Post;
       XCODLANEST:=InserReg(DMENTRADA.TLancENT, 'LANCENT', 'COD_LANENT');
       DMENTRADA.TLancENT.FieldByName('COD_LANENT').AsInteger:=XCODLANEST;
       DMENTRADA.TLancENT.FieldByName('COD_ESTOQUE').AsString:=DMESTOQUE.Testoque.FieldByName('COD_ESTOQUE').AsString;
       DMENTRADA.TLancENT.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
       DMENTRADA.TLancENT.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
       DMENTRADA.TLancENT.FieldByName('NUMNOTA').AsString:='TRC-'+DBNumPed.Text;
       DMENTRADA.TLancENT.FieldByName('MOTIVO').AsString:='Troca ref. Pedido: '+DBNumPed.Text+'/Cliente: '+DMSAIDA.TPedV.FieldByName('NOMECLI').AsString;
       DMENTRADA.TLancENT.FieldByName('DT_LANCAMENTO').AsString:=DateToStr(Date());
       DMENTRADA.TLancENT.FieldByName('DT_ESTOQUE').AsString:=DateToStr(Date());
       DMENTRADA.TLancENT.FieldByName('QUANTIDADE').AsString:=DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsString;
       DMENTRADA.TLancENT.FieldByName('QTDANT').AsString:=DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsString;
       DMENTRADA.TLancEnt.POST;
       DMENTRADA.IBT.CommitRetaining;
       DMSAIDA.IBT.CommitRetaining;
       FiltraSlave;
   End;
end;

procedure TFTroca.BtnDevolverClick(Sender: TObject);
VAR
	XCODLANEST:INTEGER;
begin
  inherited;
	If DMESTOQUE.Alx.FieldByName('OPERACAO').AsString='DVL'
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA!', 'Este produto já foi devolvido!', '', 1, 1, False, 'a');
		Exit;
   End;
   If (DMESTOQUE.Alx.RecordCount<>0) AND (DMESTOQUE.Alx.FieldByName('OPERACAO').AsString<>'DVL')
   Then Begin//caso a tabela esteja vasia não pode apagar
		If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente devolver o produto selecionado?' , '', 2, 3, False, 'c')= 3
   	Then Begin
			Exit;
       End;
	  	//LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
		FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.ALX.FieldByName('COD_ESTOQUE').AsString, '');
		FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.ALX.FieldByName('COD_ESTOQUE').AsString, '');
       FiltraTabela(DMSAIDA.TItemPV, 'ITENSPEDVEN', 'COD_ITENSPEDVEN', DMESTOQUE.ALX.FieldByName('COD_ITENSPEDVEN').AsString, '');
       DMSAIDA.TItemPV.Edit;
//       XVLRTROCA:=XVLRTROCA+DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency;
       DMSAIDA.TItemPV.FieldByName('OPERACAO').AsString:='DVL';
       DMSAIDA.TItemPV.FieldByName('DTTROCA').AsString:=DateToStr(Date());
       //DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency:=0;
       DMSAIDA.TItemPV.Post;
       XCODLANEST:=InserReg(DMENTRADA.TLancENT, 'LANCENT', 'COD_LANENT');
       DMENTRADA.TLancENT.FieldByName('COD_LANENT').AsInteger:=XCODLANEST;
       DMENTRADA.TLancENT.FieldByName('COD_ESTOQUE').AsString:=DMESTOQUE.Testoque.FieldByName('COD_ESTOQUE').AsString;
       DMENTRADA.TLancENT.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
       DMENTRADA.TLancENT.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
       DMENTRADA.TLancENT.FieldByName('NUMNOTA').AsString:='DVL-'+DBNumPed.Text;
       DMENTRADA.TLancENT.FieldByName('MOTIVO').AsString:='Devolução ref. Pedido: '+DBNumPed.Text+'/Cliente: '+DMSAIDA.TPedV.FieldByName('NOMECLI').AsString;
       DMENTRADA.TLancENT.FieldByName('DT_LANCAMENTO').AsString:=DateToStr(Date());
       DMENTRADA.TLancENT.FieldByName('DT_ESTOQUE').AsString:=DateToStr(Date());
       DMENTRADA.TLancENT.FieldByName('QUANTIDADE').AsString:=DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsString;
       DMENTRADA.TLancENT.FieldByName('QTDANT').AsString:=DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsString;
       DMENTRADA.TLancEnt.POST;
       DMENTRADA.IBT.CommitRetaining;
       DMSAIDA.IBT.CommitRetaining;
       FiltraSlave;
       LVlrDevolvido.Caption:=FormatFloat('0.00', XVLRTROCA);
   End;
end;

procedure TFTroca.BtnProcProdClick(Sender: TObject);
begin
  inherited;
  	//abre formulario de produto para seleção
	If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
		EscreveLabels(1);
   End
   Else Begin
   End;
end;

procedure TFTroca.BtnProcProd2Click(Sender: TObject);
begin
  inherited;
  	//abre formulario de produto para seleção
	If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
		EscreveLabels(2);
   End
   Else Begin
   End;

end;

procedure TFTroca.EdQuantidade2Exit(Sender: TObject);
begin
  inherited;
	If (EDQuantidade2.ValueNumeric<>0) And (EDValUnit2.ValueNumeric<>0)
   Then Begin
		CalcPercent(EDDesc2.ValueNumeric, 0, (EDQuantidade2.ValueNumeric*EDValUnit2.ValueNumeric), 'D');
	    EDTotal2.ValueNumeric:=AlxCalculo;
   End;
end;

procedure TFTroca.EdValUnit2Enter(Sender: TObject);
begin
  inherited;
	FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsString, '');
   //Insere Valor Unitário
   If (EDQuantidade2.ValueNumeric>=DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) and (DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency<>0)
   Then Begin//caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
   	If EDFORMPAG.Text='À VISTA'
       Then Begin //A venda esta sendo a vista então o preço de venda deve ser no atacado a vista
       	EDValUnit2.ValueNumeric:=DMEstoque.TEstoque.FieldByName('VENDATAV').AsCurrency;
       End
       Else Begin //A venda esta sendo a prazo então o preço de venda deve ser no atacado a prazo
       	EDValUnit2.ValueNumeric:=DMEstoque.TEstoque.FieldByName('VENDATAP').AsCurrency;
       End;
   End
   Else Begin//caso ocorra esta condição significa que o produto esta com quantidade igual varejo e deve ser vendido em preço de varejo
   	If EDFORMPAG.Text='À VISTA'
       Then Begin //A venda esta sendo a vista então o preço de venda deve ser no Varejo a vista
       	EDValUnit2.ValueNumeric:=DMEstoque.WSimilar.FieldByName('VENDVARV').AsCurrency;
       End
       Else Begin //A venda esta sendo a prazo então o preço de venda deve ser no Varejo a prazo
       	EDValUnit2.ValueNumeric:=DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency;
       End;
   End;
   EDValUnit2.SetFocus;
end;

procedure TFTroca.EDdesc2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('DESCPROD', '')=False Then
  		Key:=#0;
end;

procedure TFTroca.BtnInserirClick(Sender: TObject);
begin
  inherited;
	//Valida se foi encontrado algum produto
   If (LSimilar2.Caption='') or (LSimilar2.Caption='PRODUTO NÃO ENCONTRADO')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Não existe produto a ser adicionado a lista de itens do pedido.', '', 1, 1, False, 'a');
		BtnProcProd2.SetFocus;
	    Exit;
   End;

   //Valida quanto a quantidade
   If EDQuantidade2.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com quantidade inferior a 1.', '', 1, 1, False, 'a');
		EDQuantidade2.SetFocus;
	    Exit;
   End;

   //Valida quanto ao valor unitario do produto
   If EDValUnit2.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com o valor unitario igual ou inferiro a 0.', '', 1, 1, False, 'a');
		EDValUnit2.SetFocus;
	    Exit;
   End;

   //Valida quanto ao valor total do produto
   If EDTotal2.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com o valor total igual ou inferiro a 0.', '', 1, 1, False, 'a');
		EDTotal2.SetFocus;
	    Exit;
   End;

   //Valida quanto ao estoque físico (veirifca se ha estoque suficiente
   If DMMacs.TLoja.FieldByName('ATUAESTOQUE').AsString='1'
   Then Begin //se o estoque deve ser atualizado no pedido executa procedimento
       If DMMacs.TLoja.FieldByName('VENDESTNEG').AsString='0'
       Then Begin
           If LEstoque2.Caption<>''
           Then Begin
               If EDQuantidade2.ValueNumeric>StrToFloat(TiraPonto(LEstoque2.caption))
               Then Begin//o estoque que esta sendo negociado é maior que o estoque físico e segundo configuraçãoes isto não é permitido
                   Mensagem('OPÇÃO BLOQUEADA', 'Não existe estoque suficiente para suportar esta operação', '', 1, 1, False, 'a');
                   EDQuantidade2.SetFocus;
                   Exit;
               End;
           End
           Else Begin
               Mensagem('OPÇÃO BLOQUEADA', 'Não existe estoque suficiente para suportar esta operação', '', 1, 1, False, 'a');
               EDQuantidade2.SetFocus;
               Exit;
           End;
       End;
   End;
   //Inserir Produto a lista do pedido
   XCodSlave:=InserReg(DMSAIDA.TItemPV, 'ITENSPEDVEN', 'COD_ITENSPEDVEN');
   DMSAIDA.TItemPV.FieldByName('COD_ITENSPEDVEN').AsInteger:=XCodSlave;
   DMSAIDA.TItemPV.FieldByName('COD_PEDVEN').AsInteger:=StrToInt(XCodPedido);
   DMSAIDA.TItemPV.FieldByName('COD_FUNCIONARIO').AsInteger:=xcodvendedor;
   DMSAIDA.TItemPV.FieldByName('DATA').AsString:=DateToStr(Date());
   DMSAIDA.TItemPV.FieldByName('OPERACAO').AsString:='TRC';
   DMSAIDA.TItemPV.FieldByName('DTTROCA').AsString:=DateToStr(Date());
   DMSAIDA.TItemPV.FieldByName('VALCUSTO').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALCUSTO').Value;
   DMSAIDA.TItemPV.FieldByName('VALREP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALREP').Value;
   DMSAIDA.TItemPV.FieldByName('COEFDIV').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('COEFDIV').Value;
   DMSAIDA.TItemPV.FieldByName('VALCOMP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').Value;
   CalcLuc(EDTotal2.ValueNumeric, EDDesc2.ValueNumeric, EDQuantidade2.ValueNumeric);
   DMSAIDA.TItemPV.FieldByName('LUCMOE').AsCurrency:=AlxLUCMOE;
   DMSAIDA.TItemPV.FieldByName('LUCPER').AsCurrency:=AlxLUCPER;
	DMSAIDA.TItemPV.Post;
   Try
       //FILTRA VENDEDOR PARA CALCULAR A COMISSAO DO VENDEDOR
       If FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', '', ' COD_FUNCIONARIO = '+#39+INTTOSTR(XCodVendedor)+#39+' ORDER BY COD_FUNCARGO')=True
       Then Begin
           DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO
           If EDFORMPAG.Text='À VISTA'
           Then Begin         //1300*4.5/100
               //FORMA DE PAGAMENTO À VISTA É CALCULA COMISSÃO REFERENTE A VISTA
               DMSAIDA.TItemPV.Edit;
               DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency:=(EDTotal2.ValueNumeric*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency)/100;
				DMSAIDA.TItemPV.Post;
           End
           Else Begin
               //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
				DMSAIDA.TItemPV.Edit;
               DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency:=(EDTotal2.ValueNumeric*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
               DMSAIDA.TItemPV.Post;
           End;
       End
   Except
   	DMSAIDA.TItemPV.edit;
       DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency:=0;
       DMSAIDA.TItemPV.Post;
   End;
   DMSAIDA.TItemPV.edit;
   DMSAIDA.TItemPV.FieldByName('COD_ESTOQUE').AsInteger:=DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
	DMSAIDA.TItemPV.FieldByName('QTDEPROD').Value:=EDQuantidade2.ValueNumeric;
	DMSAIDA.TItemPV.FieldByName('DESCPRO').Value:=EDDesc2.ValueNumeric;
	DMSAIDA.TItemPV.FieldByName('VALUNIT').Value:=EDValUnit2.ValueNumeric;
	DMSAIDA.TItemPV.FieldByName('VALORTOTAL').Value:=EDTotal2.ValueNumeric;
   DMSAIDA.TItemPV.post;

   //Tenta gravar as informações
   Try
       //Atualiza Estoque
       DMEstoque.TEstoque.edit;
       	If DMMacs.TLoja.FieldByName('ATUAESTOQUE').AsString='1'
           Then Begin //se o estoque deve ser atualizado no pedido executa procedimento
               //informa que o registro atualizou estoque
               DMSAIDA.TItemPV.edit;
               DMSAIDA.TItemPV.FieldByName('ATUEST').AsString:='1';
               DMSAIDA.TItemPV.post;
               DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
               //Atualiza data da ultima venda
               DMESTOQUE.TEstoque.Edit;
               DMEstoque.TEstoque.FieldByName('ULTVENDA').AsString:=DateToStr(Date());
               DMESTOQUE.TEstoque.Post;
               DMESTOQUE.TransacEstoque.CommitRetaining;
			    //ATUALIZA CUSTO DE ESTOQUE
			    DMESTOQUE.CalcCustMed(DMESTOQUE.TEstoque.FieldByNAme('COD_ESTOQUE').AsInteger, 'S', DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency, DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency*DMSAIDA.TItemPV.FieldByName('VALUNIT').AsCurrency);
           End
           Else Begin
           	//atualiza estoque reservado e saldo
               If DMEstoque.TEstoque.FieldByName('ESTRESERV').AsString='' Then
               	DMEstoque.TEstoque.FieldByName('ESTRESERV').Value:=EDQuantidade2.ValueNumeric
               Else
		           	DMEstoque.TEstoque.FieldByName('ESTRESERV').Value:=DMEstoque.TEstoque.FieldByName('ESTRESERV').Value+EDQuantidade2.ValueNumeric;
				//informa que o registro não atualizou estoque
				DMSAIDA.TItemPV.edit;
               DMSAIDA.TItemPV.FieldByName('ATUEST').AsString:='0';
               DMSAIDA.TItemPV.post;
           End;
           DMEstoque.TEstoque.edit;
           DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
           DMEstoque.TEstoque.post;
       //Atualiza saldo de estoque
		DMSAIDA.IBT.CommitRetaining;
       DMESTOQUE.TransacEstoque.CommitRetaining;

	    //VERIFICA QUAL COMPONENETE DEVE RECEBER O FOCUS
	    IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'BP' THEN
       	BtnProcProd2.SetFocus;
	    IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'CB' THEN
	  		EDCodBarra2.SetFocus;
	    IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'CA'
	    THEN BEGIN//Caso o focus deve cair sobre um código auxiliar. verificar qual o código em Questão
	  		IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CI'
	        THEN Begin
	        	Try
                   PCodInterno2.Visible:=True;
                   PCodInterno2.BringToFront;
                   EDCodInterno2.Text:='';
		           	EDCodInterno2.SetFocus;
	            Except
	            End;
	        End;
			IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CC'
	        THEN Begin
		       	Try
                   PCodComposto2.Visible:=True;
                   PCodComposto2.BringToFront;
                   EDCodComposto2.Text:='';
		           	EDCodComposto2.SetFocus;
	            Except
	            End;
			End;
			IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF'
	        THEN Begin
		       	Try
                   PCodFab2.Visible:=True;
                   PCodFab2.BringToFront;
                   EDCodFab2.Text:='';
		           	EDCodFab2.SetFocus;
	            Except
		        End;
			End;
	    END;
   Except
		DMSAIDA.IBT.RollbackRetaining;
       DMESTOQUE.TransacEstoque.RollbackRetaining;
   	DMSAIDA.TItemPV.CancelUpdates;
   End;
   //Filtra slaves e calcula total
   FiltraSlave;
end;

procedure TFTroca.MenuItem1Click(Sender: TObject);
begin
  inherited;
   PCodInterno2.Visible:=True;
   PCodInterno2.BringToFront;
   PCodInterno2.Enabled:=True;
   EDCodInterno2.SetFocus;
end;

procedure TFTroca.MenuItem2Click(Sender: TObject);
begin
  inherited;
   PCodFab2.Visible:=True;
   PCodFab2.BringToFront;
   PCodFab2.Enabled:=True;
   EDCodFab2.SetFocus;
end;

procedure TFTroca.MenuItem3Click(Sender: TObject);
begin
  inherited;
   PCodComposto2.Visible:=True;
   PCodComposto2.BringToFront;
   PCodComposto2.Enabled:=True;
   EDCodComposto2.SetFocus;
end;

procedure TFTroca.BtnDeleteClick(Sender: TObject);
begin
  inherited;
   If DMESTOQUE.TSlave.RecordCount<>0
   Then Begin//caso a tabela esteja vasia não pode apagar
   	If (DMESTOQUE.TSlave.FieldByName('OPERACAO').AsString='DVL')
       Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Produtos que foram devolvidos ou trocados não podem ser excluídos da lista.', '', 1, 1, false, 'i');
           exit;
       end;
	  	//LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
		FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
		FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
       FiltraTabela(DMSAIDA.TItemPV, 'ITENSPEDVEN', 'COD_ITENSPEDVEN', DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDVEN').AsString, '');
       DMEstoque.TEstoque.Edit;
       DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
		DMEstoque.TEstoque.Post;
	    DMEstoque.TransacEstoque.CommitRetaining;

	    //APAGA ITEM
	 	DMSAIDA.TItemPV.Delete;
       If DMSAIDA.TItemPV.UpdatesPending Then
		    DMSAIDA.TItemPV.ApplyUpdates;

 	    //CONFIRMA TRANZAÇÃO
	    Try
		   DMSAIDA.IBT.CommitRetaining;
	    Except
	 	   DMSAIDA.IBT.RollbackRetaining;
	    End;

	 	//VOLTA VALORES AS LABELS
	    EscreveLabels(2);
	 	EDQuantidade2.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('QTDEPROD').Value;
	 	EDValUnit2.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VALUNIT').Value;
		EDDesc2.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('DESCPRO').Value;
		EDTotal2.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VALORTOTAL').Value;
	    //Filtra registros escrsavos
	    FiltraSlave;
   End;
end;

procedure TFTroca.BtnGravarClick(Sender: TObject);
begin
	If XEMTROCA=False
   Then Begin
	   Try
      		//VERIFICA SE CLIENTE FICOU COM CRÉDITO A DEBITAR DO CAIXA
   		If StrToFloat(TiraPonto(EdVlrSaldo.Text))>0
   		Then Begin
				If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'O Cliente possui um crédito de R$ '+EdVlrSaldo.Text+#13+'Retirar este valor do caixa para o cliente?'  , '', 2, 3, False, 'c')= 2
   			Then Begin
               	//O Cliente possui crédito e deve ser retirado do caixa
           		//Lança em caixa com código de Pedido
            		If LanCaixa (-1, DateToStr(Date()), DMMACS.TLoja.FieldByName('PLNCTA_SAICXCORR').AsInteger, 'Dvl. Prod. Troca Ped:'+DMSAIDA.WPedV.FieldByName('NUMPED').AsString + '-'+DateToStr(Date()), EdVlrSaldo.ValueNumeric, 'DVLTRC', DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsInteger, 'Carteira', 'S', 'DVLTRC-'+DMSAIDA.WPedV.FieldByName('NUMPED').AsString, Date(),'1')=True
					Then Begin
                   	DMFINANC.Transaction.CommitRetaining;
               	end
               	Else Begin
                   	DMFINANC.Transaction.RollbackRetaining;
						ShowMessage('Não foi possivel realizar a retirada em caixa');
               	End;
           	End;
			End;
   	   DMSAIDA.IBT.CommitRetaining;
	       //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
    	   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	   Except
   	   Mensagem('OPÇÃO BLOQUEADA', 'Houve um problema ao gravar o cabeçalho do pedido!', 'Por um motivo desconhecico o sistema não conseguiu gravar as últimas alterações do pedido. Os dados serão retornados até a última vez em que o pedido foi salvo.', 1, 1, True, 'a');
		   DMSAIDA.IBT.RollbackRetaining;
      End;
      FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'COD_PEDVENDA', '', ' COD_LOJA = '+FMenu.LCODLOJA.Caption+' Order by DTPEDVEN DESC, SITUACAO, NUMPED');//, SITUACAO, NUMPED
      Close;
      inherited;
      Exit;
   End
   Else Begin
   	//valida vendedor caso somente em venda
   	If EDNOMEVENDEDOR.Text=''
       Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, informe o vendedor para o pedido', '', 1, 1, False, 'i');
			BtnProcVend.SetFocus;
           Exit;
		End;

   	//Valida forma de pagamento
   	If (EDCODFORMPAG.Text='-1') or (EDFORMPAG.Text='')
   	Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, informe a forma de pagamento do pedido', '', 1, 1, False, 'i');
	  		BtnProcFormPag.SetFocus;
       	Exit;
		End;


		If DMESTOQUE.TSlave.IsEmpty
       Then Begin
   		Mensagem('OPÇÃO BLOQUEADA', 'Uma troca não pode ser gravada sem que haja produto trocado!', 'Para gravar a troca é necessário que um ou mais produtos seja inseridos a troca', 1, 1, True, 'a');
			BtnProcProd2.SetFocus;
           Exit;
       End;
   End;
   DMSAIDA.TPedV.Edit;

   //VERIFICA USUARIO PARA GRAVAR
   DMSAIDA.TPedV.FieldByName('COD_USUARIO').AsInteger:=StrToInt(FMenu.LCODUSUARIO.Caption);
   //INFORMA CODIGO DA FORMA DE PAGAMENTO
   DMSAIDA.TPedV.FieldByName('COD_FORMPAG').AsInteger:=XCodFormPag;
   //INFORMA CODIGO DO VENDEDOR
	DMSAIDA.TPedV.FieldByName('COD_VENDEDOR').AsInteger:=XCodVendedor;
   //INFORMA A COMISSAO CALCULADA
	DMSAIDA.TPedV.FieldByName('VLRCOMIS').AsCurrency:=XVLRCOMIS;
 	//Verifica a existencia de outro pedido com o mesmo numero
   If FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'NUMPED', '', ' (NUMPED='+DBNumPed.Text+') AND (COD_PEDVENDA<>'+XCodPedido+') ')=True
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, altere o Número do pedido, já existe um pedido cadastrado com este Número', '', 1, 1, False, 'i');
   	DBNumPed.SetFocus;
   	Exit;
   End;
   //Valida se foi informado corretamento o cliente ou fornecedor do pedido
   If PPesCad.Visible=True
   Then Begin
   	If DBNomeCli.Text=''
       Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, informe o Nome do cliente no pedido', '', 1, 1, False, 'i');
           EdCodCli.SetFocus;
           Exit;
       End;
	End
   Else Begin
		If EdNomeCli.Text=''
	    Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, informe o cliente do pedido', '', 1, 1, False, 'i');
			BtnProcPess.SetFocus;
           Exit;
       End;
   End;
	//Valida caso cliente não seja cadastrado a vendo somente pode ser à vista
   If PPesCad.Visible=FALSE
   Then Begin
       DMSAIDA.TPedV.FieldByName('NOMECLI').AsString:=EdNomeCli.Text;
       DMSAIDA.TPedV.FieldByName('CPFCNPJ').AsString:=EdCPF.Text;
   End;
   DMSAIDA.TPedV.FieldByName('COD_CLIENTE').AsInteger:=XCodPessoa;
   XCodPedido:=DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString;
   If DMSAIDA.TPedV.FieldByName('COD_CLIENTE').AsInteger=DMMACS.TLoja.FieldByName('COD_CONSUMIDOR').AsInteger
   Then Begin
       If EDFORMPAG.Text<>'À VISTA'
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'Este cliente não se encontra cadastrado em Banco de Dados ou seja suas informações pessoais não estão cadastradas. Por isso este pedido não pode ser realizado à prazo!', '', 1, 1, False, 'i');
           BtnProcFormPag.SetFocus;
           Exit;
       End;
   End;
   //Valida forma de pagamento
   If (EDCODFORMPAG.Text='-1') or (EDCODFORMPAG.Text='')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, informe a forma de pagamento do pedido', '', 1, 1, False, 'i');
	  	BtnProcFormPag.SetFocus;
       Exit;
	End;

   //Valida valor total
   If (EdValorPed.ValueNumeric<0)
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O pedido não pode ser confirmado com valor do pedido menor que zero!', '', 1, 1, False, 'i');
       Exit;
	End;
   //INICIA PROCESSO PARA GRAVAR TABELAS
   DMSAIDA.TPedV.FieldByName('VALOR').Value:=EdValorPed.ValueNumeric;
   //Informa Situação do pedido
   If DMMacs.tloja.FieldByName('FECHAPED').AsString='1' Then //Fechar pedido automaticamente ao gravar
		DMSAIDA.TPedV.FieldByName('SITUACAO').AsString:='FECHADO'
   Else
		DMSAIDA.TPedV.FieldByName('SITUACAO').AsString:='ABERTO';

   //VERIFICA SE CLIENTE FICOU COM CRÉDITO A DEBITAR DO CAIXA
   If StrToFloat(TiraPonto(EdVlrSaldo.Text))>0
   Then Begin
		If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'O Cliente possui um crédito de R$ '+EdVlrSaldo.Text+#13+'Retirar este valor do caixa para o cliente?'  , '', 2, 3, False, 'c')= 2
   	Then Begin
       	//Lança em caixa como código de Pedido de Troca
       	If LanCaixa (-1, DateToStr(Date()), DMMACS.TLoja.FieldByName('PLNCTA_SAICXCORR').AsInteger, 'Dvl. Prod. Troca Ped:'+DBNUMPED.Text + '-'+DateToStr(Date()), EdVlrSaldo.ValueNumeric, 'DVLTRC', StrToInt(XCodPedido), 'Carteira', 'S', 'DVLTRC-'+DBNUMPED.Text, Date(), '1')=True
       	Then Begin
               DMFINANC.Transaction.CommitRetaining;
       	end
       	Else Begin
               DMFINANC.Transaction.RollbackRetaining;
               ShowMessage('Não foi possivel realizar a retirada em caixa');
       	End;
		End;
   end;
   //grava tabela slave
   Try
	   DMSAIDA.TItemPV.ApplyUpdates;
      DMSAIDA.TPedV.Post;
	   DMSAIDA.TPedV.ApplyUpdates;
      DMSAIDA.IBT.CommitRetaining;
   Except
      Mensagem('OPÇÃO BLOQUEADA', 'Ocorreu um problema ao gravar os items do pedido!', 'Por um motivo desconhecico o sistema não conseguiu gravar as últimas alterações do pedido. Os dados serão retornados até a última vez em que o pedido foi salvo.', 1, 1, True, 'a');
	   DMSAIDA.IBT.RollbackRetaining;
	End;

   //Passa outras informações
   Try
      DMSAIDA.IBT.CommitRetaining;

      //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
      FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   Except
      Mensagem('OPÇÃO BLOQUEADA', 'Houve um problema ao gravar o cabeçalho do pedido!', 'Por um motivo desconhecico o sistema não conseguiu gravar as últimas alterações do pedido. Os dados serão retornados até a última vez em que o pedido foi salvo.', 1, 1, True, 'a');
	   DMSAIDA.IBT.RollbackRetaining;
	End;
   FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'COD_PEDVENDA', '', ' COD_LOJA = '+FMenu.LCODLOJA.Caption+' Order by DTPEDVEN DESC, SITUACAO, NUMPED');//, SITUACAO, NUMPED   
   Close;
  inherited;

end;

procedure TFTroca.BtnFechaClick(Sender: TObject);
begin
  inherited;
   FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'COD_PEDVENDA', '', ' COD_LOJA = '+FMenu.LCODLOJA.Caption+' Order by DTPEDVEN DESC, SITUACAO, NUMPED');//, SITUACAO, NUMPED
end;

procedure TFTroca.EdValorPedKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('DESCPED', '')=False
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Sua conta de usuário não lhe da permissão para alterar o valor total do pedido.', '', 1, 1, False, 'a');
       Key:=#0;
  		Exit;
   End;
end;

procedure TFTroca.EdValorPedExit(Sender: TObject);
begin
  inherited;
   If XVLRTOTAL<>EdValorPed.ValueNumeric
   Then Begin
		CalcPercent(0, XVLRTOTAL-EdValorPed.ValueNumeric, XVLRTOTAL, 'D');
       DMSAIDA.TPedV.edit;
       DMSAIDA.TPedV.FieldByName('DESCONTO').AsCurrency:=AlxPercento;
   End
   Else Begin
       FiltraSlave;
       DMSAIDA.TPedV.edit;
       DMSAIDA.TPedV.FieldByName('DESCONTO').AsCurrency:=0;
       EdValorPed.ValueNumeric:=XVLRTOTAL;
   End;
	CalcComisTotVend;
   //Passa vlr de crédito do cliente
   EdVlrSaldo.ValueNumeric:= XVLRTROCA-XVLRTOTAL;
end;

procedure TFTroca.EDDescPedExit(Sender: TObject);
begin
  inherited;
  	If EDDescPed.text<>''
   Then Begin
		CalcPercent(StrToFloat(EDDescPed.text) , XVLRTOTAL, XVLRTOTAL, 'D');
   	If AlxValor<>0 Then
			EdValorPed.Text:=FormatFloat('#,##0.00', AlxCalculo)
		Else
			EdValorPed.Text:='0,00';
   End
   Else Begin
       EDDescPed.text:='0,00';
       EdValorPed.ValueNumeric:=XVLRTOTAL;
   End;
	CalcComisTotVend;
   //Passa vlr de crédito do cliente
   EdVlrSaldo.ValueNumeric:= XVLRTROCA-XVLRTOTAL;
end;

procedure TFTroca.EDDescPedKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('DESCPED', '')=False
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Sua conta de usuário não lhe da permissão para alterar o o valor total do pedido.', '', 1, 1, False, 'a');
       Key:=#0;
  		Exit;
   End;
end;

procedure TFTroca.EdTotal2Exit(Sender: TObject);
begin
  inherited;
		CalcPercent(0, (EDQuantidade2.ValueNumeric*EDValUnit2.ValueNumeric)- EDTotal2.ValueNumeric, (EDQuantidade2.ValueNumeric*EDValUnit2.ValueNumeric), 'D');
		EDDesc2.ValueNumeric:=AlxPercento;
end;

procedure TFTroca.EdTotal2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('DESCPROD', '')=False Then
  		Key:=#0;
end;

procedure TFTroca.BtnProcPessClick(Sender: TObject);
begin
  inherited;
   PPesCad.Visible:=False;
	FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   If AbrirForm(TFCliente, FCliente, 1)='Selected'
   Then Begin
       XCODPESSOA:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
		EdCodCli.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
   End
   Else Begin
       XCODPESSOA:=-1;
 		EdCodCli.Text:='';
       EdNomeCli.Text:='';
       EdCPF.Text:='';
   End;
end;

procedure TFTroca.EdCodCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
      	If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+EdCodCli.Text+#39)=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
        	XCODPESSOA:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
           EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
	        EdCodCli.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           XCODPESSOA:=-1;
           EdNomeCli.Text:='';
	        EdCodCli.Text:='';
           EdCPF.Text:='';
       End;
   End;
end;

procedure TFTroca.EdCodCliExit(Sender: TObject);
begin
  inherited;
    LUZOPEN.Visible:=False;
	 //Verifica se o cliente é do tipo consumidor
    If XCodPessoa=DMMACS.TLoja.FieldByName('COD_CONSUMIDOR').AsInteger
    Then Begin
       PPesCad.Visible:=True;
       PPesCad.BringToFront;
       PPesCad.Enabled:=True;
       If DBNomeCli.Text=''
       Then Begin
	       	DMSAIDA.TPedV.FieldByName('NOMECLI').AsString:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           DBNomeCli.SetFocus;
       End;
    End;
end;

procedure TFTroca.BitBtn1Click(Sender: TObject);
Var
   CODPEDIDO:Integer;
begin
  inherited;
  	If XVLRTROCA<=0
   Then Begin
	   //se o de troca é menor ou igual a zero significa que nemnhum produto foi devolvido e não ha necessidade de abrir troca
	   Mensagem('OPÇÃO BLOQUEADA', 'Nenhum produto foi devolvido, por isso não ha necessidade de abrir troca!', '', 1, 1, False, 'a');
	   Exit;
   End;
   PTroca.Visible:=True;
   PTroca.BringToFront;
   //ABRE NOVO PEDIDO COMO TROCA
   CODPEDIDO:=InserReg(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA');
   DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsInteger:=CODPEDIDO;
   XCodPedido:=DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString;

   XEMTROCA:=True;
   If DMMacs.TEmpresa.FieldByName('PROXPEDVEND').AsString='' Then
   	DMSAIDA.TPedV.FieldByName('NUMPED').AsString:='1'
   Else
   	DMSAIDA.TPedV.FieldByName('NUMPED').AsString:=DMMacs.TEmpresa.FieldByName('PROXPEDVEND').AsString;

   DMSAIDA.TPedV.FieldByName('TIPO').AsString:=DMSAIDA.WPedV.FieldByName('NUMPED').AsString;
   //Verifica se o cliente é do tipo consumidor
   If XCodPessoa=DMMACS.TLoja.FieldByName('COD_CONSUMIDOR').AsInteger
   Then Begin
   	PPesCad.Visible:=True;
	    PPesCad.BringToFront;
       PPesCad.Enabled:=True;
   End;
   DMSAIDA.TPedV.FieldByName('DTPEDVEN').AsDateTime:=DATE();
   //INSERE PRINCIPAIS CAMPOS PARA QUE ESTE PEDIDO NÃO SE PERCA COM PROBLEMAS
   DMSAIDA.TPedV.FieldByName('COD_CLIENTE').AsInteger:= XCodPessoa;
   DMSAIDA.TPedV.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
   DMSAIDA.TPedV.FieldByName('COD_FORMPAG').AsInteger:=XCodFormPag;
   DMSAIDA.TPedV.FieldByName('COD_VENDEDOR').AsInteger:=DMPESSOA.TFuncionario.FieldByName('COD_FUNC').AsInteger;
   DMSAIDA.TPedV.FieldByName('SITUACAO').AsString:='ABERTO';
   DMSAIDA.TPedV.Post;
   DMSAIDA.IBT.CommitRetaining;
   FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', IntToStr(CODPEDIDO), '');
   DMSAIDA.TPedV.Edit;
   //ATUALIZA O NUM DO PEDIDO PARA Q OUTROS TERMINAIS PEGUEM O NUM CORRETO
   //Altera Nº proxima pedido de venda
   DMMacs.TEmpresa.EDIT;
   Try
   	DMMacs.TEmpresa.FieldByName('PROXPEDVEND').AsString:=IntToStr(StrToInt(DMMacs.TEmpresa.FieldByName('PROXPEDVEND').AsString)+1)
   Except
   End;
   Try
   	DMMacs.TEmpresa.Post;
       DMMacs.Transaction.CommitRetaining;
   Except
	    Mensagem('ATENÇÃO', 'Não foi possível atualizar o Nº do proximo pedido. Por favor atualize manualmente!', '', 1, 1, False, 'a');
   End;
   //Seleciona somente os registros corretos
   FiltraSlave;
   PPesCad.Visible:=False;
   DBNumPed.SetFocus;
end;

procedure TFTroca.BtnProcFormPagClick(Sender: TObject);
begin
  inherited;
   FMenu.TIPOAUX:='VENDA';
	If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
		XCodFormPag:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       EDCODFORMPAG.Text:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsString;
       EDFORMPAG.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   End;

end;

procedure TFTroca.EDCODFORMPAGKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN
   Then Begin
       if EDCODFORMPAG.Text<>''
       Then Begin
           FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       	//seleciona a forma de pagamento
           If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', EDCODFORMPAG.Text, ' AND TIPO='+#39+'V'+#39)
           Then Begin
              XCodFormPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
              EDCODFORMPAG.Text:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
              EDFORMPAG.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
           End
           Else Begin
              XCodFormPag:=-1;
              EDCODFORMPAG.Text:='';
              EDFORMPAG.Text:='';
           End;
       End;
   End;

end;

procedure TFTroca.BtnProcVendClick(Sender: TObject);
begin
  inherited;
	FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
   Then Begin
   	XCodVendedor:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
       EdCodVend.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
       EDNOMEVENDEDOR.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
   End;
end;

procedure TFTroca.EdCodVendKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin//se enter
   	If EdCodVend.Text<>''
       Then Begin//se codigo do vendedor não estiver em branco
       	//seleciona o vendedor de acordo com o valor da edit
	        If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', '', ' COD_INTERNO = '+#39+EdCodVend.Text+#39)=True
           Then Begin
               //atribuí o vendedor a venda
	            XCodVendedor:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
	            EdCodVend.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
	            EDNOMEVENDEDOR.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
           End
           Else Begin
               XCodVendedor:=-1;
	            EdCodVend.Text:='';
	            EDNOMEVENDEDOR.Text:='';
           End;
       End;
   End;
end;

procedure TFTroca.Panel10Enter(Sender: TObject);
begin
  inherited;
	    //VERIFICA QUAL COMPONENETE DEVE RECEBER O FOCUS
	    IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'BP' THEN
       	BtnProcProd2.SetFocus;
	    IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'CB' THEN
	  		EDCodBarra2.SetFocus;
	    IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'CA'
	    THEN BEGIN//Caso o focus deve cair sobre um código auxiliar. verificar qual o código em Questão
	  		IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CI'
	        THEN Begin
	        	Try
                   PCodInterno2.Enabled:=True;
                   PCodInterno2.Visible:=True;
                   PCodInterno2.BringToFront;
                   EDCodInterno2.Text:='';
		           	EDCodInterno2.SetFocus;
	            Except
	            End;
	        End;
			IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CC'
	        THEN Begin
		       	Try
                   PCodComposto2.Enabled:=True;
                   PCodComposto2.Visible:=True;
                   PCodComposto2.BringToFront;
                   EDCodComposto2.Text:='';
		           	EDCodComposto2.SetFocus;
	            Except
	            End;
			End;
			IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF'
	        THEN Begin
		       	Try
               	PCodFab2.Enabled:=True;
                   PCodFab2.Visible:=True;
                   PCodFab2.BringToFront;
                   EDCodFab2.Text:='';
		           	EDCodFab2.SetFocus;
	            Except
		        End;
			End;
	    END;
end;

procedure TFTroca.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_F5 Then
       BtnGravar.Click;
end;

procedure TFTroca.Panel4Enter(Sender: TObject);
begin
  inherited;
	 //Verifica se o cliente é do tipo consumidor
    If XCodPessoa=DMMACS.TLoja.FieldByName('COD_CONSUMIDOR').AsInteger
    Then Begin
       PPesCad.Visible:=True;
       PPesCad.BringToFront;
       PPesCad.Enabled:=True;
       If DBNomeCli.Text=''
       Then Begin
	       	DMSAIDA.TPedV.FieldByName('NOMECLI').AsString:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           DBNomeCli.SetFocus;
       End;
    End;

end;

procedure TFTroca.BtnEscolheProc2Click(Sender: TObject);
begin
  inherited;
  	MEscolheProc2.Popup(BtnEscolheProc2.Width+BtnEscolheProc2.Left+21, 395);
end;

procedure TFTroca.EdCodInterno2Exit(Sender: TObject);
begin
  inherited;
		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT', EDCodInterno2.Text, '')=True
       Then Begin
			EscreveLabels(0);
//           EDCodInterno.Text:=''
       End
       Else Begin
           LimpaLabels;
           LSimilar2.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
end;

procedure TFTroca.EdCodFab2Exit(Sender: TObject);
begin
  inherited;
		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', UpperCase(EDCodFab2.Text), '')=True
       Then Begin
			EscreveLabels(0);
//           EDCodFab.Text:='';
       End
       Else Begin
           LimpaLabels;
           LSimilar2.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
end;

procedure TFTroca.EdCodInterno2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT', EDCodInterno2.Text, '')=True
       Then Begin
			EscreveLabels(0);
//           EDCodInterno.Text:=''
       End
       Else Begin
           LimpaLabels;
           LSimilar2.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
   End;
end;

procedure TFTroca.EdCodcomposto2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODCOMPOSTO', EDCodComposto2.Text, '')=True
       Then Begin
			EscreveLabels(0);
       End
       Else Begin
           LimpaLabels;
           LSimilar2.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
   End;

end;

procedure TFTroca.EdCodFab2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', EDCodFab2.Text, '')=True
       Then Begin
			EscreveLabels(0);
//           EDCodFab.Text:='';
       End
       Else Begin
           LimpaLabels;
           LSimilar2.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
   End;

end;

end.
